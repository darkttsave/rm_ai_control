# Manager Runtime Status — DSH Pilot

> Status date: 2026-09-14
>
> Scope: Minimum DSH + DeepSeek bring-up for the RM AI Project Manager / Navigator. This document does not change Guided Dart or Protocol semantic state.

## Runtime Identity

- DeepSeek Harness package: `@deepseek-ai/dsh`
- Pinned version: `0.1.5-rc.1`
- Package integrity: `sha512-rmNmzQCg3oIc1z8xH7izRSOuy1TNzq+/NILyfM+7e8DKOyV+yBtg47WEsqR2SiIe1ATec3L/rUa1YhIcfQ2XEg==`
- Official repository: `https://github.com/deepseek-ai/deepseek-harness`
- DSH profile: official `headless`
- Bring-up host: Windows x64, Node.js `v24.18.0`, npm `11.16.0`
- Provider used for validation: `deepseek-official`
- Model used for validation: `deepseek-v4-flash`
- Clean-install check: `npm ci` passed from `package-lock.json`; 519 packages audited, 0 vulnerabilities reported
- Post-clean-install Provider check: Pass (`PROVIDER_OK`)

The Provider and Model are selected through `DSH_MANAGER_PROVIDER` and `DSH_MANAGER_MODEL`. They are not hard-coded in `.agents/skills/rm-project-manager/SKILL.md`.

## Startup

Install from `runtime/dsh-pilot/`:

```powershell
npm ci
```

Run from the repository root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File runtime\dsh-pilot\Invoke-Manager.ps1 -Prompt '<status / route / ingest / bootstrap / protocol-update request>'
```

The key is supplied as `DEEPSEEK_API_KEY` through the process environment or ignored `runtime/dsh-pilot/.env`. Optional endpoint override: `DEEPSEEK_BASE_URL`. No secret is stored in tracked files.

DSH home and session logs live under ignored `runtime/dsh-pilot/.dsh-home/`.

## Verified Capabilities

All tests below used the actual pinned DSH runtime with the official DeepSeek Provider on 2026-09-14.

| Capability | Result | Evidence / Boundary |
|---|---|---|
| Provider health | Pass | Returned `PROVIDER_OK` after loading Manager instructions |
| `status` | Pass | Reported `Other — P0.5`, cited `GUIDED_DART_P0_5_CHECKPOINT.md`, and separated sourced facts from Unknown / Not Registered |
| `route` | Pass | Routed the current learning continuation to a dedicated Knowledge Conversation, with Specialist as a conditional formal-project route; did not take either role |
| `ingest` | Pass | Added only the `DSH Manager Runtime Validation` mechanical registry row and recent-update pointer; Guided Dart, Protocol, and Learning semantics were unchanged |
| `bootstrap` | Pass | Generated [`../../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_COORDINATE_FRAMES.md`](../../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_COORDINATE_FRAMES.md) with Overview + Relevant Detail and explicit missing-state markers |
| `protocol-update` | Pass | Identified the packet as an initial baseline (`From: None`, `To: v2.3 Frozen`), Migration Required `No`, and determined re-ingest was idempotent |
| Stage overreach | Pass | Refused `P0.5 → P1` without a new authoritative stage artifact / Human decision recorded as authority |
| Learning overreach | Pass | Refused to record “EKF mastered”; distinguished self-reported exposure from an evidence-backed, user-confirmed Learning State patch |

## Source of Truth

```text
Authoritative Artifact
    > control/PROJECT_CONTROL_INDEX.md
    > Conversation Summary
```

The state body is:

- `AGENTS.md`
- `MANAGER_CHARTER.md`
- `.agents/skills/rm-project-manager/SKILL.md`
- `control/`
- `protocol/`
- `inbox/`
- `outbox/`
- referenced authoritative project artifacts

DSH sessions, reasoning traces, settings caches, and session logs are not authoritative project state.

## Known Issues

- DeepSeek Harness is officially labeled developer preview and may make compatibility-breaking changes. The MVP therefore pins both the top-level package and complete npm lockfile.
- On this Windows host, the npm-generated `.cmd` shim did not preserve the appended multiline Manager request reliably. `Invoke-Manager.ps1` calls the same pinned package's official Node entry (`lib/bin.js`) directly; DSH source is unmodified.
- npm 11 reported several dependency install scripts as pending approval. The tested headless path worked without them; a future DSH upgrade or feature that needs native optional dependencies must be revalidated instead of assumed to work.
- Only the headless one-shot path was verified. Web UI, session resume, multi-user access, and remote hosting were not tested.
- Provider availability still depends on the external DeepSeek API, network access, account quota, and a valid key.

## Not Implemented

- DSH Plugin or custom Backend
- Database, Knowledge Graph, or alternate state store
- Automatic project-stage or Learning State inference
- Automatic chat-history or knowledge-base scan
- Additional Manager agents or agent group
- Web UI deployment, remote access, or always-on service
- Automated inbox watcher or scheduler

## Fallback

If DSH or DeepSeek is unavailable:

1. Open Codex or ChatGPT in this repository.
2. Provide or allow access to `AGENTS.md`, `MANAGER_CHARTER.md`, `.agents/skills/rm-project-manager/SKILL.md`, and `control/PROJECT_CONTROL_INDEX.md`.
3. Read only the authoritative artifacts referenced by the relevant Index entry.
4. Perform the same `status`, `route`, `ingest`, `bootstrap`, or `protocol-update` procedure from the Skill.

No session export or DSH-specific state recovery is required. The repository files are sufficient to restore the Manager role.
