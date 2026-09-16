# Artifact Header Template

> 新 Artifact 和以后被实质触及的旧 Artifact 逐步采用；不批量改写历史文件。Header 不替代正文中的证据与权限边界。

```yaml
Artifact Type:
Scope:
Producer:
Created:
Lifecycle: Draft | Pending | Current | Consumed | Archived
Semantic Authority: Human Confirmed | Supervisor Confirmed | Role Report | Candidate Only | Mechanical
Authoritative Source:
Supersedes:
Next Consumer:
```

说明：

- `Lifecycle` 只使用五个基本状态。
- `Semantic Authority` 写明 Artifact 能证明什么；没有权威来源时使用 `Candidate Only` 或 `Mechanical`。
- `Authoritative Source` 使用稳定路径；Current / Authoritative Artifact 不得永久指向 `inbox/`、`outbox/` 或 `temporary/`。
- `Supersedes` 只有存在明确替代关系时填写。
- `Next Consumer` 用于 Pending Artifact；Current / Archived 没有下一消费者时写 `None`。
