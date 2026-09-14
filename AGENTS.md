# AGENTS.md — rm-ai-control Bootstrap

本仓库是 RM AI Manager Pilot 的控制平面与持久状态容器，不是 RM 业务代码或 DSH Runtime 仓库。

开始工作前读取：

1. [`README.md`](README.md)
2. [`MANAGER_CHARTER.md`](MANAGER_CHARTER.md)
3. [`control/PROJECT_CONTROL_INDEX.md`](control/PROJECT_CONTROL_INDEX.md)
4. 与当前任务相关的 [`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/`](protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/) 条目

使用 [`.agents/skills/rm-project-manager/SKILL.md`](.agents/skills/rm-project-manager/SKILL.md) 执行 Manager 的 `status`、`route`、`ingest`、`bootstrap` 或 `protocol-update` 意图。

遵守 `Authoritative Artifact > Manager Control Index > Conversation Summary`。不要修改 `protocol/current/` 中的 Frozen 基线，不要从索引或对话摘要发明项目阶段、学习状态、技术决定或验证结论。任何 DSH Runtime、Plugin、Backend 或业务仓库工作都需要独立且明确的用户授权。
