# Inbox

`inbox/` 是外部角色、下游执行体或 Conversation → Memory Curator 的 **Pending 入站区**，不是长期存储。

可以接收：

- `STATE_UPDATE`
- Checkpoint
- Specialist Return
- Candidate
- Memory / continuity report
- 用户确认后的正式输入
- 其他需要 review / ingest 的 Artifact

审查后，Artifact 必须进入稳定 Current 位置，或作为已处理证据移入 [`../archive/returns/`](../archive/returns/)；已 ingest 的 State Update 进入 [`../archive/state-updates/`](../archive/state-updates/)。普通聊天摘要不进入这里。
