# Release Notes — rm-ai-control_v1.0

- Release: `rm-ai-control_v1.0`
- Release date: 2026-09-15
- Core Protocol: `RM_AI_Development_Protocol_v2.3_Frozen`

## Positioning Change

`RM_AI_Development_Protocol_v2.3_Frozen` 不再承担整体项目版本名称；它作为 `rm-ai-control_v1.0` 的 **Core Protocol / Stable Baseline** 继续生效。后续整体项目版本沿用 `rm-ai-control_*`，不因本次整合命名为 Protocol v2.4。

## Added

- System Capability Index：按 Core Protocol、Universal、Specialized、Project-specific 四类导航真实能力。
- Universal Project AI Behavior：统一 Repository Hygiene、Context Continuity、Project Reporting、State Synchronization。
- 可直接执行的 Git Hygiene，以及项目角色的事件驱动自维护责任。
- 通用 `Capability Impact` 报告字段。
- Manager 的 Capability Navigation、Capability Index Maintenance、Capability Gap Observation 规则。

## Integrated Existing Capabilities

- v2.3 Frozen 的 staged operating model、Context Health、Handoff、Carry Forward、Verification、Human Gates 与 Knowledge Layer。
- Manager 的 status、route、ingest、bootstrap、protocol-update。
- 文件化 Project Control State、DSH + DeepSeek Manager MVP 与非 DSH 回退路径。
- Guided Dart P0.5 权威状态导航；没有重写其状态。

## Unchanged

- `RM_AI_Development_Protocol_v2.3_Frozen` 的内容和语义。
- Guided Dart P0.5 的阶段、里程碑、决策、学习状态与现有控制状态。
- Manager 的 Control Plane / Navigator 定位及用户、AI 权限边界。
- DSH Runtime 的版本、实现与恢复原则。
- 现有 Context / Handoff / State 机制。

## Experimental

- 固定 `@deepseek-ai/dsh@0.1.5-rc.1` 的 DSH + DeepSeek Manager 执行路径。其已验证能力与限制以 [`../../runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md`](../../runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md) 为准。

## Planned

当前没有由权威产物登记为 Planned 的 Capability。未来 Gap 必须先有证据，再由 rm-ai-control Maintainer / Human 决定是否进入生命周期。
