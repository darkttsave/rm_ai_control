```yaml
Artifact Type: Role Checkpoint + Curator Update Packet (Plain Conversation Return)
Scope: Project / Auto-Aim (P1) / Role continuity
Producer: Auto-Aim Code Framework Analyst
Created: 2026-09-20
Lifecycle: Archived
Semantic Authority: Role Report
Authoritative Source: archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md（本文件即原始证据本体；Runtime Surface: ChatGPT Project；Role Anchor `auto-aim-code-framework-analyst` v1.1）
Supersedes: None
Next Consumer: None
```

> **Archive Record**（由 Memory Curator 添加的生命周期 metadata，非正文语义）：本 Checkpoint 由 Memory Curator 于 2026-09-21 从 `inbox/` ingest 并归档到 `archive/returns/`，Lifecycle 为 `Pending → Archived`。**原始文件名**：`Auto-Aim Code Framework Analyst — Checkpoint.md`（用户放入 `inbox/`，此前未被 Git 跟踪）；归档副本正文未改动，文件名已规范化为稳定名。
>
> **已持久化**：其可核验事实（上游仓库身份与 revision、Role Anchor 版本与 Authority Recovery 结果、role-local continuity 与下一步）已登记至 [`../../control/PROJECT_CONTROL_INDEX.md`](../../control/PROJECT_CONTROL_INDEX.md) 与 [`../../control/MEMORY_INDEX.md`](../../control/MEMORY_INDEX.md)；结果记录于 [`../../control/MEMORY_CHANGELOG.md`](../../control/MEMORY_CHANGELOG.md) 的 2026-09-21 条目。
>
> **未持久化为 Current Fact**：八个调参实例的讲解覆盖、用户讲解偏好与 role-local Decisions 属 **Role Report**；其记录不构成 Project Stage / Milestone 变更，也**不构成对用户掌握程度的判断**。八项 `Source-Level Concerns` 是**待实车验证的调查入口**，未被登记为已确认缺陷。
>
> **时序说明**：本 Checkpoint 的 `Must Remain Unchanged` 写有 "Persistent Authority / Long-lived Role Continuity：Experimental"（2026-09-20 时点）。该 Capability 已于 **2026-09-21** 由 Human Confirmed 升级为 `Active`；两者不冲突 —— 前者是当日状态陈述，后者是其后的人类决定，且本 Checkpoint 的 Producer 遵守了"不自行升级"的约束。

Auto-Aim Code Framework Analyst — Checkpoint
Role Anchor ID: auto-aim-code-framework-analyst
Role Anchor Version: 1.1
Last Authority Verification: 2026-09-20 UTC
Authority Recovery: SUCCESS
Runtime Authority Gap: None
Repository Mode: Read-only investigation
Verified Repository Commit: bd9f5e798fa3c6dd3b483ae6627796afb41c608d
Current Goal

通过同济 sp_vision_25 的真实源码和典型问题，建立能够实际执行的自瞄调参与诊断能力；随后进入同济与君瞄的模块级实现对比。

Verified Facts

本阶段已完成八个典型问题实例：

目标检测时有时无：区分图像、Detector、分类与 Tracker。
高速运动漏检：曝光、运动模糊、推理速度和旧帧积压。
静止目标存在固定偏差：PnP、外参、机械零位、弹道与 offset。
静止准确但运动目标落后：时间戳、处理延迟、发射延迟、飞行时间与速度预测。
检测稳定但 Tracker 抖动或丢失：状态机、Q/R、装甲板关联与 NIS。
预测正确但云台跟随慢或振荡：Planner、MPC 权重、加速度限制与下位机执行。
瞄准正常但不开火或打不中：Shooter、fire_thresh、发弹链路和机械延迟。
多目标锁错或频繁切换：优先级、过滤、切换确认、保持时间与全向感知交接。

已明确同济在 Target 之后保留两种后端：

Aimer
→ 输出yaw/pitch
→ 下位机完成主要闭环控制
MPC Planner
→ 生成参考轨迹
→ 输出yaw/pitch及速度、加速度
→ 下位机跟随

它们共用 Detector、Solver、Tracker 和 Target，不是两套完全独立的自瞄。

Decisions
实例讲解优先于继续扩展抽象调参框架。
不再主动生成、更新或打包调参手册；用户自行保存到“调参笔记”。
讲解采用“现象 → 数学关系 → 参数方向 → 对照实验 → 源码映射”。
C++ 源码不能作为未解释的答案：需要逐行翻译，否则使用公式说明。
参数只能调整首次出现问题的层级，不能用下游参数掩盖上游错误。
当前调参实例已经达到进入下一阶段所需的覆盖范围。
Source-Level Concerns Requiring Runtime Validation

以下均来自当前源码实际阅读，但尚未通过实车实验裁定影响：

standard.cpp 创建了 Shooter，但没有把 Shooter 判断写入最终 command.shoot。
minimum_vision_system.cpp 调用 Shooter 后忽略了返回值。
NIS 注释声明“四自由度、95%”，阈值却是 0.711，且使用更新后的状态和协方差计算，和标准 NIS 定义不一致。
平衡步兵按两块装甲板初始化，但装甲板关联固定访问前三个候选，存在越界风险。
普通 standard.cpp 没有经过 Decider 设置优先级，而 Armor 构造中未见确定的默认优先级初始化。
普通 Aimer 使用有符号角速度选择高低速延迟，MPC Planner 使用角速度绝对值；高低速延迟不同时可能产生方向不对称。
MPC Planner 没有使用实际云台角度和角速度作为优化初始状态，更接近参考轨迹整形与前馈生成，而不是完整云台闭环。
主相机发现更高优先级目标后会立即切换，缺少独立的切换确认与保持机制。

这些是后续模块分析和实车验证的调查入口，不应直接作为未经实验验证的最终修改结论。

Unknowns
用户实际车辆最终采用 Aimer 还是 MPC Planner，尚未由真实部署入口确认。
电控端是否完整使用 Planner 输出的角速度和角加速度，尚未验证。
当前仓库中的源码风险哪些会在实际编译目标中触发，尚未通过运行确认。
不裁定用户已掌握全部调参内容；目前只记录已经完成讲解并形成了可继续工作的理解基础。
Current Work

调参实例分析暂停于本断点。没有继续代码修改、实车参数标定或正式修复。

Next Step

进入模块级对比，按以下顺序分析：

1. Detector
2. Solver / 坐标变换
3. Tracker / Target / EKF
4. Aimer / Planner / 预测控制
5. Shooter
6. IO、时间戳与多线程

每个模块使用统一结构：

君瞄怎么实现
→ 同济怎么实现
→ 同济改变了什么
→ 为什么这样改变
→ 获得什么收益
→ 付出什么代价
→ 实际调参关注什么
Curator Update Packet
Artifact Type: Curator Update Packet
Scope: Auto-Aim tuning case study checkpoint
Producer: Auto-Aim Code Framework Analyst
Created: 2026-09-20
Lifecycle: Pending
Semantic Authority: Role Report
Authoritative Source: Current conversation checkpoint + verified sp_vision_25 source at bd9f5e798fa3c6dd3b483ae6627796afb41c608d
Supersedes: None
Next Consumer: Memory Curator
Expected Persistence: Auto
What Happened
完成八个基于同济 sp_vision_25 源码的典型调参实例。
澄清 Aimer 与 MPC Planner 是共享感知跟踪前端的两种瞄准/控制后端。
确立后续讲解需以数学关系和物理意义为主；引用 C++ 时必须同步解释。
调参实例部分在此设置恢复断点，下一步进入同济与君瞄的模块级对比。
Verified Authority / Sources
role:auto-aim-code-framework-analyst，Version 1.1，已于 2026-09-20 实际重新读取。
contract:universal-return，已于本 Packet 生成前实际重新读取。
template:curator-update-packet，已于本 Packet 生成前实际重新读取。
TongjiSuperPower/sp_vision_25，验证提交 bd9f5e798fa3c6dd3b483ae6627796afb41c608d。
Active Rules or State Affected
Role-local continuity：更新至“八个调参实例完成，等待模块对比”。
用户讲解偏好：公式与因果关系优先；源码必须同步解释。
其他 Current State：No change。
Artifact Lifecycle Events
Artifact: Auto-Aim tuning checkpoint
Event: Produced | Returned
Evidence: 本次正式 Checkpoint 与用户设置的阶段断点。
Capability Impact
None。
Must Remain Unchanged
Auto-Aim Project Stage
Milestone
Learning State
User Engineering Capability Assessment
Persistent Authority Capability Status
Persistent Authority / Long-lived Role Continuity：Experimental
rm-ai-control Current State
MEMORY_INDEX
MEMORY_CHANGELOG
同济源码与 Git 状态
Unknowns / Conflicts
不裁定用户对八个实例的长期掌握状态。
不裁定上述源码风险的实车影响。
不自行决定 Packet 的持久化位置、索引、Changelog、归档或提交。
Expected Persistence

Auto

本次只生成并返回 Checkpoint，没有修改同济仓库、rm-ai-control 或任何 Current State。