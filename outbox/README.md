# Outbox

`outbox/` 是尚待目标角色消费的正式出站区。文件留在这里表示 **Pending Consumption**。

典型 Artifact：Bootstrap、Handoff、Task Brief、Maintainer Input。

- 这里不是历史输出仓库。
- 只有存在明确消费证据后，才能将文件移入 [`../archive/dispatches/`](../archive/dispatches/)。
- 不得根据文件年龄猜测已经消费。
- 权威业务事实仍由其稳定来源产物决定；Current / Authoritative Artifact 不得永久引用 outbox。
