# Project Control Index

> 供 Manager 使用的项目导航地图；权威来源确定后的持久化由 Memory Curator / Repo Operator 按职责边界执行。它不是业务事实的最高权威。
>
> 原则：**摘要 + 指针，不复制完整正文。**

## Metadata

- Last Refreshed: 2026-09-25
- Manager / Runtime: DSH Manager MVP verified with `@deepseek-ai/dsh@0.1.5-rc.1`; file-based fallback retained
- Runtime Source: [`../runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md`](../runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md)
- Project Version: `rm-ai-control_v1.2`（release 2026-09-19；主题 `Persistent Authority + Long-lived Role Continuity`）
- Current Protocol: `RM_AI_Development_Protocol_v2.3_Frozen`
- Protocol Source: [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/README.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/README.md)
- Stage Model Disambiguation: 当前项目阶段一律标注 `Stage Model: rm-ai-control Active`；引用 Frozen 协议中的历史阶段语义时必须标注 `Stage Model: Protocol v2.3 Frozen`。**两套编号不得隐式混用。**

---

# 1. Current Project Map

## Project: Auto-Aim（Current Primary Project）

- Current Stage: `P1 — Team Legacy Assimilation & Operational Mastery`（`Stage Model: rm-ai-control Active`）
- Stage Source: [`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md`](../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md)（Human Confirmed，2026-09-17 consume；稳定项目状态位置尚未建立，见 §6）
- Current Milestone / Focus: `M1 — Auto-Aim Baseline Reproduced` —— repository identity / branch / revision 明确；environment baseline 明确；build 与 run / launch 路径可重复；initial system map 与 major modules / data flow 初图已建立；configuration / parameter entrypoints 已找到；至少一条实际 runtime evidence；unresolved unknowns 有记录
- Milestone / Focus Source: [`../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md)（`Pending Consumption`；Goal 与 `P1 Exit` 定义）
- Development Mode: Brownfield / Open-source Adoption；Independent Development: `Not Yet`
- Upstream Repository: `TongjiSuperPower/sp_vision_25` —— Verified Revision `bd9f5e798fa3c6dd3b483ae6627796afb41c608d`（只读调查）
- Upstream Repository Source: [`../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md`](../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md)（`Role Report`，2026-09-20 ingest）
- Near-term Objective: 能够独立调试并诊断步兵、哨兵自瞄（`Reproduce → Operate → Tune → Diagnose`）
- Main Supervisor: Auto-Aim Main Supervisor（Bootstrap `Produced`；会话尚未建立）
- Latest Project State: [`../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md`](../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md)（Code Framework Analyst role continuity，`Role Report`）+ [`../archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md`](../archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md)（Code Segment Analyst Thread A Stage Checkpoint，`Role Report`）+ [`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md`](../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md)（阶段语义，`Human Confirmed`）
- Last Updated: 2026-09-22 ingest（Code Segment Analyst Thread A Stage Checkpoint，2026-09-21）
- Freshness: Current —— 阶段语义由 Human 确认；仓库身份 / revision 已由 Role Report 核验；`M1` 仅部分有证据（见下）
- Next Major Condition: `M1` 证据成立并接近 `P1 Exit`（8 项方向性条件）；**是否进入 P2 由 Human 确认**
- Future Stage: `P2 — Independent Direction Development`（独立负责并开发一个方向）；User Future Specialization: Dart-body / Guided Dart

### Current Verified Facts

- 2026-09-17 Human 确认当前阶段为 `P1 — Team Legacy Assimilation & Operational Mastery`：接手队伍遗产 / 成熟开源 → `Reproduce → Operate → Tune → Diagnose` → 掌握步兵自瞄 → 掌握哨兵自瞄 → 建立独立调参与常见故障诊断能力。
- `P1` **不是**独立新系统开发阶段，重点对应 `L0 Reproduce / L1 Operate / L2 Tune / L3 Diagnose`；允许必要的 `L4 Modify`，但独立架构与新方向开发不是当前主目标。
- 原表述 `P2 — Open-source assimilation / operation / tuning / diagnosis` 已被 Human supersede，**不得再用于任何 Current / navigation 状态**。
- 阶段模型消歧：当前阶段标注 `Stage Model: rm-ai-control Active`；Frozen 协议旧阶段语义（`P2 Project Inception` 等）继续作为历史基线存在，引用时必须标注 `Stage Model: Protocol v2.3 Frozen`。
- Auto-Aim 为 Current Primary Project；Guided Dart P0.5 转为 secondary / historical preparatory exploration。
- 仓库身份已核验（`Role Report`，2026-09-20）：上游为 `TongjiSuperPower/sp_vision_25`，本次只读调查的 revision 为 `bd9f5e798fa3c6dd3b483ae6627796afb41c608d`，调查模式为只读，**未运行、未修改**。
- 上游系统结构（`Role Report`）：`Target` 之后存在两条后端 —— `Aimer`（输出 yaw/pitch，由下位机完成主要闭环）与 `MPC Planner`（生成参考轨迹并输出 yaw/pitch 及速度、加速度，由下位机跟随）；二者共用 `Detector`、`Solver`、`Tracker`、`Target`，**不是两套独立自瞄**。
- `auto_aim_test.cpp` 主链（`Role Report`，Thread A，2026-09-21）：`YOLO::detect() → list<Armor> → Tracker(Solver + Target/EKF) → list<Target> → Aimer::aim() → Command`；该测试程序当前使用 `YOLO`（神经网络前端），与 `Detector`（传统 CV，内部持有 `Classifier`）为并列的两套检测前端。
- `Target` 使用 **11D whole-car EKF 状态**（旋转中心位置 / 速度、参考装甲板相位、整车角速度、两组装甲板半径与半径 / 高度差），EKF 观测为 **4D**（`yaw_pos` / `pitch_pos` / `distance` / `armor yaw`）；`Solver` 经 OpenCV `solvePnP(SOLVEPNP_IPPE)` 提供**单块 Armor** 的空间观测，不直接给出完整整车状态；观测噪声 `R` 为动态调整，是 Tune 阶段的重要参数入口。
- 现成接口（`Role Report`）：`target.ekf_x()` 直接给出 11D 状态，`auto_aim_test` 已将其写入 `tools::Plotter` 的 JSON → UDP（`127.0.0.1:9870`）；自身当前可明确取得 quaternion → yaw / pitch / roll，但**未确认**存在底盘 world `x/y`、`vx/vy` / odometry。
- 构建路径已核验（`Role Report`）：`cmake --build build --target auto_aim_test -j2` 可重建 `auto_aim_test`；从源码根目录直接 `make auto_aim_test` **不能**完成当前构建目标。
- `M1` 各项证据状态（按 `M1` 定义逐项对照，未由角色或 Curator 宣布完成）：repository identity / revision **已有证据**；initial system map 与 major modules / data flow **已有部分证据**；unresolved unknowns **已记录**；单目标 build 路径**已有部分证据**（仅 `auto_aim_test` 一个 target，未覆盖整个系统）；environment baseline、完整 build 与 run / launch 路径、configuration / parameter entrypoints、实际 runtime evidence **仍无证据**。
- Code Framework Analyst 已完成八个典型调参问题实例的源码级讲解（`Role Report`），并已进入"模块级对比"准备状态；该记录**不是**用户掌握程度判断，也**不是**调车或实车验证结果。

### Current Blockers / Unknowns

- 同济 2025 自瞄仓库的 **branch / 许可证 / 获取方式仍未登记**（仅仓库名与 revision 已核验）。
- 目标机器事实全缺：OS / ROS / compiler / 算力 / 相机 / SDK / 网络。
- `M1` 的 environment baseline、完整 build / launch / run、config entrypoints 与实际 runtime evidence 仍无证据；步兵 / 哨兵优先级未定；实车条件未登记。
- 工作角色的实际环境能力未验证（`Repo-capable Role`、`Executor with repo write` 目前只是 Target Execution Surface 声明）。
- Code Framework Analyst 的 Skill / Methodology 资产未提供（其 First Action 前置）。
- Main Supervisor 是否为当前唯一 Supervisor、是否需要上级结构，未确认。
- 用户车辆最终采用 `Aimer` 还是 `MPC Planner` 尚未由真实部署入口确认；电控端是否完整使用 Planner 输出的角速度 / 角加速度未验证。
- 自身平移未确认进入 Auto-Aim 估计链：自身旋转有 IMU / gimbal 补偿入口，自身底盘世界平移 / 速度**未观察到进入敌方 Target 估计链**；其对实际运动射击误差的**影响程度未经实验验证**（`Role Report`，属待验证假设，不是结论）。
- `Aimer` 局部逻辑（目标装甲板选择、预测时间、如何消费 11D 状态、yaw / pitch 最终形成、比赛实际可调参数）**尚未调查**。

---

## Project: Guided Dart Project（Secondary / historical）

- Priority Position: **Secondary / historical preparatory exploration** —— 自 2026-09-17 起不是当前 Primary Project；其 Checkpoint 内容与语义未改变
- Current Stage: `Other — P0.5` / 内容方向探索
- Stage Source: [`../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`](../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md)
- Current Milestone / Focus: 在不进入正式方案设计、不中途锁定下一赛季方案的前提下，继续跨方案通用基础探索并形成可复习笔记
- Milestone / Focus Source: [`../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`](../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md)
- Main Supervisor: Unknown / Not Registered
- Latest Project State: [`../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`](../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md)
- Last Updated: 2026-09-14 Manager ingest; source artifact date not stated (filesystem timestamp 2026-09-13)
- Freshness: Current —— 其阶段语义仍由用户提供的权威 P0.5 状态文件支撑；自 2026-09-17 起优先级为 secondary / historical，不再代表当前主项目
- Next Major Condition: Unknown / Not Registered

### Current Verified Facts

- The source artifact states that the current stage is P0.5 and that P0 domain orientation is basically complete.
- The source artifact explicitly states that the current stage is not Project Inception and does not perform formal technical-route convergence.
- The current next-step pointer is continued P0.5 foundational exploration; the proposed first topic is coordinate frames and time.
- The 2026 rules are a historical baseline only; next-season rules remain unknown.

### Current Blockers / Unknowns

- Next-season rules and whether the user will formally own Guided Dart algorithms are unknown.
- Team inheritance, actual mechanical/control capability, available flight data, and final algorithm responsibility boundaries are unknown.
- Main Supervisor and active role/conversation status are not registered.

---

# 2. Conversation / Role Registry

| Conversation / Role | Purpose | Status | Latest Authoritative Artifact | Last Updated | Freshness / Note |
|---|---|---|---|---|---|
| Auto-Aim Main Supervisor（自瞄项目总监督） | Auto-Aim 项目日常监督：消费各角色 Return 与实车验证证据，判断进度 / 阻塞 / 下一项最高价值任务 / 路由，维护 `M1 → P1 Exit` 推进判断 | Not yet created — Bootstrap `Produced`，`Pending Consumption`；`Plain Conversation` | [`../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md) | 2026-09-17 Bootstrap | 沿用协议既有 Main Supervisor 角色类别的**工作角色**，不是新 Capability；重大阶段变化只提案、由 Human 确认；不进入 `rm-ai-control` 持久化；会话建立前不得视为已产生任何进度判断 |
| Auto-Aim Code Framework Analyst（代码框架分析者） | 长期工程理解：工程结构、模块 / 数据流、配置与参数入口、"为什么这样写" | Active — ChatGPT Project Runtime Pilot `PASS`（2026-09-19）；已产出首个正式 Checkpoint（2026-09-20）；Bootstrap Packet 本身仍为 `Pending Consumption` | Persistent Role Anchor [`role-anchors/AUTO_AIM_CODE_FRAMEWORK_ANALYST_ROLE_ANCHOR.md`](role-anchors/AUTO_AIM_CODE_FRAMEWORK_ANALYST_ROLE_ANCHOR.md)（Canonical Version `1.1`）；Checkpoint [`../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md`](../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md) | 2026-09-20 Checkpoint ingest | Target Execution Surface `Repo-capable Role`（目标面）；Runtime Delivery Copy `1.1` 已验证，旧 `1.0` Runtime Copy 为 `stale`；role-local 状态：八个调参实例讲解完成、下一步进入六模块级对比（Detector → Solver → Tracker/Target/EKF → Aimer/Planner → Shooter → IO/时间戳/多线程）；Role-local Decisions：以实例讲解为主、不再自动产出调参手册（用户自行保存笔记）、参数只能在问题首次出现的层级调整；**未产生 M1 的 build / runtime 证据** |
| Auto-Aim Code Segment Analyst（代码段分析者） | Supporting Conversation：局部源码实现问题（某检测框在哪里生成、数据如何跨文件流动、callback / queue / thread 局部调用关系、数学表达如何落到真实 C++） | Active — 已真实建立并运行；Bootstrap 已 `Consumed`（`Supervisor Confirmed`，2026-09-22）→ 归档至 [`../archive/dispatches/BOOTSTRAP_AUTO_AIM_CODE_SEGMENT_ANALYST.md`](../archive/dispatches/BOOTSTRAP_AUTO_AIM_CODE_SEGMENT_ANALYST.md) | Thread A Stage Checkpoint [`../archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md`](../archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md)（`Role Report`，2026-09-21） | 2026-09-22 ingest | `Repo-capable Role`，`Read-only investigation`，锁 revision `bd9f5e7…`；**无 Role Anchor**（Manager 判定，Curator 复核确认）；**两个并行线程（用户说明 A / B）** —— 本行仅记录 **A** 的 continuity（主线推进至 `auto_aim_test` 固定终端 Dashboard，下一步进入 `Aimer`），**B 尚未返回，不得与 A 混同** |
| Auto-Aim Engineering Task Coordinator（自瞄工程任务协调对话） | Supporting Conversation（**Task-level** 交付闭环）：学长布置的修改类工程任务 —— 澄清目标、审查相关源码、判定 scope / risk、选择执行路由、验证证据、返回结果 | Not yet created — Bootstrap `Produced`，`Pending Consumption`；`Repo-capable Role`（read access，**默认 `no-write`**） | [`../outbox/BOOTSTRAP_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md) | 2026-09-22 Bootstrap | **Task-level，不是 Project-level**：`P1` / `M1` / `P1 Exit` / 项目优先级 / 用户能力判断仍属 Human 与 Main Supervisor；**无 Role Anchor**（锚触发条件已收紧：首次实际路由真实 tracked-source 修改任务时重新评估）；写权限**暂不授予**；每修改任务独立 `task/<具体任务>` 分支；证据由实际执行者提供，Coordinator 只审查 |
| C++ Quick Knowledge Conversation | Supporting Conversation / Knowledge Conversation：C++ 即时知识补缺（STL / ranges、lambda、智能指针、RAII、move semantics、template、`optional` / `variant`、Eigen 表达、并发） | Not yet created — Bootstrap `Produced`，`Pending Consumption`；`Plain Conversation` | [`../outbox/BOOTSTRAP_CPP_QUICK_KNOWLEDGE_CONVERSATION.md`](../outbox/BOOTSTRAP_CPP_QUICK_KNOWLEDGE_CONVERSATION.md) | 2026-09-21 Bootstrap | Supporting Conversation，**无 Role Anchor**；`playbook:knowledge-learning-notes` 已内联为最小规则；机制清单与期望深度未知；是否形成正式笔记及落点未定；**不得据此更新 Learning State** |
| Auto-Aim Environment Configuration Instructor（项目环境配置讲师） | 环境复现：安装 / 构建 / 启动路径与踩坑记录，形成可复现命令；区分 upstream baseline 与本机适配 | Not yet created — Bootstrap `Produced`，`Pending Consumption`；Target Execution Surface `Executor with repo write`（限环境范围，目标面） | [`../outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md) | 2026-09-17 Bootstrap（含 upstream baseline 硬规则） | 目标机器事实全缺；实际执行能力未验证 |
| Guided Dart P0.5 exploration | Same-stage cross-solution foundational learning and note preparation（现为 secondary / historical line） | Unknown | [`../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`](../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md) | 2026-09-14 ingest | Semantic stage is sourced; conversation activity is not registered |
| Guided Dart Knowledge — PID / Control 接口基础 | Dedicated knowledge conversation for the P0.5 `Control` interface layer, driven by the user's existing PID notes and questions | Not yet created — the earlier 2026-09-15 `Active` entry was a test registration; awaiting the user's first real conversation | None yet — no authoritative artifact; Manager Bootstrap Packet only | 2026-09-15 re-bootstrap | Manager-generated packet remains Pending Consumption and is navigated through [`MEMORY_INDEX.md`](MEMORY_INDEX.md), not used as semantic authority; user-side PID notes and video material are user-reported and not registered; the conversation that carried the earlier 电控 learning entry was archived by the user and is currently unlocatable (user-reported 2026-09-15) |
| rm-ai-control Maintainer | Maintain Core Protocol and project-level method from real RM friction without taking the project Main Supervisor role | Active — Canonical Anchor `1.0`; 第1次鲸落 `Completed`; 第1次鲸鸣 `PASS` | [`role-anchors/RM_AI_CONTROL_MAINTAINER_ROLE_ANCHOR.md`](role-anchors/RM_AI_CONTROL_MAINTAINER_ROLE_ANCHOR.md) + [`../archive/returns/FIRST_WHALE_SONG_MAINTAINER_RECOVERY_REPORT.md`](../archive/returns/FIRST_WHALE_SONG_MAINTAINER_RECOVERY_REPORT.md) | 2026-09-25 Role Recovery | System methodology only; not the project Main Supervisor. `rm-ai-control Architect` identity relation remains `Pending Review`; real RM long-term validation remains incomplete |
| DSH Manager Runtime Validation | Validate the Manager `ingest` capability with a mechanical-only smoke test | Completed | [`../archive/state-updates/STATE_UPDATE_MANAGER_RUNTIME_SMOKE_TEST.md`](../archive/state-updates/STATE_UPDATE_MANAGER_RUNTIME_SMOKE_TEST.md) | 2026-09-14 ingest | Mechanical-only validation entry; the source asserts no Guided Dart / Protocol semantic change |

---

# 3. Knowledge Navigation Overview

| Area | Practical State Summary | Relevant Assets / State | Source | Last Updated |
|---|---|---|---|---|
| Guided Dart cross-solution foundations | P0.5 material includes system-layer distinctions, timing/response concepts, and attitude/trajectory/AoA distinctions; this is recorded progress, not a mastery claim | Learning State: [`knowledge/LEARNING_STATE.md`](knowledge/LEARNING_STATE.md) (only C++ / OpenCV / ROS2 registered; PnP, EKF, Deep Learning, PID / Control remain Not Registered); Knowledge Asset Index: [`knowledge/KNOWLEDGE_ASSET_INDEX.md`](knowledge/KNOWLEDGE_ASSET_INDEX.md) | [`../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`](../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md) | 2026-09-14 ingest |
| Cross-project knowledge state (C++ / OpenCV / ROS2) | First minimal long-term knowledge state seeded from the knowledge-reconstruction executor's report and confirmed by the user on 2026-09-16; asset identity boundaries preserved; no mastery claim beyond recorded evidence | Learning State: [`knowledge/LEARNING_STATE.md`](knowledge/LEARNING_STATE.md); Knowledge Asset Index: [`knowledge/KNOWLEDGE_ASSET_INDEX.md`](knowledge/KNOWLEDGE_ASSET_INDEX.md) | [`../archive/state-updates/STATE_UPDATE_KNOWLEDGE_STATE_INITIAL.md`](../archive/state-updates/STATE_UPDATE_KNOWLEDGE_STATE_INITIAL.md) | 2026-09-16 |

---

# 4. Protocol State

- Current Version: `RM_AI_Development_Protocol_v2.3_Frozen`
- Frozen Package: [`../archive/source-packages/RM_AI_Development_Protocol_v2.3_Frozen.zip`](../archive/source-packages/RM_AI_Development_Protocol_v2.3_Frozen.zip)
- Expanded Read-only Baseline: [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/)
- Latest Release Packet: [`../protocol/releases/PROTOCOL_RELEASE_PACKET_v2.3_INITIAL.md`](../protocol/releases/PROTOCOL_RELEASE_PACKET_v2.3_INITIAL.md)
- Maintainer Checkpoint: [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/archive/Protocol_Maintainer_Checkpoint_v2.3.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/archive/Protocol_Maintainer_Checkpoint_v2.3.md)
- Migration Required: No
- Pending User Action: None for existing project flow
- Verification Boundary: Long-term validation in a real RM project is not complete
- Last Updated: 2026-09-14

The migration and user-action entries above come from the Initial Manager Baseline Release Packet; they do not assert any RM project stage or learning state.

---

# 5. Pending / Awaited Events

| Item | Waiting For | Why It Matters | Owner / Source | Last Updated |
|---|---|---|---|---|
| Auto-Aim `M1` evidence | 仓库身份 / 环境基线 / 可复现 build 与 launch / system map / config 入口 / 至少一条 runtime evidence | `M1` 未成立前无法判定 `P1` 进展，也无法判断进入 `P1 Exit` 的距离 | [`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md`](../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md) | 2026-09-17 |
| Tongji 2025 auto-aim repository identity | 地址 / 分支 / revision / 许可证 / 获取方式 | 决定能否开始 `Reproduce`，以及 Code Framework Analyst 能读到什么 | 同上 | 2026-09-17 |
| Auto-Aim target machine facts | OS / ROS / compiler / 算力 / 相机 / SDK / 网络 | 环境基线与可行性判断的前置；缺此无法确认 `Executor with repo write` 的实际作用域 | 同上 | 2026-09-17 |
| Auto-Aim role environment capability confirmation | 用户首次启动各角色时确认实际读 / 写 / Git 能力 | Bootstrap 声明的是 Target Execution Surface（目标面），不是已验证事实 | [`../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md) 等三份 Auto-Aim Bootstrap | 2026-09-17 |
| Auto-Aim 步兵 / 哨兵 priority and real-vehicle conditions | Human 决策与实车条件登记 | 决定 `P1` 内部推进顺序 | [`../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md) | 2026-09-17 |
| Auto-Aim 上游源码风险项的实车验证 | 真实编译目标与实车实验裁定以下 8 项源码级疑点的影响：`Shooter` 创建但未写入最终 `command.shoot`；`minimum_vision_system` 忽略 `Shooter` 返回值；NIS 阈值 `0.711` 与注释"四自由度 95%"不一致；平衡步兵装甲板关联固定访问前三个候选的越界风险；`standard.cpp` 未经 `Decider` 设置优先级；普通 `Aimer` 用有符号角速度而 `MPC Planner` 用绝对值（高低速延迟方向不对称）；`MPC Planner` 未以实际云台角度 / 角速度作为优化初始状态；主相机发现更高优先级目标后立即切换、缺少独立切换确认与保持机制 | 这些是**调查入口，不是已确认缺陷**；未验证前不得作为最终修改结论 | [`../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md`](../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md) | 2026-09-20 Role Report |
| Auto-Aim 部署入口确认 | 用户车辆最终采用 `Aimer` 还是 `MPC Planner`；电控端是否完整使用 Planner 输出的角速度 / 角加速度 | 决定后续调参与诊断集中于哪条后端 | 同上 | 2026-09-20 Role Report |
| Auto-Aim Code Segment Analyst Thread B 返回 | 用户说明同一提示词开启了两个并行对话（A / B）；目前仅 A 返回了 Stage Checkpoint | 两个线程的 role-local continuity 必须分别登记；在 B 返回前不得把 A 的状态当作该角色的唯一当前状态 | 用户在 `inbox/` 返回件中的说明 | 2026-09-22 |
| Auto-Aim Engineering Task Coordinator 上线与首次任务 | 用户启动该对话；后端的下游 Repo / Work Executor **暂不创建**（第一个多文件机械性修改任务出现时才创建**一次性** Executor） | 决定是否需要写权限、常驻 Executor 或 Role Anchor | [`../outbox/BOOTSTRAP_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md) | 2026-09-22 |
| Coordinator 实际仓库读取能力验证 | 用户首次启动时确认 read access 的实际范围 | 未验证时任务 scope 判定与源码审查只能基于用户提供材料 | 同上 | 2026-09-22 |
| Guided Dart project-entry facts | Next-season rules, team inheritance, ownership boundaries, and actual system capability | These facts can change whether and how work proceeds beyond P0.5 | [`../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`](../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md) | 2026-09-14 ingest |
| v2.3 real-project validation | Concrete friction from real RM / Guided Dart use | Maintainer Checkpoint explicitly leaves long-term real-project validation incomplete | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/archive/Protocol_Maintainer_Checkpoint_v2.3.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/archive/Protocol_Maintainer_Checkpoint_v2.3.md) | 2026-09-14 ingest |

---

# 6. Stale / Conflicting Entries

| Entry | Problem | Authoritative Source Needed | Manager Action |
|---|---|---|---|
| `rm-ai-control Architect` vs `rm-ai-control Maintainer` | 两个角色名的身份关系未确认（改名 / 并存 / 同一角色的不同称呼）；不明确则无法确定阶段语义与项目层方法裁决应记在哪个角色名下 | Human / `rm-ai-control Architect` | `Pending Review` —— 已注册，**未调和**；Manager 与 Curator 均不得自行合并两者 |
| `P2 — Open-source assimilation / operation / tuning / diagnosis` | 该阶段表述已被 Human 于 2026-09-17 supersede；任何 Current / navigation 状态都不得再使用 | Human Confirmed（2026-09-17 阶段裁决） | Resolved —— 记录为 `Superseded`；原 Packet 已归档并标注 Superseded |
| Auto-Aim 稳定项目状态位置 | Current Primary Project 尚无 `projects/` 稳定项目状态位置；项目状态已分布于 `PROJECT_CONTROL_INDEX` §1、`archive/dispatches/`（阶段语义、Bootstrap）与 `archive/returns/`（Role Report 证据）。随 Checkpoint 增加，该缺口更实质 | Repo Operator（结构裁决） | Repository Change Request 已提交：[`../outbox/REPOSITORY_CHANGE_REQUEST_AUTO_AIM_PROJECT_STATE.md`](../outbox/REPOSITORY_CHANGE_REQUEST_AUTO_AIM_PROJECT_STATE.md) |
| `template:task-brief` 未登记于 [`AUTHORITY_INDEX.md`](AUTHORITY_INDEX.md) | Auto-Aim Engineering Task Coordinator 向下游路由时必然依赖 Frozen 协议模板 `TASK_BRIEF_TEMPLATE.md`，且 `START_HERE.md` 已把 Work 入口指向它 —— 属"已被当前活跃规则引用"却未登记的 Authority，构成 unresolved Authority dependency | 登记 Authority 条目属 **Authority 语义范围**，须由 Human / rm-ai-control Maintainer 确认；Canonical 文件已实测存在（`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_BRIEF_TEMPLATE.md`，62 行） | `Pending Review` —— Curator **未改动** `AUTHORITY_INDEX.md`；Coordinator 继续按 Bootstrap 内联等价 Brief 结构 + "未经过正式 Authority 校验"降级路径执行 |

Manager / Memory Curator 不自行解决语义冲突，只标记并请求 / 读取权威来源。

---

# 7. Recent Significant Updates

- 2026-09-22: Ingest Code Segment Analyst **Thread A** Stage Checkpoint（2026-09-21，`Role Report`）：核验 `auto_aim_test.cpp` 主链、`YOLO` / `Detector` 关系、`Armor` / `Solver` / `Target` 职责、11D whole-car EKF 与 4D 观测、动态观测噪声 `R`、`ekf_x()` 与 Plotter 接口、`cmake --build build --target auto_aim_test -j2` 构建路径。`M1` 的 build 项记为**部分证据**（单 target），**未宣布 `M1` 完成**。
- 2026-09-22: 依 `Supervisor Confirmed` 证据将 Code Segment Analyst Bootstrap 由 `Pending Consumption` 修正为 `Consumed` 并归档至 [`../archive/dispatches/BOOTSTRAP_AUTO_AIM_CODE_SEGMENT_ANALYST.md`](../archive/dispatches/BOOTSTRAP_AUTO_AIM_CODE_SEGMENT_ANALYST.md)；该角色登记为 `Active`。**两个并行线程（A / B）分别登记**，B 尚未返回。
- 2026-09-22: 登记新增 Supporting Conversation **Auto-Aim Engineering Task Coordinator**（Task-level 交付闭环，默认 `no-write`，每任务独立 `task/<具体任务>` 分支，无 Role Anchor）；Consume 并归档其增量 Packet。上游变更纪律已写入其 Bootstrap（tracked 文件变更须先说明理由、影响与回滚并获用户明确授权）。
- 2026-09-22: 登记 `template:task-brief` 为 **unresolved Authority dependency**（`Pending Review`，交 Human / Maintainer 裁决）；Curator 未改动 [`AUTHORITY_INDEX.md`](AUTHORITY_INDEX.md)。
- 2026-09-21: Ingest Code Framework Analyst Checkpoint（2026-09-20，`Role Report`）：核验上游仓库 `TongjiSuperPower/sp_vision_25` @ `bd9f5e798fa3c6dd3b483ae6627796afb41c608d`、澄清 `Aimer` 与 `MPC Planner` 为共享感知前端的两种后端、记录八个调参实例与八项待实车验证的源码疑点；`M1` 逐项证据状态已如实登记（**未宣布 `M1` 完成**）。
- 2026-09-21: Consume 并归档 Auto-Aim Supporting Conversations 增量 Packet；登记两个 Supporting Conversation（Code Segment Analyst / C++ Quick Knowledge），两者**均无 Role Anchor**、复用既有 Capability、未新增 Authority 条目。
- 2026-09-21: `Persistent Authority / Long-lived Role Continuity` 由 Human Confirmed 升级为 `Active`（见 [`SYSTEM_CAPABILITY_INDEX.md`](SYSTEM_CAPABILITY_INDEX.md) § Status Change Record）。
- 2026-09-19: `rm-ai-control_v1.2` 落地（`Persistent Authority + Long-lived Role Continuity`）：Canonical Authority / Runtime Delivery Copy 区分、Authority Recovery Gate、Artifact Promotion Gate、Role Anchor 与 Bootstrap / Checkpoint 集成；Core Protocol 基线不变。
- 2026-09-19: 首个 Canonical Role Anchor `auto-aim-code-framework-analyst` 建立（`1.0`），Authority Dependency Discovery Gap 修复后升至 `1.1`；[`AUTHORITY_INDEX.md`](AUTHORITY_INDEX.md) 建立，旧 `1.0` Runtime Copy 记为 `stale`。
- 2026-09-19: Auto-Aim Code Framework Analyst 在 ChatGPT Project Runtime 完成首次 Persistent Authority Pilot：Authority Recovery `PASS`、Artifact Promotion Gate `PASS`、Authority 不可读时正式 Packet 被正确暂停、Role Anchor Version Recovery `1.1` `PASS`。**未产生任何 Auto-Aim 项目进度或 `M1` 证据**；其 Bootstrap Packet 仍为 `Pending Consumption`。
- 2026-09-19: Ingest 并归档 4 份 v1.2 / Runtime Pilot 正式 Return 至 [`../archive/returns/`](../archive/returns/)；四者同属一个 Capability 的连续证据。
- 2026-09-17: Human 确认 Auto-Aim 当前阶段为 `P1 — Team Legacy Assimilation & Operational Mastery`（`Stage Model: rm-ai-control Active`），原 `P2 — Open-source assimilation…` 表述 superseded；Ingested [`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md`](../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md)。
- 2026-09-17: 登记 Auto-Aim 为 Current Primary Project 与 Milestone `M1 — Auto-Aim Baseline Reproduced`；Guided Dart P0.5 转为 secondary / historical（Checkpoint 内容未改变）。
- 2026-09-17: 登记三个 Auto-Aim 工作角色及其 `Pending Consumption` Bootstrap（Main Supervisor / Code Framework Analyst / Environment Instructor）；**均未消费**，未产生项目证据。
- 2026-09-17: 被 supersede 的 P2 Packet 已归档为历史证据并标注 `Superseded`，不再作为 Pending 导航项。
- 2026-09-17: 向 Repo Operator 提交 Repository Change Request（Auto-Aim 稳定项目状态位置，结构变化）。
- 2026-09-14: Ingested [`../archive/state-updates/STATE_UPDATE_GUIDED_DART_P0_5_INITIAL.md`](../archive/state-updates/STATE_UPDATE_GUIDED_DART_P0_5_INITIAL.md) from the Guided Dart P0.5 Stage Checkpoint.
- 2026-09-14: Ingested [`../archive/state-updates/STATE_UPDATE_PROTOCOL_MAINTAINER_INITIAL.md`](../archive/state-updates/STATE_UPDATE_PROTOCOL_MAINTAINER_INITIAL.md) from the Maintainer Checkpoint and Initial Manager Baseline Release Packet.
- 2026-09-14: Registered v2.3 Frozen as the current protocol baseline; project and learning-state migration are not required.
- 2026-09-14: Ingested and archived [`../archive/state-updates/STATE_UPDATE_MANAGER_RUNTIME_SMOKE_TEST.md`](../archive/state-updates/STATE_UPDATE_MANAGER_RUNTIME_SMOKE_TEST.md) — mechanical-only Manager runtime ingest validation entry recorded as Completed; no project, protocol, or knowledge semantic state was changed.
- 2026-09-14: Verified the DSH Manager MVP capabilities and overreach boundaries; runtime evidence and fallback are recorded in [`../runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md`](../runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md).
- 2026-09-14: Generated a Guided Dart coordinate-frames Bootstrap using Overview + Relevant Detail; its Pending lifecycle is navigated through [`MEMORY_INDEX.md`](MEMORY_INDEX.md).
- 2026-09-15: Registered the new dedicated Guided Dart Knowledge conversation `PID / Control 接口基础` as Active and generated its Bootstrap; the Pending Artifact is navigated through [`MEMORY_INDEX.md`](MEMORY_INDEX.md). No project stage, milestone, protocol, learning-state, or knowledge-asset semantic change was made.
- 2026-09-15: Corrected that registration — the `Active` entry was a test registration and no real conversation had ever been created; regenerated the same packet as the **first real bootstrap**. Mechanical registration correction only; no project stage, milestone, protocol, learning-state, or knowledge-asset semantic change was made.
- 2026-09-16: Seeded the first minimal Learning State and Knowledge Asset Index for C++ / OpenCV / ROS2 from the knowledge-reconstruction executor's candidate report, after user confirmation; Deep Learning / PnP / EKF / PID / Control remain Not Registered. Ingested and archived [`../archive/state-updates/STATE_UPDATE_KNOWLEDGE_STATE_INITIAL.md`](../archive/state-updates/STATE_UPDATE_KNOWLEDGE_STATE_INITIAL.md).

---

# 8. Recommended Navigation

- If the user asks about Auto-Aim current stage, progress, blockers or next task → Auto-Aim Main Supervisor / Human, using the ingested `P1` packet and the role Bootstraps.
- If the user asks about Auto-Aim code structure / parameters → Auto-Aim Code Framework Analyst; about installation / build / launch → Auto-Aim Environment Configuration Instructor.
- If the user asks about Guided Dart project direction or transition beyond P0.5 → Main Supervisor / Human, using the current Stage Checkpoint（secondary / historical line）. 引用其阶段语义时标注 `Stage Model: Protocol v2.3 Frozen`。
- If the user asks about current implementation / repository work → Work / Executor in the relevant business repository, not this control repository.
- If the user continues a Guided Dart knowledge gap → Specialist + Knowledge Playbook, or a dedicated Knowledge Conversation where appropriate.
- If the user asks about protocol / project-level workflow → rm-ai-control Maintainer.
- If the user asks about a Persistent Role Anchor, Authority ID resolution or Runtime Delivery → [`AUTHORITY_INDEX.md`](AUTHORITY_INDEX.md) → Canonical Source → the anchored role / Manager; Anchor semantics are Maintainer / Human territory.
- If the user asks “where should I go?” → Manager uses this Index and the latest authoritative sources to suggest a route.
