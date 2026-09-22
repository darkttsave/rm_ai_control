# Memory Changelog — rm-ai-control_v1.2

> 只记录管理意义上的持久状态变化，不替代 Git log，也不记录 Markdown 排版或普通机械链接修复。

## 2026-09-22 — Segment Analyst Thread A Ingested; Bootstrap Consumed; Task Coordinator Registered

- Ingest Code Segment Analyst **Thread A** Stage Checkpoint（`Role Report`，2026-09-21）与其配套 Curator Update Packet，归档至 [`../archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md`](../archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md) 与 [`../archive/returns/CURATOR_UPDATE_PACKET_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md`](../archive/returns/CURATOR_UPDATE_PACKET_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md)。
- **Thread 处理**：用户说明同一提示词开启了两个并行对话（A / B）；本轮两份返回件均来自 **A**。文件名中的 `_A` 是线程标签，**不是版本号**。B 线程尚未返回，其 role-local continuity **未登记**，且不得与 A 混同。
- 持久化为 Current 的源码级事实：`auto_aim_test.cpp` 主链（`YOLO → Armor → Tracker(Solver + Target/EKF) → Aimer → Command`）、`Detector` / `Classifier` 与 `YOLO` 的并列关系、`Armor` / `Solver` / `Target` 职责边界、11D whole-car EKF 与 4D 观测、动态观测噪声 `R`、`ekf_x()` 与 Plotter（`127.0.0.1:9870`）接口、`cmake --build build --target auto_aim_test -j2` 构建路径。`M1` 的 build 项记为**部分证据**（单 target），**未宣布 `M1` 完成**。
- **未**持久化为 Current Fact：Checkpoint §4 的"边跑边打"归因与 ego-motion 补偿方案是**假设**；自身平移未补偿的**实际影响未经实验验证**；本 Checkpoint 不裁决 Stage / Milestone / 用户掌握等级。
- **生命周期修正（有证据）**：Auto-Aim Code Segment Analyst Bootstrap 由 `Pending Consumption` 修正为 **`Consumed`**，归档至 [`../archive/dispatches/BOOTSTRAP_AUTO_AIM_CODE_SEGMENT_ANALYST.md`](../archive/dispatches/BOOTSTRAP_AUTO_AIM_CODE_SEGMENT_ANALYST.md)。证据：该角色已真实建立并按 Bootstrap 的只读边界运行，其 Checkpoint 将 Bootstrap 列为"当前执行边界"。消费判定由 Auto-Aim Main Supervisor 确认（`Supervisor Confirmed`，经 Manager 转达）。
- Consume 并归档 Auto-Aim Engineering Task Coordinator 增量 Packet 至 [`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md`](../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md)；登记新 Supporting Conversation **Auto-Aim Engineering Task Coordinator**（Task-level 交付闭环、默认 `no-write`、每任务独立 `task/<具体任务>` 分支、暂不创建常驻 Executor、无 Role Anchor）于 [`PROJECT_CONTROL_INDEX.md`](PROJECT_CONTROL_INDEX.md) §2，其 Bootstrap 保持 `Pending Consumption`。
- 登记 `template:task-brief` 为 **unresolved Authority dependency**（`Pending Review`）：[`AUTHORITY_INDEX.md`](AUTHORITY_INDEX.md) 未被改动 —— 登记 Authority 条目属 Authority 语义范围，须由 Human / rm-ai-control Maintainer 确认；Coordinator 继续按 Bootstrap 降级路径执行。
- 未改变：Project Stage（`P1`）、Milestone（`M1`）、Learning State、Knowledge Asset Index、用户工程能力判断、Guided Dart P0.5、Future P2、既有 Role Anchor 版本、Capability 定义与任何角色职责。

## 2026-09-21 — Auto-Aim Checkpoint and Supporting Conversations Ingested

- Ingest Auto-Aim Code Framework Analyst Checkpoint（`Role Report`，2026-09-20）：由 `inbox/` 归档至 [`../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md`](../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md)（`Pending → Archived`），原始文件名与来源保留在 Archive Record。
- 持久化为 Current 的内容：上游仓库身份与 revision（`TongjiSuperPower/sp_vision_25` @ `bd9f5e798fa3c6dd3b483ae6627796afb41c608d`，只读调查）、`Target` 之后双后端结构（`Aimer` / `MPC Planner` 共享 `Detector` / `Solver` / `Tracker` / `Target`）、`M1` 逐项证据状态、role-local continuity 与下一步六模块对比。
- **未**持久化为 Current Fact：八个调参实例的讲解覆盖与 role-local Decisions 记为 `Role Report`，**不构成 Project Stage / Milestone 变更，也不构成对用户掌握程度的判断**；八项源码级疑点登记为**待实车验证的调查入口**，不是已确认缺陷。
- Consume 并归档 Auto-Aim Supporting Conversations 增量 Packet 至 [`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_SUPPORTING_CONVERSATIONS.md`](../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_SUPPORTING_CONVERSATIONS.md)（`Consumed → Archived`）；登记两个 Supporting Conversation（Auto-Aim Code Segment Analyst、C++ Quick Knowledge Conversation）于 [`PROJECT_CONTROL_INDEX.md`](PROJECT_CONTROL_INDEX.md) §2，均为 `Pending Consumption`、**无 Role Anchor**、复用既有 Capability。
- 复核确认 Manager 判断：本次**未新增** Authority 条目与 Role Anchor，[`AUTHORITY_INDEX.md`](AUTHORITY_INDEX.md) 未改动；[`SYSTEM_CAPABILITY_INDEX.md`](SYSTEM_CAPABILITY_INDEX.md) 未因本次 ingest 改动。
- 未改变：Project Stage（`P1`）、Milestone（`M1`）、Learning State、Knowledge Asset Index、用户工程能力判断、Guided Dart P0.5、Future P2、PID / Control 线程、既有 Role Anchor 版本与任何角色职责。Code Framework Analyst Bootstrap 仍为 `Pending Consumption`。

## 2026-09-21 — Persistent Authority Capability Promoted to Active (Human Confirmed)

- `Persistent Authority / Long-lived Role Continuity`：`Experimental` → `Active`，由 **Human Confirmed** 直接决定（2026-09-21）。原 v1.2 登记条件"需持续真实使用验证"已由 Role Anchor `auto-aim-code-framework-analyst` `1.1` 的两次真实 Runtime 事件满足（2026-09-19 Pilot `PASS`；2026-09-20 持续使用中 Authority Recovery `SUCCESS`，`Runtime Authority Gap: None`）。
- 落盘范围仅限 [`SYSTEM_CAPABILITY_INDEX.md`](SYSTEM_CAPABILITY_INDEX.md) 该 Capability 行的 `Status` 字段，并在该文件新增 `## Status Change Record` 记录决定来源、证据、边界与验证范围。**未改动** Capability 名称、Purpose、When to Use、Entry / Source、Owner，也未改动 Core Protocol、方法论或角色权限。
- **边界说明**：Capability 定义与状态变化通常由 rm-ai-control Maintainer 裁决、Repo Operator 确定性落盘。本次因 Human 直接指令，由 Memory Curator 执行状态字段落盘并留痕；记录为**一次性授权**，不构成 Curator 可自行变更 Capability 的先例。
- 验证范围如实记录：截至 2026-09-21 仅覆盖 **1 个 anchored role / 1 个 Runtime Surface（ChatGPT Project）**；多角色、多 Runtime Surface 尚未验证。
- `Persistent Memory / Artifact Curation` **保持 `Experimental`**（本轮未获授权变更）。
- 登记本轮新到达的 3 份 Pending Artifact（**仅登记，未 ingest**）：[`../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md`](../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md)（Role Report / Checkpoint，2026-09-20）、[`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_SUPPORTING_CONVERSATIONS.md`](../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_SUPPORTING_CONVERSATIONS.md) 与两份新 Bootstrap（Code Segment Analyst / C++ Quick Knowledge）。四者内容均**未被**写为 Current Fact。（其中 Checkpoint 与增量 Packet 已于同日 ingest 并归档，见上一条；链接已更新为稳定位置。）
- 未改变：Project Stage、Milestone、Learning State、Knowledge Asset Index、用户工程能力判断、Guided Dart P0.5、Future P2、既有 Role Anchor 版本与任何角色职责。

## 2026-09-19 — Persistent Authority v1.2 Landed; First Runtime Pilot Evidence Ingested

- `rm-ai-control_v1.2`（主题 `Persistent Authority + Long-lived Role Continuity`）落地：Canonical Authority / Runtime Delivery Copy 区分、Authority Recovery Gate、Artifact Promotion Gate，以及 Role Anchor 与 Bootstrap / Checkpoint 的集成。Core Protocol 基线仍为 `v2.3 Frozen`。
- 建立首个 Canonical Role Anchor `auto-aim-code-framework-analyst`（初版 `1.0`）；Authority Dependency Discovery Gap 修复后升至 `1.1`，旧 `1.0` Runtime Copy 记为 `stale`。
- 建立 [`AUTHORITY_INDEX.md`](AUTHORITY_INDEX.md)（薄 Authority discovery / resolution 索引），以及 [`templates/ROLE_ANCHOR_TEMPLATE.md`](templates/ROLE_ANCHOR_TEMPLATE.md) 与 [`templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md`](templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md)。
- 新 Capability `Persistent Authority / Long-lived Role Continuity` 登记为 `Experimental` —— 由 rm-ai-control Maintainer 裁决、Repo Operator 落盘；Memory Curator 未修改任何 Capability 定义。
- Ingest 并将 4 份正式 Return 归档至 [`../archive/returns/`](../archive/returns/)：v1.2 implementation、Authority Dependency Discovery Pilot follow-up、Runtime Authority Pilot（Role Report）、Role Anchor Version Recovery Test（Role Report）。四者去重后同属**一个** Capability 的连续证据，**不构成多个独立 Capability**。
- Runtime Verification 状态：ChatGPT Project 中 Authority Recovery `PASS`、Artifact Promotion Gate `PASS`、Authority 不可读时正式 Packet 被正确暂停、Role Anchor Version Recovery `1.1` `PASS`；`1.0` Runtime Copy 为 `stale`。Canonical Version 与 Runtime Delivery Version 一致为 `1.1`；Runtime Delivery Copy 不作为 Canonical Authority。
- 未改变任何业务状态：Primary Project、Project Stage、Milestone、Learning State、Knowledge Asset Index、用户工程能力判断、Guided Dart P0.5、Future P2 与 PID / Control 线程均不变。Auto-Aim Code Framework Analyst Bootstrap 仍为 `Pending Consumption` —— 角色运行不被推断为该 Bootstrap 已消费，也不被推断为 Auto-Aim 项目进度。
- `Pending`：Persistent Authority Capability 在持续真实使用验证前保持 `Experimental`；`rm-ai-control Architect` 与 `rm-ai-control Maintainer` 的身份关系仍为 `Pending Review`。

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
