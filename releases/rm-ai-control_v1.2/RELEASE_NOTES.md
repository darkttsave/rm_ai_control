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
- 首个 Canonical Anchor：`auto-aim-code-framework-analyst`；初版 `1.0`，Runtime Pilot 修复后当前版本 `1.1`。

## Integrated

- Bootstrap Template 增加 Required Role Anchor、Canonical Source、Persistent Authority Delivery 与启动可用性字段。
- 既有 Checkpoint 机制增加 Anchor ID / Version / Last Authority Verification；不复制 Anchor 全文，也不创建第二套 Checkpoint。
- Manager 在组装长期正式角色 Bootstrap 时验证 Anchor 身份、版本、Canonical Source、Runtime 可读性和交付方式。
- Memory Curator 可维护 Anchor 指针、版本与部署 freshness，但不获得 Anchor 语义解释权。

## Capability

新增一个适度粒度 Capability：`Persistent Authority / Long-lived Role Continuity`，状态为 `Experimental`。

首次真实 ChatGPT Project Runtime Authority Recovery Pilot 已通过 Role Anchor 恢复、Artifact Promotion Gate 与外部 Authority 原文重读；后续暴露并修复了 Authority Dependency Discovery Gap。该修复尚需持续真实使用验证，因此仍不能标记为 `Active`。

## Runtime Pilot Follow-up — Authority Dependency Discovery

首次真实 Pilot 证明 Persistent Authority Recovery 本身可工作，同时暴露：角色知道 Authority 的语义名称，不代表知道其 Authority ID、Canonical Source、Section / Locator 和所需 Runtime Delivery Artifact。

本次 v1.2 增量修复：

- 新增薄索引 [`../../control/AUTHORITY_INDEX.md`](../../control/AUTHORITY_INDEX.md)，只登记真实已使用 / 已引用的 Authority。
- `Universal Return Contract` 现在明确解析到 `control/UNIVERSAL_PROJECT_AI_BEHAVIOR.md` 的 `## 7. Artifact Return` → `### Universal Return Contract`，而不是一个不存在的同名文件。
- Curator Update Packet 明确解析到 `control/templates/CURATOR_UPDATE_PACKET_TEMPLATE.md`。
- Code Analyst Anchor 从 `1.0` 升至 `1.1`，显式声明正式 Return、Knowledge Note 与 Project Assimilation 的 Authority dependencies；旧 `1.0` Runtime Copy 应识别为 stale。
- Manager 现在从 Authority Index 解析本次任务所需 dependency closure，交付对应 Runtime Artifact，并验证目标 Runtime 可读；不要求 Human 猜文件名，也不交付整个仓库。

采用最小 Anchor versioning 规则：Identity / Mission / Authority Boundary 的不兼容变化交 Human / Maintainer；影响正式行为的 Authority Dependency、Recovery Requirement 或 Artifact Gate 强化执行 Minor `+1`；纯排版与非语义修正不升版。不扩展为完整 SemVer 治理。

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
