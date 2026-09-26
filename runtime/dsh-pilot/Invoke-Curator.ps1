[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$Prompt
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$pilotRoot = $PSScriptRoot
$repoRoot = (Resolve-Path (Join-Path $pilotRoot '..\..')).Path
$envFile = Join-Path $pilotRoot '.env'
$dshHomePath = Join-Path $pilotRoot '.dsh-home'
$dshEntryPoint = Join-Path $pilotRoot 'node_modules\@deepseek-ai\dsh\lib\bin.js'
$entryPromptPath = Join-Path $pilotRoot 'CURATOR_ENTRY_PROMPT.md'

if (Test-Path -LiteralPath $envFile) {
    foreach ($line in Get-Content -LiteralPath $envFile) {
        $trimmed = $line.Trim()
        if (-not $trimmed -or $trimmed.StartsWith('#')) { continue }
        $parts = $trimmed.Split('=', 2)
        if ($parts.Count -ne 2) { throw "Invalid .env line: $line" }
        $name = $parts[0].Trim()
        $value = $parts[1].Trim().Trim('"').Trim("'")
        if ($name -notmatch '^[A-Za-z_][A-Za-z0-9_]*$') { throw "Invalid .env variable name: $name" }
        if (-not [Environment]::GetEnvironmentVariable($name, 'Process')) {
            [Environment]::SetEnvironmentVariable($name, $value, 'Process')
        }
    }
}

# The provider/model variables retain their original Manager-era names for
# backward compatibility. They configure the shared DSH control-plane runtime,
# not the authority or responsibilities of the selected role.
$provider = [Environment]::GetEnvironmentVariable('DSH_MANAGER_PROVIDER', 'Process')
$model = [Environment]::GetEnvironmentVariable('DSH_MANAGER_MODEL', 'Process')
if (-not $provider) { $provider = 'deepseek-official' }
if (-not $model) { $model = 'deepseek-v4-flash' }

if ($provider -notmatch '^[A-Za-z0-9._/-]+$') { throw 'DSH_MANAGER_PROVIDER contains unsupported characters.' }
if ($model -notmatch '^[A-Za-z0-9._/-]+$') { throw 'DSH_MANAGER_MODEL contains unsupported characters.' }
if (-not [Environment]::GetEnvironmentVariable('DEEPSEEK_API_KEY', 'Process')) {
    throw 'DEEPSEEK_API_KEY is missing. Set it in the process environment or runtime/dsh-pilot/.env.'
}
if (-not (Test-Path -LiteralPath $dshEntryPoint -PathType Leaf)) {
    throw 'Pinned DSH dependency is missing. Run npm install in runtime/dsh-pilot.'
}

New-Item -ItemType Directory -Path $dshHomePath -Force | Out-Null
$settingsLines = @(
    'agent-default-model:',
    "  provider: $provider",
    "  model: $model",
    'llm-deepseek:',
    '  apiKeyEnv: DEEPSEEK_API_KEY'
)
$baseUrl = [Environment]::GetEnvironmentVariable('DEEPSEEK_BASE_URL', 'Process')
if ($baseUrl) {
    $safeBaseUrl = $baseUrl.Replace("'", "''")
    $settingsLines += "  baseURL: '$safeBaseUrl'"
}
Set-Content -LiteralPath (Join-Path $dshHomePath 'settings.yaml') -Value $settingsLines -Encoding utf8

$entryPrompt = Get-Content -Raw -LiteralPath $entryPromptPath
$fullPrompt = "$entryPrompt`n`n## Current Request`n`n$Prompt"
$env:DSH_HOME = $dshHomePath

Push-Location $repoRoot
try {
    & node $dshEntryPoint --profile headless $fullPrompt
    if ($LASTEXITCODE -ne 0) { throw "DSH exited with code $LASTEXITCODE." }
}
finally {
    Pop-Location
}
