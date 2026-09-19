# Release Notes — rm-ai-control_v1.2

- Release: `rm-ai-control_v1.2`
- Release date: 2026-09-19
- Theme: `Persistent Authority + Long-lived Role Continuity`
- Core Protocol: `RM_AI_Development_Protocol_v2.3_Frozen`（unchanged）

## Added

- 薄的 Persistent Role Anchor 模板；长期角色现在由 `Role Anchor + Session Bootstrap + Checkpoint` 恢复。
- Canonical Authority 与 Runtime Delivery Copy 的明确区分。
- Authority Recovery Gate：正式角色在启动、恢复、权限敏感操作和正式产物前重新读取并验证 Anchor ID / Version。
- Artifact Promotion Gate：Authority 不可读时只允许生成明确标记的 Draft，不得晋升为 Current / Authoritative Artifact。
- Target Surface → Persistent Authority Delivery 的第一版部署映射。
- 可复制到 ChatGPT Project 自定义指令的公共 Authority Recovery 模板。
- 首个 Canonical Anchor：`auto-aim-code-framework-analyst` version `1.0`。

## Integrated

- Bootstrap Template 增加 Required Role Anchor、Canonical Source、Persistent Authority Delivery 与启动可用性字段。
- 既有 Checkpoint 机制增加 Anchor ID / Version / Last Authority Verification；不复制 Anchor 全文，也不创建第二套 Checkpoint。
- Manager 在组装长期正式角色 Bootstrap 时验证 Anchor 身份、版本、Canonical Source、Runtime 可读性和交付方式。
- Memory Curator 可维护 Anchor 指针、版本与部署 freshness，但不获得 Anchor 语义解释权。

## Capability

新增一个适度粒度 Capability：`Persistent Authority / Long-lived Role Continuity`，状态为 `Experimental`。

规则已实现，但尚未完成真实 ChatGPT Project Runtime Authority Recovery Pilot，因此不能标记为 `Active`。

## Unchanged

- `RM_AI_Development_Protocol_v2.3_Frozen` 的内容与语义。
- Primary Project = Auto-Aim。
- Current Active Stage = `P1 — Team Legacy Assimilation & Operational Mastery`。
- Future P2 = `Independent Direction Development`。
- Guided Dart P0.5 = historical / preparatory exploration。
- v1.1 Artifact Lifecycle、Memory Curator、Execution Contract 与 Universal Return Contract 的基本职责边界。

## Not Included

- Database、Vector DB、Message Bus、实时 Authority 同步、自动推送、Project UI 自动操作。
- 所有旧 Bootstrap 的批量迁移、所有临时角色强制 Anchor、自动同步 ChatGPT Project Sources。
