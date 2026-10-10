# Same Task Continuation — 同任务换对话

> 重组来源：`Context_Health.md`、`Conversation_Continuity.md`、`Carry_Forward.md`、`STAGE_CHECKPOINT_TEMPLATE.md`

## 使用条件

同时满足以下条件时使用：

- 角色和职责不变；
- 项目和当前任务不变；
- 只是上下文过长、换对话或短期暂停后恢复。

这不是项目冷启动、任务下发、执行体交接或向总监督汇报。

## 何时生成

当当前目标、完成状态、关键决定、工作位置或下一步已经无法可靠复述时，先生成续接内容再换对话。不要按固定消息数机械生成。

## 长度控制

- 推荐 `300～700` 个中文字符；
- 不重复项目背景和完整角色定义；
- 不记录讨论流水账、未采纳方案和普通知识解释；
- 默认直接交给新对话，跨天、长期暂停或多人协作时再保存到项目。

## 模板

```markdown
# Same Task Continuation

## Continuation Mode
同一角色 / 同一任务 / 更换对话

## Role Reference
角色名称或角色文件路径，不复制完整角色定义。

## Current Goal

## Completed and Verified

## Current Work Position
当前停在什么文件、问题或步骤。

## Locked Decisions / Boundaries

## Open Problems

## Required Sources
继续工作必须读取的文件、日志或链接，并说明用途。

## First Next Action
新对话收到后立即执行的第一步。
```

## 验收

新对话应能直接回答：当前要继续什么、已经确认了什么、停在哪里、哪些决定不能重开、第一步做什么。
