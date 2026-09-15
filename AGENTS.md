# AGENTS.md — rm-ai-control_v1.0 Bootstrap

本仓库是 `rm-ai-control_v1.0` 的控制平面与持久状态容器，不是 RM 业务代码或 DSH Runtime 开发仓库。

开始工作前读取：

1. [`README.md`](README.md)
2. [`MANAGER_CHARTER.md`](MANAGER_CHARTER.md)
3. [`control/UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](control/UNIVERSAL_PROJECT_AI_BEHAVIOR.md)
4. [`control/SYSTEM_CAPABILITY_INDEX.md`](control/SYSTEM_CAPABILITY_INDEX.md)
5. [`control/PROJECT_CONTROL_INDEX.md`](control/PROJECT_CONTROL_INDEX.md)
6. 与当前任务相关的 [`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/`](protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/) 条目
7. 操作 DSH Manager 时读取 [`runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md`](runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md)

使用 [`.agents/skills/rm-project-manager/SKILL.md`](.agents/skills/rm-project-manager/SKILL.md) 执行 Manager 的 `status`、`route`、`ingest`、`bootstrap`、`protocol-update` 或 `capability` 意图。

先区分三个视图：Core Protocol 说明系统遵守什么，System Capability Index 说明系统会什么，Project Control Index 说明系统正在做什么。所有项目角色按 Universal Behavior 维护 Role-local continuity；Manager 维护 Project-global navigation state。

遵守 `Authoritative Artifact > Manager Control Index > Conversation Summary`。不要修改 `protocol/current/` 中的 Frozen 基线，不要从索引或对话摘要发明项目阶段、学习状态、技术决定或验证结论。项目层方法维护角色称为 `rm-ai-control Maintainer`。DSH Plugin、Backend、Runtime 扩展或业务仓库工作需要独立且明确的用户授权。
