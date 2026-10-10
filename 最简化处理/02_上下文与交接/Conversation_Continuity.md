# Conversation Continuity — 对话连续性

> 来源：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Conversation_Continuity.md`  
> 长期任务不应依赖完整聊天历史才能继续。

## 只保留六类信息

| 信息 | 推荐载体 | 回答的问题 |
|---|---|---|
| 当前事实 | 代码、数据、事实文档 | 现在客观是什么？ |
| 本次任务 | Task Brief | 当前要完成什么？ |
| 阶段现场 | Checkpoint | 做到哪里，怎样继续？ |
| 交接说明 | Handoff | 接收者需要什么？ |
| 必带内容 | Carry Forward | 哪些信息丢失会改变判断？ |
| 历史证据 | Git、日志、原始材料 | 过去为什么这样？ |

不要让一个文件承担全部记忆。

## 同一工作换对话

```text
旧对话
→ Stage Checkpoint
→ 新对话读取相关规则 + Checkpoint + 新材料
→ 从明确的 Next Step 继续
```

Checkpoint 不是完整聊天摘要，只保存当前目标、事实、决定、未知、材料和下一步。

## 具体任务交给下游

使用 Task Brief，说明：

```text
要完成什么
+ 完成它需要知道什么
+ 什么不能碰
+ 怎样验证
+ 遇到什么必须停止
```

## 最小主义

连续性文件变长时，检查是否混入历史、复制已有事实、保存聊天流水账，或把“可能以后有用”误当作当前必需。

连续性的目标不是保存过去，而是保证下一步可以继续。

