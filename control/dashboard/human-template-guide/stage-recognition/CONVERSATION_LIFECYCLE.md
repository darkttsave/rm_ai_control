# Recognition Card — Conversation Lifecycle

> 判断对象：当前对话是否仍能可靠恢复工作，而不是对话已经有多长。

## Green — 继续

**信号**：仍能可靠说清目标、关键事实、已锁定决策、边界和下一步。

**动作**：直接继续，不生成额外文档。

## Yellow — 重锚或 Checkpoint

**信号**

- 出现“之前好像说过”；
- 旧方案、新方案和多个分支混在一起；
- 重要决定已改变但没有重新确认；
- 即将进入高风险步骤；
- 同一阶段未完成，但必须换对话。

**动作**

先重新确认目标、事实、决策、边界与下一步。若需要迁移：

- P0/P1/P2 或 Specialist 同一阶段未完成 → 对应 Checkpoint；
- Main Supervisor 对话或实例更换，但项目主线继续 → Supervisor Snapshot；
- 阶段已经完成 → Report。

新接收者可以用 Bootstrap 装配这些材料，但 Bootstrap 不取代它们。

**不要**：把 Checkpoint 写成历史大全；不要按固定消息数机械触发。

## Red — 暂停高风险工作

**信号**

- 无法可靠恢复目标、事实或边界；
- 当前说法与持久化事实冲突；
- 不知道哪些结论仍然有效；
- 继续执行可能扩大错误。

**动作**

停止高风险修改与正式决策，从 Authority、当前状态和最近有效的 Checkpoint/Report/Snapshot 恢复；不能恢复时交给 Human。

## 三种易混产物

- **Checkpoint**：P0/P1/P2 或 Specialist 等同一阶段未完成，但必须暂停或换对话后继续。
- **Report**：阶段目标已经完成，要把结果交给下一阶段。
- **Supervisor Snapshot**：项目阶段和里程碑仍在继续，但 Supervisor 对话或实例要更换。

判断依据不是“对话是否结束”，而是“工作状态发生了什么变化”。

正式依据：

- [Context Health](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Context_Health.md)
- [Conversation Continuity](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Conversation_Continuity.md)
- [Handoff Protocol](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Handoff_Protocol.md)
