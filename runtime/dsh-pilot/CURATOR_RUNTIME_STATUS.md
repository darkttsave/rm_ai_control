# Curator Runtime Status — DSH Pilot

> Status date: 2026-09-26
> Implementation: Entry and launcher present
> Runtime validation: Pending

## Scope

This entry runs the existing Memory Curator role through the same pinned DSH headless runtime used by the Manager pilot. It does not create a new Curator role, state store, backend, plugin, database, watcher, scheduler, or project Executor.

Canonical role boundary remains:

- [`../../MEMORY_CURATOR_CHARTER.md`](../../MEMORY_CURATOR_CHARTER.md)
- [`../../control/ARTIFACT_LIFECYCLE.md`](../../control/ARTIFACT_LIFECYCLE.md)

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

## Not Yet Verified

No live Provider call was made as part of the template-resolution Stage 3 implementation. Therefore the following are **not yet claimed**:

- Provider / Model health for the Curator Entry;
- correct classification of representative inputs;
- safe low-risk persistence and Git behavior;
- Conflict / Stale Source / Pending Review handling;
- Receipt output conformance;
- Manager → Curator end-to-end handoff.

These require a separate, bounded Runtime validation with disposable or explicitly authorized test inputs. Until then, the Manager pilot remains the only DSH role with recorded live validation evidence.

## Hard Boundary

DSH Manager and DSH Curator are two role entries on one control-plane runtime. DSH is not a project task Executor in this architecture.
