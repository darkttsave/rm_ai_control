# Memory Changelog — rm-ai-control_v1.1

> 只记录管理意义上的持久状态变化，不替代 Git log，也不记录 Markdown 排版或普通机械链接修复。

## 2026-09-16 — PID Bootstrap Refreshed; New Maintainer Input Pending

- [`../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md`](../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md) 已按 `rm-ai-control_v1.1` 的 Plain Conversation Execution Contract 刷新（目标环境声明为无仓库访问的普通对话，必需规则改为内联）。该 Bootstrap **仍未被真实新对话消费**，Lifecycle 保持 `Pending Consumption`，因此保留在 `outbox/`，不归档；PID / Control Learning State 仍为 `Not Registered`。
- Manager 的 Bootstrap Target Surface / Execution Contract 规则缺口报告 [`../outbox/MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md`](../outbox/MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md) 已进入 `outbox/`，Lifecycle `Pending`，等待 rm-ai-control Maintainer 消费与裁决；裁决前不归档、不写入任何正式规则。
- 本次仅更新生命周期导航：未改变 Guided Dart P0.5、Learning State、Knowledge Asset Index、任何 Capability 定义或规则文本。

## 2026-09-16 — First Consumed Dispatch Archived

- 将已有明确消费证据的正式出站 Artifact `MAINTAINER_INPUT_RETURNED_ARTIFACTS.md` 从 `outbox/` 归档到 [`../archive/dispatches/MAINTAINER_INPUT_RETURNED_ARTIFACTS.md`](../archive/dispatches/MAINTAINER_INPUT_RETURNED_ARTIFACTS.md)，Lifecycle：`Consumed → Archived`。
- 消费证据：`rm-ai-control_v1.1` 已按该 Artifact 的问题与建议实现（git commit `a6c032c969e81ff617e4e121cb8d3087596f1d8e`，`feat: establish memory curation in rm-ai-control v1.1`），并经 Human / Maintainer 确认。
- 归档文件仅新增 Artifact Header 与 Archive Record 生命周期 metadata；正文内容未改动。`MEMORY_INDEX.md` 中对应的 Pending Consumption 指针已按 Stable Reference Rule 删除。
- 其余 4 份 `outbox/` Artifact 因没有明确消费证据继续保持 `Pending Consumption`。
- 未改变 Project Stage、Guided Dart P0.5、Learning State、Knowledge Asset Index、PID / Control 线程或任何 Capability 语义。

## 2026-09-16 — Artifact Lifecycle and Memory Curation Established

- 建立 Memory Curator 角色、五状态 Artifact Lifecycle、Artifact Header、MEMORY_INDEX 和 MEMORY_CHANGELOG。
- 正式启用 `inbox/` Pending 入站、`outbox/` Pending Consumption、`archive/returns/` 和 `archive/dispatches/`。
- 将知识状态 seed 从 disposable `temporary/` 晋升为 tracked historical evidence：[`../archive/returns/KNOWLEDGE_STATE_SEED_CANDIDATE.md`](../archive/returns/KNOWLEDGE_STATE_SEED_CANDIDATE.md)。
- 将 Guided Dart P0.5 Current Checkpoint 重定位到 [`../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`](../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md)；内容语义未改变。
- Persistent Memory / Artifact Curation 登记为 `Experimental`，等待真实 DeepSeek Curator 运行验证。

## 2026-09-16 — First Minimal Knowledge State Established

- 用户确认的 C++ / OpenCV / ROS2 Learning State 和 21 条 Knowledge Asset Index 成为 Current State。
- Deep Learning / PnP / EKF / PID / Control 保持 Not Registered。
