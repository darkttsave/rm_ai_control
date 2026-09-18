# Memory Changelog — rm-ai-control_v1.1

> 只记录管理意义上的持久状态变化，不替代 Git log，也不记录 Markdown 排版或普通机械链接修复。

## 2026-09-17 — Auto-Aim P1 Stage Persisted; Primary Project Changed

- Human 确认 Auto-Aim 当前阶段为 `P1 — Team Legacy Assimilation & Operational Mastery`（`Stage Model: rm-ai-control Active`）；原表述 `P2 — Open-source assimilation / operation / tuning / diagnosis` 已被 supersede，不得再用于任何 Current / navigation 状态。
- Auto-Aim 登记为 Current Primary Project，Milestone `M1 — Auto-Aim Baseline Reproduced`；Guided Dart P0.5 转为 secondary / historical preparatory exploration（其 Checkpoint 内容与语义未改变）。
- Ingest 了 [`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md`](../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md)（`Consumed → Archived`）；阶段语义与角色登记已持久化到 [`PROJECT_CONTROL_INDEX.md`](PROJECT_CONTROL_INDEX.md)。
- 被 supersede 的 `CURATOR_UPDATE_PACKET_AUTO_AIM_P2_ROLES.md` 已作为历史证据归档并标注 `Superseded`，不再作为 Pending 导航项；其阶段语义从未被落盘为 Current。
- 登记三份 `Pending Consumption` Bootstrap（Auto-Aim Main Supervisor / Code Framework Analyst / Environment Instructor）；**均未消费**，不得视为已产生项目进度，也不得视为用户已获得相应能力。
- 提交 Repository Change Request：[`../outbox/REPOSITORY_CHANGE_REQUEST_AUTO_AIM_PROJECT_STATE.md`](../outbox/REPOSITORY_CHANGE_REQUEST_AUTO_AIM_PROJECT_STATE.md)（Auto-Aim 稳定项目状态位置；属结构变化，交 Repo Operator 裁决）。
- `Pending Review`：`rm-ai-control Architect` 与 `rm-ai-control Maintainer` 的身份关系未确认，未自行合并。
- 未改变：Core Protocol（Frozen 内含旧 P1 / P2 语义保持原样，引用须标注 `Stage Model: Protocol v2.3 Frozen`）、Learning State、Knowledge Asset Index、PID / Control `Not Registered` 与任何 Capability 定义。

## 2026-09-17 — Bootstrap Execution Contract Landed; Curator Interface Established

- rm-ai-control Maintainer 已消费并采纳 `MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md` 的核心建议；该正式出站 Artifact 已从 `outbox/` 移入 [`../archive/dispatches/MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md`](../archive/dispatches/MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md)，Lifecycle `Consumed → Archived`。`MEMORY_INDEX.md` 中对应的 Pending Consumption 指针已删除。
- Bootstrap 规则变化：组装前先判定 `Target Execution Surface`，并声明实际仓库 / 本地文件 / Git / 持久化权限；`Plain Conversation` 默认无仓库读取、无 Git、无直接持久化写权限，路径只作 provenance，Destination 不隐含写权限。
- 新增推荐接口 [`templates/CURATOR_UPDATE_PACKET_TEMPLATE.md`](templates/CURATOR_UPDATE_PACKET_TEMPLATE.md) 与 [`templates/CURATOR_RECEIPT_TEMPLATE.md`](templates/CURATOR_RECEIPT_TEMPLATE.md)，并建立 Universal Return Contract；两者是推荐入口，不是硬格式门槛。
- 已 ingest 第一份 Curator Update Packet `CURATOR_UPDATE_RM_AI_CONTROL_V1_1_INTERFACE_PATCH.md`，归入 [`../archive/returns/CURATOR_UPDATE_RM_AI_CONTROL_V1_1_INTERFACE_PATCH.md`](../archive/returns/CURATOR_UPDATE_RM_AI_CONTROL_V1_1_INTERFACE_PATCH.md)。
- `SYSTEM_CAPABILITY_INDEX.md` 中 `Minimum bootstrap assembly` 与 `Persistent memory and artifact curation` 的说明与 Entry Source 已更新；状态仍为 `Active` / `Experimental`，未新增 Capability。
- 项目版本保持 `rm-ai-control_v1.1`；Core Protocol、Guided Dart P0.5、Learning State、Knowledge Asset Index 与 PID / Control `Not Registered` 均未改变。

## 2026-09-16 — PID Bootstrap Refreshed; New Maintainer Input Pending

- [`../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md`](../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md) 已按 `rm-ai-control_v1.1` 的 Plain Conversation Execution Contract 刷新（目标环境声明为无仓库访问的普通对话，必需规则改为内联）。该 Bootstrap **仍未被真实新对话消费**，Lifecycle 保持 `Pending Consumption`，因此保留在 `outbox/`，不归档；PID / Control Learning State 仍为 `Not Registered`。
- Manager 的 Bootstrap Target Surface / Execution Contract 规则缺口报告 [`../archive/dispatches/MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md`](../archive/dispatches/MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md) 已进入 `outbox/`，Lifecycle `Pending`，等待 rm-ai-control Maintainer 消费与裁决；裁决前不归档、不写入任何正式规则。（该 Artifact 已于 2026-09-17 被 Maintainer 消费并归档，见上一条；链接已更新为稳定位置。）
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
