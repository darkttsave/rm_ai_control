# AGENTS.md — rm-ai-control_v1.2 Bootstrap

本仓库是 `rm-ai-control_v1.2` 的控制平面与持久状态容器，不是 RM 业务代码或 DSH Runtime 开发仓库。

开始工作时先读取 [`README.md`](README.md)，随后只按当前角色和意图加载所需 Control，不预读整套索引：

- **Manager**：读取 [`MANAGER_CHARTER.md`](MANAGER_CHARTER.md) 与 [`.agents/skills/rm-project-manager/SKILL.md`](.agents/skills/rm-project-manager/SKILL.md)；`status / route / capability` 只读取 [`control/dashboard/`](control/dashboard/) 中相关索引，`bootstrap` 或显式 Template Dependency Request 才读取 [`control/ai/TEMPLATE_RESOLUTION_CATALOG.md`](control/ai/TEMPLATE_RESOLUTION_CATALOG.md)。
- **Memory Curator**：读取 [`MEMORY_CURATOR_CHARTER.md`](MEMORY_CURATOR_CHARTER.md)、[`control/governance/ARTIFACT_LIFECYCLE.md`](control/governance/ARTIFACT_LIFECYCLE.md) 与 [`control/memory/`](control/memory/)；只有模板身份、Lifecycle 或交付状态相关时才读取 Template Catalog。
- **rm-ai-control Maintainer**：先读取 [`control/authority/role-anchors/RM_AI_CONTROL_MAINTAINER_ROLE_ANCHOR.md`](control/authority/role-anchors/RM_AI_CONTROL_MAINTAINER_ROLE_ANCHOR.md)，核对 Anchor ID / Version，再按本次任务解析 Authority dependency closure。
- **仓库写入或正式 Artifact**：读取 [`control/ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](control/ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md)；涉及持久化、晋升、归档或生命周期判断时再读取 Artifact Lifecycle。
- **其他长期角色**：读取本次被交付的 Role Anchor / Bootstrap；不要自行遍历整个 `control/`。
- **Protocol**：只读取与当前任务相关的 [`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/`](protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/) 条目。
- **DSH Runtime**：操作 Manager 时读取 [`runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md`](runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md)；操作 Curator 时读取 [`runtime/dsh-pilot/CURATOR_RUNTIME_STATUS.md`](runtime/dsh-pilot/CURATOR_RUNTIME_STATUS.md)。

如果当前任务被赋予 Persistent Role Anchor，开始正式工作前读取其 Canonical 或当前可访问的 Runtime Delivery Copy，并核对 Anchor ID / Version。首次启动、上下文恢复、长时间中断、权限敏感操作、正式 Artifact 生成前或 Current State 修改前，按 [`control/ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](control/ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md) 执行 Authority Recovery Gate。聊天记忆和摘要不能代替 Anchor 原文。

使用 [`.agents/skills/rm-project-manager/SKILL.md`](.agents/skills/rm-project-manager/SKILL.md) 执行 Manager 的 `status`、`route`、`ingest`、`bootstrap`、`protocol-update` 或 `capability` 意图。

正式 Artifact、持久化输出或声称符合正式规范的工作开始前，确认所需 Template / Authority 当前可读。不可读时，按 [`control/ai/TEMPLATE_RESOLUTION_CATALOG.md`](control/ai/TEMPLATE_RESOLUTION_CATALOG.md) 返回准确的 `Template Dependency Request`；普通讨论、临时整理和明确标记的非正式草稿可以继续，不为“可能有用”预加载完整 Catalog 或全部模板。

区分四类对象：Core Protocol 说明系统遵守什么；System Capability Index 说明系统会什么；Project Control Index 说明项目正在做什么；Memory Index 说明当前有哪些持久状态、在哪里、是否新鲜。Authoritative Artifact 才是事实本体。

Memory Curator 按 [`MEMORY_CURATOR_CHARTER.md`](MEMORY_CURATOR_CHARTER.md) 执行 Receive → Classify → Persist → Index → Archive。非 Curator AI 不自行发明持久化目录；Return、Handoff、Bootstrap、Candidate 与 Report 必须进入标准 Artifact Lifecycle。涉及结构、批量迁移、复杂引用或 Git 风险时交给 Repo Operator。

遵守 `Authoritative Artifact > Memory / Control Index > Conversation Summary`。不要修改 `protocol/current/` 中的 Frozen 基线，不要从索引或对话摘要发明项目阶段、学习状态、技术决定或验证结论。项目层方法维护角色称为 `rm-ai-control Maintainer`。DSH Plugin、Backend、Runtime 扩展或业务仓库工作需要独立且明确的用户授权。
