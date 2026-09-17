# Curator Update Packet

> 推荐的 Producer → Memory Curator 标准接口；不是 ingest 的硬格式门槛。

```yaml
Artifact Type: Curator Update Packet
Scope:
Producer:
Created:
Lifecycle: Pending
Semantic Authority: Human Confirmed | Supervisor Confirmed | Role Report | Candidate Only | Mechanical
Authoritative Source:
Supersedes: None
Next Consumer: Memory Curator
Expected Persistence: Auto
```

`Expected Persistence: Auto` 表示：Producer 只描述发生了什么；Memory Curator 自行判断具体落盘位置、Index、Changelog、Archive 和 Git 操作。

## What Happened

- <describe the durable event>

## Verified Authority / Sources

- <cite authority and stable sources>

## Active Rules or State Affected

- <list affected active rules or state>

## Artifact Lifecycle Events

- Artifact:
- Event: `Produced | Returned | Consumed | Superseded | Other`
- Evidence:

## Capability Impact

- Added:
- Changed:
- Deprecated:
- None:

## Must Remain Unchanged

- <list invariants and protected state>

## Unknowns / Conflicts

- None registered

## Expected Persistence

`Auto`

Producer 不要指定 `MEMORY_INDEX` 的具体行、是否写 Changelog、最终 archive 位置或 commit message。存在语义冲突、权限问题或关键事实缺失时，明确写入 `Unknowns / Conflicts`。
