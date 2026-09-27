# Memory Changelog — rm-ai-control_v1.2

> 只记录管理意义上的持久状态变化，不替代 Git log，也不记录 Markdown 排版或普通机械链接修复。

## 2026-09-27 — Maintainer Work Cloud Discussion Runtime Activation Ingested

- Ingest `Role Report` 返回件 `RM_AI_CONTROL_MAINTAINER_WORK_CLOUD_RECOVERY_CHECKPOINT.md`（Producer: rm-ai-control Maintainer — Work Cloud Discussion Runtime）：由 `inbox/` 归档至 [`../archive/returns/RM_AI_CONTROL_MAINTAINER_WORK_CLOUD_RECOVERY_CHECKPOINT.md`](../../archive/returns/RM_AI_CONTROL_MAINTAINER_WORK_CLOUD_RECOVERY_CHECKPOINT.md)，Lifecycle `Pending → Consumed → Archived`；配套 Curator Update Packet 归档至 [`../archive/dispatches/CURATOR_UPDATE_PACKET_MAINTAINER_WORK_CLOUD_ACTIVATION_2026-09-27.md`](../../archive/dispatches/CURATOR_UPDATE_PACKET_MAINTAINER_WORK_CLOUD_ACTIVATION_2026-09-27.md)。
- 来源核验（只读）：commit `e242c9ddc8fff8363934bae4b263b724545319fd` 实测存在，为该 Return 与 Packet 的创建 commit；本地 remote-tracking ref `origin/maintainer-cloud-migration` 解析为 `e27d12c7f4bc59755e713f0d81c52fe1c92e2398`，该 commit object 实测存在，其 tree 中实测包含 `outbox/BOOTSTRAP_RM_AI_CONTROL_MAINTAINER_WORK_CLOUD.md` 与 `outbox/CHECKPOINT_RM_AI_CONTROL_MAINTAINER_PRE_CLOUD_MIGRATION.md`；Canonical Role Anchor 仍为 Anchor ID `rm-ai-control-maintainer` / Version `1.0`。
- 持久化为 Current 的运行时状态（`Role Report`，Semantic Authority 为云端角色自报，Curator 未独立复现云端行为）：**`Local Current; Cloud Discussion Runtime Activated; Recovery Test Passed; Local Maintainer Retained`** —— 激活目标面是 **ChatGPT Work Cloud discussion / review runtime + GitHub-connected repository access**；本地 Maintainer 保留仓库执行、测试与受控提交；云端与本地是同一长期角色的两个运行位置，共享一个 Canonical Role Anchor 与一个语义 Authority。
- 边界如实记录：**未**登记、激活或推断 Codex Cloud executor，**未**要求或声称 Git checkout、build / test environment、workspace dirty-state inspection；GitHub Connector 写能力不等于写权限，恢复测试执行契约为只读；DSH Manager / Curator 为 control-plane，不是该 runtime 的消费者以外角色。
- 生命周期（有消费证据）：`BOOTSTRAP_RM_AI_CONTROL_MAINTAINER_WORK_CLOUD.md` 与 `CHECKPOINT_RM_AI_CONTROL_MAINTAINER_PRE_CLOUD_MIGRATION.md` 由 `Pending Consumption` 记为 `Consumed` 并归档至 [`../archive/dispatches/`](../../archive/dispatches/)；证据为该 Role Report `## Verified Facts` 与验收项 2（runtime 从固定 commit 读取并重读该两文件）。归档仅新增 Archive Record 生命周期 metadata：Bootstrap 按当时语义**原样保留为历史证据**，其初始 `Codex Cloud 仓库执行` 框架**未**被改写为当前要求，也未使其 Codex-checkout 验收项成为本次激活的证据要求。
- 未改变：`protocol/current/` Frozen 内容、Capability 定义（Added / Changed / Deprecated 均为 None；activation 复用既有 `Persistent Authority / Long-lived Role Continuity`）、Authority 语义、Anchor ID / Version（`rm-ai-control-maintainer` 仍为 `1.0`）、业务 Project Stage / Milestone、Learning State、Knowledge Asset Index、任何业务技术决定。
- item ③ **universal-function inventory / naming 仍为 `Deferred`**（Human 明确 paused；未取消、未完成，待 Human 明确恢复）；本事件**未**恢复该项工作，也**未**因迁移前置完成而自动重启。
- `Pending Review`（未变）：`rm-ai-control Architect` 与 `rm-ai-control Maintainer` 的身份关系仍未调和；DSH Curator live runtime validation 仍记为 `Pending`，本 Packet 不得作为该验证证据；稳定 Maintainer runtime status 位置与稳定 control-plane 优先级位置仍不存在（结构裁决属 Repo Operator）。
- 范围纪律：`inbox/Curator Update Packet.md` 按要求**未被读取、修改、消费、归档或 staged**。

## 2026-09-27 — Human Template Guide Navigation and Maintainer Cloud Priority Ingested

- Ingest Human Confirmed Curator Update Packet `CURATOR_UPDATE_PACKET_HUMAN_GUIDE_AND_MAINTAINER_CLOUD_PRIORITY_2026-09-27.md`（Producer: rm-ai-control Maintainer）：由 `outbox/` `Pending Consumption` 消费并归档至 [`../archive/dispatches/CURATOR_UPDATE_PACKET_HUMAN_GUIDE_AND_MAINTAINER_CLOUD_PRIORITY_2026-09-27.md`](../../archive/dispatches/CURATOR_UPDATE_PACKET_HUMAN_GUIDE_AND_MAINTAINER_CLOUD_PRIORITY_2026-09-27.md)，Lifecycle `Consumed → Archived`。
- 来源核验：Guide promotion commit `e5f628be3c810d83c7ea782ad9329fde8d226a03` 与 Packet 创建 commit `0f988870520f94c994ef15c3bcb21a07a615cca2` 均实测存在；Guide 入口 [`../dashboard/human-template-guide/START_HERE.md`](../dashboard/human-template-guide/START_HERE.md)、Work Cloud delivery boundary [`../dashboard/human-template-guide/delivery/WORK_CLOUD.md`](../dashboard/human-template-guide/delivery/WORK_CLOUD.md)、Maintainer Anchor（Anchor ID `rm-ai-control-maintainer` / Version `1.0`）以及 root / control README、System Capability Index、Template Resolution Catalog 中的稳定导航链接均已实测存在且一致。
- 持久化为 Current 的**导航状态**：Human Template Guide 为 Current Human 导航入口（导航，不替代 Canonical Template 或 Authority）；链接的稳定性登记于 [`PROJECT_CONTROL_INDEX.md`](../dashboard/PROJECT_CONTROL_INDEX.md) 与 [`MEMORY_INDEX.md`](MEMORY_INDEX.md)。
- 持久化为 Current 的**维护优先级状态**（Human Confirmed）：① 从持久仓库状态同步 Curator 与 Manager → ② 准备并激活 Maintainer Work Cloud runtime → ③ 恢复 universal-function inventory / naming；第三项记为 `Deferred`（未取消、未完成）。
- Maintainer runtime position 记为 `Local Current; Cloud Activation Pending`：Work Cloud 是同一长期角色的 continuation / sibling runtime，不替代本地 Maintainer、不产生第二个语义 Authority；远程可达性 / 认证 / pushed commit / Cloud Environment 连接 / 恢复测试均未验证，**未记为迁移完成**。
- 未改变：Capability（Added / Changed / Deprecated 均为 None）、Authority 语义、Role Anchor Version（`rm-ai-control-maintainer` 仍为 `1.0`）、`protocol/current/` Frozen 内容、业务 Project Stage / Milestone、Learning State、Knowledge Asset Index 与任何业务技术决定。
- `Pending Review`：DSH Curator live runtime validation 仍记为 `Pending` —— 本轮为首次 bounded real ingest 的实际执行，但**未宣称 `PASS`**；[`../runtime/dsh-pilot/CURATOR_RUNTIME_STATUS.md`](../../runtime/dsh-pilot/CURATOR_RUNTIME_STATUS.md) 未被修改，其"No live Provider call was made"陈述因本轮执行而 stale，是否落盘 validation-status 属 Human / rm-ai-control Maintainer 的验证判断范围。
- 范围纪律：`inbox/Curator Update Packet.md` 按要求未被读取、修改、消费、归档或 staged。

## 2026-09-26 — Control Surface Reorganized; Role-based Loading Applied

- 经 Human 批准，将 `control/` 从平铺根文件重构为 `dashboard/`、`ai/`、`authority/`、`memory/`、`governance/` 五个职责层；`templates/` 与特化 `knowledge/` 保持独立。
- `AGENTS.md` 与 DSH Manager Entry 改为按角色 / 意图加载：Manager、Curator、Maintainer、仓库写入任务和普通下游 Executor 不再默认预读整套 Control。
- 当前活跃入口、Bootstrap、Outbox、Runtime、索引及本地 Markdown 链接均切换至新路径；历史 Archive / Release 仅机械修正可点击链接目标，原始正文中的旧路径文字可继续表达当时记录。
- 本次不拆分 `PROJECT_CONTROL_INDEX.md` 正文，不改变任何 Project Stage、Milestone、Capability、Authority 语义、Role Anchor Version、Learning State 或 Frozen Protocol。

## 2026-09-25 — First Maintainer Whale Fall Completed; Canonical Anchor Recovered

- Human 以 `APPROVED WITH MINOR REVISION` 批准 Maintainer Anchor Proposal，并确认继续处理；审理证据归档于 [`../archive/returns/MAINTAINER_ANCHOR_PROPOSAL_REVIEW_FEEDBACK.md`](../../archive/returns/MAINTAINER_ANCHOR_PROPOSAL_REVIEW_FEEDBACK.md)。
- 建立 Canonical Role Anchor [`role-anchors/RM_AI_CONTROL_MAINTAINER_ROLE_ANCHOR.md`](../authority/role-anchors/RM_AI_CONTROL_MAINTAINER_ROLE_ANCHOR.md)：Anchor ID `rm-ai-control-maintainer`、Version `1.0`、Role `rm-ai-control Maintainer`、Execution Capability `Repo-capable`。明确 `Repository Access ≠ Semantic Authority`；未授予业务状态裁决权或无限仓库修改权。
- [`AUTHORITY_INDEX.md`](../authority/AUTHORITY_INDEX.md) 登记 `role:rm-ai-control-maintainer`；[`../AGENTS.md`](../../AGENTS.md) 增加可选仓库启动定位，使本地 Runtime 能从 Canonical Anchor 恢复。
- 第1次鲸鸣完成 Identity、Authority Resolution、System Lineage、Current State、Boundary 与 Repository 检查，结果 `PASS`；证据见 [`../archive/returns/FIRST_WHALE_SONG_MAINTAINER_RECOVERY_REPORT.md`](../../archive/returns/FIRST_WHALE_SONG_MAINTAINER_RECOVERY_REPORT.md)。因 `Anchor 创建 + Authority Index 登记 + Bootstrap 可恢复 + 鲸鸣 PASS` 四项全部成立，第1次鲸落记为 `Completed`。
- 用户提供的交接包由 `inbox/` 移至 [`../archive/returns/第1次鲸落_Maintainer交接包_修正版/`](../../archive/returns/第1次鲸落_Maintainer交接包_修正版/)（`Pending → Consumed → Archived`）；包内 Draft / Candidate / Observation 不因归档而升级为 Current Authority。
- 未创建系统术语 Authority、鲸落 / 鲸鸣 Canonical Definition、新 Capability 或 `rm-ai-control_v1.3`；未修改 Frozen Protocol、业务 Project Stage / Milestone、Learning State、Knowledge Asset Index 或用户能力判断。
- `rm-ai-control Architect` 与 `rm-ai-control Maintainer` 的身份关系继续保持 `Pending Review`；`template:task-brief` unresolved Authority dependency 与 Auto-Aim 稳定项目状态位置缺口保持原状。

## 2026-09-22 — Segment Analyst Thread A Ingested; Bootstrap Consumed; Task Coordinator Registered

- Ingest Code Segment Analyst **Thread A** Stage Checkpoint（`Role Report`，2026-09-21）与其配套 Curator Update Packet，归档至 [`../archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md`](../../archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md) 与 [`../archive/returns/CURATOR_UPDATE_PACKET_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md`](../../archive/returns/CURATOR_UPDATE_PACKET_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md)。
- **Thread 处理**：用户说明同一提示词开启了两个并行对话（A / B）；本轮两份返回件均来自 **A**。文件名中的 `_A` 是线程标签，**不是版本号**。B 线程尚未返回，其 role-local continuity **未登记**，且不得与 A 混同。
- 持久化为 Current 的源码级事实：`auto_aim_test.cpp` 主链（`YOLO → Armor → Tracker(Solver + Target/EKF) → Aimer → Command`）、`Detector` / `Classifier` 与 `YOLO` 的并列关系、`Armor` / `Solver` / `Target` 职责边界、11D whole-car EKF 与 4D 观测、动态观测噪声 `R`、`ekf_x()` 与 Plotter（`127.0.0.1:9870`）接口、`cmake --build build --target auto_aim_test -j2` 构建路径。`M1` 的 build 项记为**部分证据**（单 target），**未宣布 `M1` 完成**。
- **未**持久化为 Current Fact：Checkpoint §4 的"边跑边打"归因与 ego-motion 补偿方案是**假设**；自身平移未补偿的**实际影响未经实验验证**；本 Checkpoint 不裁决 Stage / Milestone / 用户掌握等级。
- **生命周期修正（有证据）**：Auto-Aim Code Segment Analyst Bootstrap 由 `Pending Consumption` 修正为 **`Consumed`**，归档至 [`../archive/dispatches/BOOTSTRAP_AUTO_AIM_CODE_SEGMENT_ANALYST.md`](../../archive/dispatches/BOOTSTRAP_AUTO_AIM_CODE_SEGMENT_ANALYST.md)。证据：该角色已真实建立并按 Bootstrap 的只读边界运行，其 Checkpoint 将 Bootstrap 列为"当前执行边界"。消费判定由 Auto-Aim Main Supervisor 确认（`Supervisor Confirmed`，经 Manager 转达）。
- Consume 并归档 Auto-Aim Engineering Task Coordinator 增量 Packet 至 [`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md`](../../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md)；登记新 Supporting Conversation **Auto-Aim Engineering Task Coordinator**（Task-level 交付闭环、默认 `no-write`、每任务独立 `task/<具体任务>` 分支、暂不创建常驻 Executor、无 Role Anchor）于 [`PROJECT_CONTROL_INDEX.md`](../dashboard/PROJECT_CONTROL_INDEX.md) §2，其 Bootstrap 保持 `Pending Consumption`。
- 登记 `template:task-brief` 为 **unresolved Authority dependency**（`Pending Review`）：[`AUTHORITY_INDEX.md`](../authority/AUTHORITY_INDEX.md) 未被改动 —— 登记 Authority 条目属 Authority 语义范围，须由 Human / rm-ai-control Maintainer 确认；Coordinator 继续按 Bootstrap 降级路径执行。
- 未改变：Project Stage（`P1`）、Milestone（`M1`）、Learning State、Knowledge Asset Index、用户工程能力判断、Guided Dart P0.5、Future P2、既有 Role Anchor 版本、Capability 定义与任何角色职责。

## 2026-09-21 — Auto-Aim Checkpoint and Supporting Conversations Ingested

- Ingest Auto-Aim Code Framework Analyst Checkpoint（`Role Report`，2026-09-20）：由 `inbox/` 归档至 [`../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md`](../../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md)（`Pending → Archived`），原始文件名与来源保留在 Archive Record。
- 持久化为 Current 的内容：上游仓库身份与 revision（`TongjiSuperPower/sp_vision_25` @ `bd9f5e798fa3c6dd3b483ae6627796afb41c608d`，只读调查）、`Target` 之后双后端结构（`Aimer` / `MPC Planner` 共享 `Detector` / `Solver` / `Tracker` / `Target`）、`M1` 逐项证据状态、role-local continuity 与下一步六模块对比。
- **未**持久化为 Current Fact：八个调参实例的讲解覆盖与 role-local Decisions 记为 `Role Report`，**不构成 Project Stage / Milestone 变更，也不构成对用户掌握程度的判断**；八项源码级疑点登记为**待实车验证的调查入口**，不是已确认缺陷。
- Consume 并归档 Auto-Aim Supporting Conversations 增量 Packet 至 [`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_SUPPORTING_CONVERSATIONS.md`](../../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_SUPPORTING_CONVERSATIONS.md)（`Consumed → Archived`）；登记两个 Supporting Conversation（Auto-Aim Code Segment Analyst、C++ Quick Knowledge Conversation）于 [`PROJECT_CONTROL_INDEX.md`](../dashboard/PROJECT_CONTROL_INDEX.md) §2，均为 `Pending Consumption`、**无 Role Anchor**、复用既有 Capability。
- 复核确认 Manager 判断：本次**未新增** Authority 条目与 Role Anchor，[`AUTHORITY_INDEX.md`](../authority/AUTHORITY_INDEX.md) 未改动；[`SYSTEM_CAPABILITY_INDEX.md`](../dashboard/SYSTEM_CAPABILITY_INDEX.md) 未因本次 ingest 改动。
- 未改变：Project Stage（`P1`）、Milestone（`M1`）、Learning State、Knowledge Asset Index、用户工程能力判断、Guided Dart P0.5、Future P2、PID / Control 线程、既有 Role Anchor 版本与任何角色职责。Code Framework Analyst Bootstrap 仍为 `Pending Consumption`。

## 2026-09-21 — Persistent Authority Capability Promoted to Active (Human Confirmed)

- `Persistent Authority / Long-lived Role Continuity`：`Experimental` → `Active`，由 **Human Confirmed** 直接决定（2026-09-21）。原 v1.2 登记条件"需持续真实使用验证"已由 Role Anchor `auto-aim-code-framework-analyst` `1.1` 的两次真实 Runtime 事件满足（2026-09-19 Pilot `PASS`；2026-09-20 持续使用中 Authority Recovery `SUCCESS`，`Runtime Authority Gap: None`）。
- 落盘范围仅限 [`SYSTEM_CAPABILITY_INDEX.md`](../dashboard/SYSTEM_CAPABILITY_INDEX.md) 该 Capability 行的 `Status` 字段，并在该文件新增 `## Status Change Record` 记录决定来源、证据、边界与验证范围。**未改动** Capability 名称、Purpose、When to Use、Entry / Source、Owner，也未改动 Core Protocol、方法论或角色权限。
- **边界说明**：Capability 定义与状态变化通常由 rm-ai-control Maintainer 裁决、Repo Operator 确定性落盘。本次因 Human 直接指令，由 Memory Curator 执行状态字段落盘并留痕；记录为**一次性授权**，不构成 Curator 可自行变更 Capability 的先例。
- 验证范围如实记录：截至 2026-09-21 仅覆盖 **1 个 anchored role / 1 个 Runtime Surface（ChatGPT Project）**；多角色、多 Runtime Surface 尚未验证。
- `Persistent Memory / Artifact Curation` **保持 `Experimental`**（本轮未获授权变更）。
- 登记本轮新到达的 3 份 Pending Artifact（**仅登记，未 ingest**）：[`../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md`](../../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md)（Role Report / Checkpoint，2026-09-20）、[`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_SUPPORTING_CONVERSATIONS.md`](../../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_SUPPORTING_CONVERSATIONS.md) 与两份新 Bootstrap（Code Segment Analyst / C++ Quick Knowledge）。四者内容均**未被**写为 Current Fact。（其中 Checkpoint 与增量 Packet 已于同日 ingest 并归档，见上一条；链接已更新为稳定位置。）
- 未改变：Project Stage、Milestone、Learning State、Knowledge Asset Index、用户工程能力判断、Guided Dart P0.5、Future P2、既有 Role Anchor 版本与任何角色职责。

## 2026-09-19 — Persistent Authority v1.2 Landed; First Runtime Pilot Evidence Ingested

- `rm-ai-control_v1.2`（主题 `Persistent Authority + Long-lived Role Continuity`）落地：Canonical Authority / Runtime Delivery Copy 区分、Authority Recovery Gate、Artifact Promotion Gate，以及 Role Anchor 与 Bootstrap / Checkpoint 的集成。Core Protocol 基线仍为 `v2.3 Frozen`。
- 建立首个 Canonical Role Anchor `auto-aim-code-framework-analyst`（初版 `1.0`）；Authority Dependency Discovery Gap 修复后升至 `1.1`，旧 `1.0` Runtime Copy 记为 `stale`。
- 建立 [`AUTHORITY_INDEX.md`](../authority/AUTHORITY_INDEX.md)（薄 Authority discovery / resolution 索引），以及 [`templates/ROLE_ANCHOR_TEMPLATE.md`](../templates/ROLE_ANCHOR_TEMPLATE.md) 与 [`templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md`](../templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md)。
- 新 Capability `Persistent Authority / Long-lived Role Continuity` 登记为 `Experimental` —— 由 rm-ai-control Maintainer 裁决、Repo Operator 落盘；Memory Curator 未修改任何 Capability 定义。
- Ingest 并将 4 份正式 Return 归档至 [`../archive/returns/`](../../archive/returns/)：v1.2 implementation、Authority Dependency Discovery Pilot follow-up、Runtime Authority Pilot（Role Report）、Role Anchor Version Recovery Test（Role Report）。四者去重后同属**一个** Capability 的连续证据，**不构成多个独立 Capability**。
- Runtime Verification 状态：ChatGPT Project 中 Authority Recovery `PASS`、Artifact Promotion Gate `PASS`、Authority 不可读时正式 Packet 被正确暂停、Role Anchor Version Recovery `1.1` `PASS`；`1.0` Runtime Copy 为 `stale`。Canonical Version 与 Runtime Delivery Version 一致为 `1.1`；Runtime Delivery Copy 不作为 Canonical Authority。
- 未改变任何业务状态：Primary Project、Project Stage、Milestone、Learning State、Knowledge Asset Index、用户工程能力判断、Guided Dart P0.5、Future P2 与 PID / Control 线程均不变。Auto-Aim Code Framework Analyst Bootstrap 仍为 `Pending Consumption` —— 角色运行不被推断为该 Bootstrap 已消费，也不被推断为 Auto-Aim 项目进度。
- `Pending`：Persistent Authority Capability 在持续真实使用验证前保持 `Experimental`；`rm-ai-control Architect` 与 `rm-ai-control Maintainer` 的身份关系仍为 `Pending Review`。

## 2026-09-17 — Auto-Aim P1 Stage Persisted; Primary Project Changed

- Human 确认 Auto-Aim 当前阶段为 `P1 — Team Legacy Assimilation & Operational Mastery`（`Stage Model: rm-ai-control Active`）；原表述 `P2 — Open-source assimilation / operation / tuning / diagnosis` 已被 supersede，不得再用于任何 Current / navigation 状态。
- Auto-Aim 登记为 Current Primary Project，Milestone `M1 — Auto-Aim Baseline Reproduced`；Guided Dart P0.5 转为 secondary / historical preparatory exploration（其 Checkpoint 内容与语义未改变）。
- Ingest 了 [`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md`](../../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md)（`Consumed → Archived`）；阶段语义与角色登记已持久化到 [`PROJECT_CONTROL_INDEX.md`](../dashboard/PROJECT_CONTROL_INDEX.md)。
- 被 supersede 的 `CURATOR_UPDATE_PACKET_AUTO_AIM_P2_ROLES.md` 已作为历史证据归档并标注 `Superseded`，不再作为 Pending 导航项；其阶段语义从未被落盘为 Current。
- 登记三份 `Pending Consumption` Bootstrap（Auto-Aim Main Supervisor / Code Framework Analyst / Environment Instructor）；**均未消费**，不得视为已产生项目进度，也不得视为用户已获得相应能力。
- 提交 Repository Change Request：[`../outbox/REPOSITORY_CHANGE_REQUEST_AUTO_AIM_PROJECT_STATE.md`](../../outbox/REPOSITORY_CHANGE_REQUEST_AUTO_AIM_PROJECT_STATE.md)（Auto-Aim 稳定项目状态位置；属结构变化，交 Repo Operator 裁决）。
- `Pending Review`：`rm-ai-control Architect` 与 `rm-ai-control Maintainer` 的身份关系未确认，未自行合并。
- 未改变：Core Protocol（Frozen 内含旧 P1 / P2 语义保持原样，引用须标注 `Stage Model: Protocol v2.3 Frozen`）、Learning State、Knowledge Asset Index、PID / Control `Not Registered` 与任何 Capability 定义。

## 2026-09-17 — Bootstrap Execution Contract Landed; Curator Interface Established

- rm-ai-control Maintainer 已消费并采纳 `MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md` 的核心建议；该正式出站 Artifact 已从 `outbox/` 移入 [`../archive/dispatches/MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md`](../../archive/dispatches/MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md)，Lifecycle `Consumed → Archived`。`MEMORY_INDEX.md` 中对应的 Pending Consumption 指针已删除。
- Bootstrap 规则变化：组装前先判定 `Target Execution Surface`，并声明实际仓库 / 本地文件 / Git / 持久化权限；`Plain Conversation` 默认无仓库读取、无 Git、无直接持久化写权限，路径只作 provenance，Destination 不隐含写权限。
- 新增推荐接口 [`templates/CURATOR_UPDATE_PACKET_TEMPLATE.md`](../templates/CURATOR_UPDATE_PACKET_TEMPLATE.md) 与 [`templates/CURATOR_RECEIPT_TEMPLATE.md`](../templates/CURATOR_RECEIPT_TEMPLATE.md)，并建立 Universal Return Contract；两者是推荐入口，不是硬格式门槛。
- 已 ingest 第一份 Curator Update Packet `CURATOR_UPDATE_RM_AI_CONTROL_V1_1_INTERFACE_PATCH.md`，归入 [`../archive/returns/CURATOR_UPDATE_RM_AI_CONTROL_V1_1_INTERFACE_PATCH.md`](../../archive/returns/CURATOR_UPDATE_RM_AI_CONTROL_V1_1_INTERFACE_PATCH.md)。
- `SYSTEM_CAPABILITY_INDEX.md` 中 `Minimum bootstrap assembly` 与 `Persistent memory and artifact curation` 的说明与 Entry Source 已更新；状态仍为 `Active` / `Experimental`，未新增 Capability。
- 项目版本保持 `rm-ai-control_v1.1`；Core Protocol、Guided Dart P0.5、Learning State、Knowledge Asset Index 与 PID / Control `Not Registered` 均未改变。

## 2026-09-16 — PID Bootstrap Refreshed; New Maintainer Input Pending

- [`../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md`](../../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md) 已按 `rm-ai-control_v1.1` 的 Plain Conversation Execution Contract 刷新（目标环境声明为无仓库访问的普通对话，必需规则改为内联）。该 Bootstrap **仍未被真实新对话消费**，Lifecycle 保持 `Pending Consumption`，因此保留在 `outbox/`，不归档；PID / Control Learning State 仍为 `Not Registered`。
- Manager 的 Bootstrap Target Surface / Execution Contract 规则缺口报告 [`../archive/dispatches/MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md`](../../archive/dispatches/MAINTAINER_INPUT_BOOTSTRAP_EXECUTION_CONTRACT.md) 已进入 `outbox/`，Lifecycle `Pending`，等待 rm-ai-control Maintainer 消费与裁决；裁决前不归档、不写入任何正式规则。（该 Artifact 已于 2026-09-17 被 Maintainer 消费并归档，见上一条；链接已更新为稳定位置。）
- 本次仅更新生命周期导航：未改变 Guided Dart P0.5、Learning State、Knowledge Asset Index、任何 Capability 定义或规则文本。

## 2026-09-16 — First Consumed Dispatch Archived

- 将已有明确消费证据的正式出站 Artifact `MAINTAINER_INPUT_RETURNED_ARTIFACTS.md` 从 `outbox/` 归档到 [`../archive/dispatches/MAINTAINER_INPUT_RETURNED_ARTIFACTS.md`](../../archive/dispatches/MAINTAINER_INPUT_RETURNED_ARTIFACTS.md)，Lifecycle：`Consumed → Archived`。
- 消费证据：`rm-ai-control_v1.1` 已按该 Artifact 的问题与建议实现（git commit `a6c032c969e81ff617e4e121cb8d3087596f1d8e`，`feat: establish memory curation in rm-ai-control v1.1`），并经 Human / Maintainer 确认。
- 归档文件仅新增 Artifact Header 与 Archive Record 生命周期 metadata；正文内容未改动。`MEMORY_INDEX.md` 中对应的 Pending Consumption 指针已按 Stable Reference Rule 删除。
- 其余 4 份 `outbox/` Artifact 因没有明确消费证据继续保持 `Pending Consumption`。
- 未改变 Project Stage、Guided Dart P0.5、Learning State、Knowledge Asset Index、PID / Control 线程或任何 Capability 语义。

## 2026-09-16 — Artifact Lifecycle and Memory Curation Established

- 建立 Memory Curator 角色、五状态 Artifact Lifecycle、Artifact Header、MEMORY_INDEX 和 MEMORY_CHANGELOG。
- 正式启用 `inbox/` Pending 入站、`outbox/` Pending Consumption、`archive/returns/` 和 `archive/dispatches/`。
- 将知识状态 seed 从 disposable `temporary/` 晋升为 tracked historical evidence：[`../archive/returns/KNOWLEDGE_STATE_SEED_CANDIDATE.md`](../../archive/returns/KNOWLEDGE_STATE_SEED_CANDIDATE.md)。
- 将 Guided Dart P0.5 Current Checkpoint 重定位到 [`../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`](../../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md)；内容语义未改变。
- Persistent Memory / Artifact Curation 登记为 `Experimental`，等待真实 DeepSeek Curator 运行验证。

## 2026-09-16 — First Minimal Knowledge State Established

- 用户确认的 C++ / OpenCV / ROS2 Learning State 和 21 条 Knowledge Asset Index 成为 Current State。
- Deep Learning / PnP / EKF / PID / Control 保持 Not Registered。
