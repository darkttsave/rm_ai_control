# DSH Manager Pilot

This directory runs the RM AI Project Manager / Navigator through the official DeepSeek Harness headless profile. Repository files remain the state body; DSH sessions are disposable execution contexts.

## Install

From `runtime/dsh-pilot/`:

```powershell
npm ci
```

The exact top-level dependency is locked to `@deepseek-ai/dsh@0.1.5-rc.1` in `package.json` and `package-lock.json`.

## Configure

Prefer setting the key in the current PowerShell process:

```powershell
$env:DEEPSEEK_API_KEY = '<your-key>'
$env:DSH_MANAGER_PROVIDER = 'deepseek-official'
$env:DSH_MANAGER_MODEL = 'deepseek-v4-flash'
```

Alternatively copy `.env.example` to the ignored `.env` and fill it locally. Never commit `.env`, `.dsh-home/`, or session logs.

`DSH_MANAGER_PROVIDER` and `DSH_MANAGER_MODEL` are runtime configuration. They are deliberately absent from the Manager Skill.

## Run

From the repository root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File runtime\dsh-pilot\Invoke-Manager.ps1 -Prompt '当前 Guided Dart 项目处于什么状态？'
```

The launcher:

- loads the ignored local `.env` when present;
- writes provider/model selection to the isolated ignored `.dsh-home/settings.yaml`;
- prepends `MANAGER_ENTRY_PROMPT.md`;
- invokes the pinned official DSH Node entry with the repository root as workspace;
- fails closed when the API key, pinned dependency, or DSH request is unavailable.

The MVP uses one fresh persisted headless session per invocation. It does not install plugins, implement a Backend, create a database, or configure additional Manager agents.

See [`MANAGER_RUNTIME_STATUS.md`](MANAGER_RUNTIME_STATUS.md) for verified behavior and fallback.
