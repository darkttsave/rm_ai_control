# Memory Changelog — rm-ai-control_v1.1

> 只记录管理意义上的持久状态变化，不替代 Git log，也不记录 Markdown 排版或普通机械链接修复。

## 2026-09-16 — Artifact Lifecycle and Memory Curation Established

- 建立 Memory Curator 角色、五状态 Artifact Lifecycle、Artifact Header、MEMORY_INDEX 和 MEMORY_CHANGELOG。
- 正式启用 `inbox/` Pending 入站、`outbox/` Pending Consumption、`archive/returns/` 和 `archive/dispatches/`。
- 将知识状态 seed 从 disposable `temporary/` 晋升为 tracked historical evidence：[`../archive/returns/KNOWLEDGE_STATE_SEED_CANDIDATE.md`](../archive/returns/KNOWLEDGE_STATE_SEED_CANDIDATE.md)。
- 将 Guided Dart P0.5 Current Checkpoint 重定位到 [`../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`](../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md)；内容语义未改变。
- Persistent Memory / Artifact Curation 登记为 `Experimental`，等待真实 DeepSeek Curator 运行验证。

## 2026-09-16 — First Minimal Knowledge State Established

- 用户确认的 C++ / OpenCV / ROS2 Learning State 和 21 条 Knowledge Asset Index 成为 Current State。
- Deep Learning / PnP / EKF / PID / Control 保持 Not Registered。
