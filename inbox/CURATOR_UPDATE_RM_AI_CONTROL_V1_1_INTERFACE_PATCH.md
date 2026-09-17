# Curator Update Packet — rm-ai-control_v1.1 Interface Patch

```yaml
Artifact Type: Curator Update Packet
Scope: System / Function (Bootstrap + Persistent Memory Interface)
Producer: Repo Operator
Created: 2026-09-17
Lifecycle: Pending
Semantic Authority: Mechanical
Authoritative Source:
  - archive/dispatches/MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md
  - control/templates/BOOTSTRAP_PACKET_TEMPLATE.md
  - control/templates/CURATOR_UPDATE_PACKET_TEMPLATE.md
  - control/templates/CURATOR_RECEIPT_TEMPLATE.md
Supersedes: None
Next Consumer: Memory Curator
Expected Persistence: Auto
```

## What Happened

- 已将 Maintainer 采纳的 Bootstrap Execution Contract 落入当前活跃模板、Manager Skill / Charter 和 Artifact Lifecycle。
- Bootstrap 现在必须先判断 `Target Execution Surface`，再声明实际的仓库 / 本地文件 / Git / 持久化权限。
- `Plain Conversation` 默认无仓库访问、无任意本地文件读取、无 Git、无直接持久化；路径只作 provenance，Destination 不隐含写权限。
- 已新增推荐的 Curator Update Packet 与 Curator Receipt 模板，并建立 Universal Return Contract。
- 已消费的 Maintainer Input 已从 `outbox/` 移入 `archive/dispatches/`，并记录消费证据。
- PID Bootstrap 已检查：其现有 Plain Conversation Execution Contract 与正式化后的规则语义一致，本轮未重写其内容。

## Verified Authority / Sources

- rm-ai-control Maintainer 已正式消费 `MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md` 并采纳核心建议。
- 本轮是 Repo Operator 对已裁决事项的确定性落盘，未重新设计 v1.1 方法论。

## Active Rules or State Affected

- `control/templates/BOOTSTRAP_PACKET_TEMPLATE.md`
- `.agents/skills/rm-project-manager/SKILL.md`
- `MANAGER_CHARTER.md`
- `MEMORY_CURATOR_CHARTER.md`
- `control/UNIVERSAL_PROJECT_AI_BEHAVIOR.md`
- `control/ARTIFACT_LIFECYCLE.md`
- `control/SYSTEM_CAPABILITY_INDEX.md`（仅现有 Capability 说明 / Entry Source）
- `releases/rm-ai-control_v1.1/RELEASE_NOTES.md`

## Artifact Lifecycle Events

- Artifact: `archive/dispatches/MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md`
- Event: `Consumed`
- Evidence: Maintainer 已正式消费并采纳核心建议；Repo Operator 已完成落盘和验证。

- Artifact: `inbox/CURATOR_UPDATE_RM_AI_CONTROL_V1_1_INTERFACE_PATCH.md`
- Event: `Produced`
- Evidence: 本 Packet 是本轮接口的第一次自举验证；当前保持 `Pending`，不由 Repo Operator 自行消费。

## Capability Impact

- Added: None
- Changed: `Minimum bootstrap assembly` 增加 Target Execution Surface / Execution Contract；`Persistent memory and artifact curation` 增加 Update Packet / Receipt 接口说明。
- Deprecated: None
- None: 无新 Capability；不新增独立的 Bootstrap Contract 或 Receipt Capability。

## Must Remain Unchanged

- 项目版本保持 `rm-ai-control_v1.1`，不发布 v1.2。
- `RM_AI_Development_Protocol_v2.3_Frozen` 保持不变。
- Guided Dart 保持 `P0.5`。
- PID / Control Learning State 保持 `Not Registered`。
- 已确认 Learning State、Knowledge Asset Index、项目技术路线和用户掌握判断不变。
- Repo Operator 本轮未更新 `control/MEMORY_INDEX.md` 或 `control/MEMORY_CHANGELOG.md`。

## Unknowns / Conflicts

- 无语义冲突。
- DeepSeek Memory Curator 尚未真实运行验证；Persistent Memory / Artifact Curation 继续保持 `Experimental`。

## Expected Persistence

`Auto`

Memory Curator 自行判断本事件对 Memory Index、Memory Changelog、Artifact archive 和 Git 的具体后续处理，并返回 Curator Receipt。
