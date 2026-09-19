# AGENTS.md — rm-ai-control_v1.2 Bootstrap

本仓库是 `rm-ai-control_v1.2` 的控制平面与持久状态容器，不是 RM 业务代码或 DSH Runtime 开发仓库。

开始工作前读取：

1. [`README.md`](README.md)
2. [`MANAGER_CHARTER.md`](MANAGER_CHARTER.md)
3. [`control/UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](control/UNIVERSAL_PROJECT_AI_BEHAVIOR.md)
4. [`control/ARTIFACT_LIFECYCLE.md`](control/ARTIFACT_LIFECYCLE.md)
5. [`control/SYSTEM_CAPABILITY_INDEX.md`](control/SYSTEM_CAPABILITY_INDEX.md)
6. [`control/PROJECT_CONTROL_INDEX.md`](control/PROJECT_CONTROL_INDEX.md)
7. [`control/MEMORY_INDEX.md`](control/MEMORY_INDEX.md)
8. 与当前任务相关的 [`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/`](protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/) 条目
9. 操作 DSH Manager 时读取 [`runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md`](runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md)

如果当前任务被赋予 Persistent Role Anchor，开始正式工作前读取其 Canonical 或当前可访问的 Runtime Delivery Copy，并核对 Anchor ID / Version。首次启动、上下文恢复、长时间中断、权限敏感操作、正式 Artifact 生成前或 Current State 修改前，按 [`control/UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](control/UNIVERSAL_PROJECT_AI_BEHAVIOR.md) 执行 Authority Recovery Gate。聊天记忆和摘要不能代替 Anchor 原文。

使用 [`.agents/skills/rm-project-manager/SKILL.md`](.agents/skills/rm-project-manager/SKILL.md) 执行 Manager 的 `status`、`route`、`ingest`、`bootstrap`、`protocol-update` 或 `capability` 意图。

区分四类对象：Core Protocol 说明系统遵守什么；System Capability Index 说明系统会什么；Project Control Index 说明项目正在做什么；Memory Index 说明当前有哪些持久状态、在哪里、是否新鲜。Authoritative Artifact 才是事实本体。

Memory Curator 按 [`MEMORY_CURATOR_CHARTER.md`](MEMORY_CURATOR_CHARTER.md) 执行 Receive → Classify → Persist → Index → Archive。非 Curator AI 不自行发明持久化目录；Return、Handoff、Bootstrap、Candidate 与 Report 必须进入标准 Artifact Lifecycle。涉及结构、批量迁移、复杂引用或 Git 风险时交给 Repo Operator。

遵守 `Authoritative Artifact > Memory / Control Index > Conversation Summary`。不要修改 `protocol/current/` 中的 Frozen 基线，不要从索引或对话摘要发明项目阶段、学习状态、技术决定或验证结论。项目层方法维护角色称为 `rm-ai-control Maintainer`。DSH Plugin、Backend、Runtime 扩展或业务仓库工作需要独立且明确的用户授权。
