# Protocol Release Packet — v2.3 Initial Manager Baseline

> 这是 Manager Pilot 的初始协议登记包。
>
> 它不是一次从旧 Manager 版本升级，因为 Manager 尚未正式存在；用途是让未来 Manager 能建立 v2.3 基线。

## Release

- From Version: None / Manager not initialized
- To Version: `RM_AI_Development_Protocol_v2.3_Frozen`
- Release Date: 2026-09-14
- Frozen Package: [`../../archive/source-packages/RM_AI_Development_Protocol_v2.3_Frozen.zip`](../../archive/source-packages/RM_AI_Development_Protocol_v2.3_Frozen.zip)
- Maintainer Artifact: [`../current/RM_AI_Development_Protocol_v2.3_Frozen/archive/Protocol_Maintainer_Checkpoint_v2.3.md`](../current/RM_AI_Development_Protocol_v2.3_Frozen/archive/Protocol_Maintainer_Checkpoint_v2.3.md)

## Why This Release Exists

建立 Manager 第一次运行时的协议基线，使其知道当前正式方法论版本和主要能力入口，而不需要自行比较 v2.1 / v2.2 / v2.3 历史包。

## User-visible Changes

v2.3 相对 v2.2 的主要新增：

- Knowledge Learning & Notes Layer；
- Learning State / Knowledge Asset Index / Learning Thread State；
- Explanation 与 Note Output 解耦；
- AI Intent-driven Adaptive Explanation；
- Learning Request + Overview / Relevant Detail Bootstrap；
- Note New / Update / Merge / Legacy Reconstruction。

## Manager-visible Changes

未来 Manager 应知道：

- 当前 Protocol = v2.3 Frozen；
- Knowledge 对话有正式入口和模板；
- Knowledge State 不应由 Manager 擅自升级；
- 新知识对话应优先组装 Relevant Learning State + Relevant Assets，而不是全量知识历史；
- 正式项目 Specialist 仍复用原 Specialist / Handoff 体系。

## Affected Existing Workflows

| Workflow / Area | Impact | Action |
|---|---|---|
| P0 / P1 / P2 | Compatible | 无需迁移 |
| Supervisor / Specialist / Work | Compatible | 无需迁移 |
| Context / Handoff | Compatible | 继续使用 `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/*` |
| Knowledge Learning | New capability | 新学习任务可使用 Knowledge Layer |
| Note Output / Legacy Reconstruction | Expanded | 按 v2.3 Note Layer 使用 |

## State Migration

- Required: No
- Migration Scope: None
- Migration Instructions: Existing project state remains valid. Learning State / Asset Index 使用时增量建立，不进行全知识库回填。

## User Action Required

None for existing project flow.

首次启用 Knowledge Layer 时，只需建立最小 Learning State / Asset Index。

## Manager Action Required

- 记录 Current Protocol = v2.3 Frozen；
- 记录 Knowledge Layer 已可用；
- 不把新协议能力解释成项目阶段变化；
- 不要求用户回填全部旧知识状态。

## Do Not Change

本 Release 不代表以下内容变化：

- P0 / P1 / P2 语义；
- Supervisor / Specialist / Work 拓扑；
- Project Stage；
- 真实 RM 项目当前技术路线；
- 用户任何具体知识的 Learning State。

## Compatibility / Rollback

- 现有项目可以继续使用 v2.2 风格工作流；
- v2.3 Knowledge Layer 是增量能力；
- 若 Knowledge Layer 暂不使用，不影响原项目运行方法。

## Authoritative Sources

- [`../../archive/source-packages/RM_AI_Development_Protocol_v2.3_Frozen.zip`](../../archive/source-packages/RM_AI_Development_Protocol_v2.3_Frozen.zip)
- [`../current/RM_AI_Development_Protocol_v2.3_Frozen/archive/Protocol_Maintainer_Checkpoint_v2.3.md`](../current/RM_AI_Development_Protocol_v2.3_Frozen/archive/Protocol_Maintainer_Checkpoint_v2.3.md)
- [`../current/RM_AI_Development_Protocol_v2.3_Frozen/archive/Design_Evolution_v2.2_to_v2.3.md`](../current/RM_AI_Development_Protocol_v2.3_Frozen/archive/Design_Evolution_v2.2_to_v2.3.md)

## Carry Forward

未来 Manager 回答协议状态时必须知道：

- Current Protocol = v2.3 Frozen；
- v2.3 的主要新增是 Knowledge Learning & Note Lifecycle；
- 该能力是增量能力，不改变项目阶段和组织拓扑；
- 下一版协议变化必须由新的 `PROTOCOL_RELEASE_PACKET` 驱动更新。
