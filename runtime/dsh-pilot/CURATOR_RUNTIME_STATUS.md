# Curator Runtime Status — DSH Pilot

> Status date: 2026-09-27
> Implementation: Entry and launcher present
> Runtime validation: Partial — first bounded live ingest completed; overall validation remains Pending

## Scope

This entry runs the existing Memory Curator role through the same pinned DSH headless runtime used by the Manager pilot. It does not create a new Curator role, state store, backend, plugin, database, watcher, scheduler, or project Executor.

Canonical role boundary remains:

- [`../../MEMORY_CURATOR_CHARTER.md`](../../MEMORY_CURATOR_CHARTER.md)
- [`../../control/governance/ARTIFACT_LIFECYCLE.md`](../../control/governance/ARTIFACT_LIFECYCLE.md)

The DSH session is disposable. Repository files remain the state body.

## Startup

From the repository root:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File runtime\dsh-pilot\Invoke-Curator.ps1 -Prompt '<curation request>'
```

The launcher uses the same pinned DSH package, Provider, Model, ignored `.env`, and isolated `.dsh-home/` as the Manager launcher. Legacy environment names `DSH_MANAGER_PROVIDER` and `DSH_MANAGER_MODEL` are retained for compatibility and configure the shared runtime, not role authority.

## Implemented Boundary

- Dedicated [`CURATOR_ENTRY_PROMPT.md`](CURATOR_ENTRY_PROMPT.md);
- Reads Curator Charter, Artifact Lifecycle, Memory Index / Changelog and relevant authoritative sources;
- Requires `Receive → Classify → Persist → Index → Archive`;
- Requires Curator Receipt;
- Prohibits Manager, Maintainer, business, Capability and Authority overreach;
- Escalates repository structure, bulk migration and semantic conflict.

## First Bounded Live Ingest — 2026-09-27

With explicit Human authorization for DeepSeek API access, the Curator processed one bounded Human-confirmed update packet:

- verified the packet commit and cited sources;
- classified and persisted Current navigation and maintenance-priority state;
- updated the existing Project Control Index, Memory Index and Memory Changelog;
- archived the consumed packet;
- produced a Curator Receipt;
- committed the bounded changes as `451a4da8f18bbf62584137e5a509a8825bdff031`;
- left the ownership-unknown `inbox/Curator Update Packet.md` unread, unmodified and unstaged.

This observation covers one successful normal ingest path only. It does **not** promote the runtime to `PASS`.

## Still Not Verified

The following remain unverified or insufficiently repeated:

- `Conflict` and `Stale Source` handling;
- repeated `Pending Review` behavior across different inputs;
- repeated Receipt conformance;
- Manager → Curator handoff initiated directly by Manager;
- safe behavior across broader low-risk persistence and Git cases;
- failure and recovery behavior for Provider / Model outages.

Overall Runtime validation therefore remains `Pending` despite the successful bounded observation.

## Hard Boundary

DSH Manager and DSH Curator are two role entries on one control-plane runtime. DSH is not a project task Executor in this architecture.
