# Curator Update Packet — Auto-Aim P2 主线与两个工作角色

> ⚠️ **已被 SUPERSEDE（2026-09-17）——请勿据本 Packet 落盘阶段状态。**
>
> 本 Packet 中的阶段表述 `P2 — Open-source assimilation / operation / tuning / diagnosis` 已由 **Human + rm-ai-control Architect** 正式取代。当前阶段为 **`P1 — Team Legacy Assimilation & Operational Mastery`**（`Stage Model: rm-ai-control Active`）。
>
> 请改用：[`CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md`](CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md)。
>
> 本 Packet 中**仍然有效**的部分：两个工作角色的类别与 Target Execution Surface 声明、以及 3 份 Bootstrap 的 `Produced` 事件。**失效的部分**：`Current phase` 一行及其所有 P2 assimilation 表述、以及 `Unknowns / Conflicts` 中"阶段命名冲突"一条（已裁决）。建议由 Curator 在归档时标注 Superseded。

```yaml
Artifact Type: Curator Update Packet
Scope: Project / Auto-Aim (P2) + Role
Producer: Manager (rm-ai-control_v1.1 Navigator)
Created: 2026-09-17
Lifecycle: Pending
Semantic Authority: Human Confirmed (project direction) + Mechanical (role registration and artifact pointers)
Authoritative Source:
  - 用户 2026-09-17 Hot Start 说明（Human Confirmed）
  - outbox/BOOTSTRAP_AUTO_AIM_CODE_FRAMEWORK_ANALYST.md
  - outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md
  - control/MEMORY_INDEX.md
  - control/PROJECT_CONTROL_INDEX.md
Supersedes: None
Next Consumer: Memory Curator
Expected Persistence: Auto
```

## What Happened

1. **用户明确确认新的真实项目主线**（Human Confirmed，非 Manager 推断）：

```text
RoboMaster 自瞄组
→ 接手同济大学 2025 自瞄开源项目
→ 学习并运行开源
→ 独立调试步兵自瞄
→ 独立调试哨兵自瞄
→ 后续细分：镖体方向 / 能量机关 / 代码维护
```

   用户未来主要负责**镖体方向指导**；**当前不是独立开发阶段**。

2. **主项目方向正式变更**，需要进入持久状态：

| 项 | 值 |
|---|---|
| Primary direction | Auto-Aim（RoboMaster 自瞄） |
| Current phase | `P2 — Open-source assimilation / operation / tuning / diagnosis`（**用词冲突见 `Unknowns / Conflicts`**） |
| Source project | 同济大学 2025 自瞄开源项目（仓库地址未登记） |
| Near-term target | 独立调试步兵自瞄 + 独立调试哨兵自瞄 |
| Future specialization | 镖体方向指导 |
| Guided Dart P0.5 | **次要 / 历史探索线，不是当前主项目** |

3. **初始化两个新的工作角色**，并生成两份 `Pending` Bootstrap：

| 角色 | 类别 | Target Execution Surface | Bootstrap |
|---|---|---|---|
| Code Framework Analyst（代码框架分析者） | Specialist 类（长期工程理解） | `Repo-capable Role` | [`../outbox/BOOTSTRAP_AUTO_AIM_CODE_FRAMEWORK_ANALYST.md`](../outbox/BOOTSTRAP_AUTO_AIM_CODE_FRAMEWORK_ANALYST.md) |
| Environment Configuration Instructor（项目环境配置讲师） | Work / Executor 类 | `Executor with repo write`（限环境范围） | [`../outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md) |

   两个角色**不是上下级**，通过 Artifact / Return 交接。两者均**不得**维护 `rm-ai-control` 的持久状态。

4. 本轮 Manager **未执行**代码分析或环境配置（用户明确要求本轮只做初始化与路由设计）。

## Verified Authority / Sources

- **项目方向与角色设计**：用户 2026-09-17 Hot Start 说明 —— `Human Confirmed`，不需要 Manager 推断。
- **落盘前状态核查**：Manager 已实测确认 `control/` 下**没有任何** `Auto-Aim` / `Tongji` / `同济` / `自瞄` / `哨兵` / `步兵` 内容（`git grep` 于 2026-09-17）→ **该状态变更确实尚未进入持久状态**。
- **方法基础**：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/Project_Assimilation.md`（Brownfield First；L0–L6；Reproduce→Operate→Tune→Map→Diagnose→Modify）—— 本轮两个角色的方法基础直接复用此现有 Playbook，**未新增方法论**。

## Active Rules or State Affected

- `control/PROJECT_CONTROL_INDEX.md`：**Project Map 与 Conversation / Role Registry 需要反映新的主项目与两个新角色**（当前 Project Map 仍以 Guided Dart P0.5 为主项目）。
- `control/MEMORY_INDEX.md`：Current Persistent State 与 Pending Outbox 概览需要反映新项目与新 Bootstrap（具体行由 Curator 决定）。
- `control/PROJECT_CONTROL_INDEX.md` §Pending / Awaited Events：可能需要记录"同济仓库获取方式"、"阶段命名冲突"等待决项。
- 可能需要一个新的**项目作用域目录**（例如 `projects/auto-aim/`）——这属于**结构变化**，若 Curator 判断需要，请升级给 **Repo Operator**，Manager 不自行创建。

## Artifact Lifecycle Events

- Artifact: [`../outbox/BOOTSTRAP_AUTO_AIM_CODE_FRAMEWORK_ANALYST.md`](../outbox/BOOTSTRAP_AUTO_AIM_CODE_FRAMEWORK_ANALYST.md)
- Event: `Produced`
- Evidence: 用户 2026-09-17 明确要求生成该 Bootstrap；Lifecycle `Pending`（`outbox/`，`Pending Consumption`）

- Artifact: [`../outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md)
- Event: `Produced`
- Evidence: 同上

- Artifact: 本 Curator Update Packet
- Event: `Produced`
- Evidence: Manager 按 `MANAGER_CHARTER.md` §Persistence Handoff 输出

- Artifact: [`../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md`](../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md)
- Event: `Other` —— **状态不变**，仍为 `Pending Consumption`（用户尚未真正建立该对话）
- Evidence: 无消费证据

## Capability Impact

- Added: `None`
- Changed: `None`
- Deprecated: `None`
- None: **本轮视为 "existing capabilities being used in a real project"**。两个新角色是**工作角色**，不是新的 System Capability；它们复用既有的 `RM staged operating model`、`Knowledge learning and note lifecycle`、`Context health and minimum-sufficient handoff`、`Persistent memory and artifact curation` 等已登记能力。**不因为出现两个新角色就机械新增 Capability。**
- 若后续真实 Pilot 暴露出现有 Capability 真正缺失，再由 Manager 记录 **Gap Observation** 交 Maintainer 裁决（本轮未发现）。

## Must Remain Unchanged

- **Core Protocol**：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/` 保持只读，不得修改。
- **Guided Dart P0.5 阶段与 Checkpoint 内容**：`projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md` 语义不变（仅其**优先级定位**变为"次要 / 历史线"）。
- **Learning State**：`control/knowledge/LEARNING_STATE.md` 的 `C++ / OpenCV / ROS2` 登记内容不变；`PnP / EKF / Deep Learning / PID / Control` **仍为 `Not Registered`**。
- **Knowledge Asset Index**：21 条资产不变。
- **PID / Control 知识线程状态**：不变（仍为未创建 / 未消费）。
- **Capability 定义**：不变（不新增、不修改）。
- 不得把两个新 Bootstrap 当作已消费；不得把新角色的存在当作"用户已获得相应能力"。

## Unknowns / Conflicts

1. **阶段命名冲突（需 Human / Maintainer 明确，Manager 未调和）**
   - 用户表述：`P2 — Open-source assimilation / operation / tuning / diagnosis`。
   - Frozen 协议 `START_HERE.md`：`P0 Domain Orientation` / `P1 Reality Acquisition` / **`P2 Project Inception`**（收敛 Mission / System Map / Asset-Gap / Entry Strategy / First Milestone）。
   - 两者**语义不一致**。请 Maintainer / Human 决定：是采用用户的新编号语义、还是映射到协议既有阶段体系、或引入独立的 assimilation 阶段标签。**在裁决前，两个 Bootstrap 均按用户原话使用该标签并显式标注冲突。**
2. **同济 2025 自瞄仓库**：地址 / 分支 / 版本 / 许可证 / 获取方式**未登记**。
3. **两个角色的实际环境能力未验证**：`Repo-capable` 与 `Executor with repo write` 是 Manager 依据用户描述声明的**目标面**；实际读写与执行能力需用户在首次启动时确认，Bootstrap 中已内置降级路径。
4. **Skill / Methodology 资产未提供**：Code Framework Analyst 的 `First Action` 就是向用户索要；在拿到之前，该角色的方法完全依赖 Bootstrap 内联的最小摘要。
5. **目标机器事实全部缺失**：OS / ROS 版本 / compiler / 算力 / 相机 / SDK / 网络。
6. **Main Supervisor 未登记**；步兵 / 哨兵优先级未定。

## Expected Persistence

`Auto`

Producer 不指定 `MEMORY_INDEX` 的具体行、是否写 Changelog、最终 archive 位置或 commit message。若存在语义冲突、权限问题或关键事实缺失，已在上方 `Unknowns / Conflicts` 明确列出——其中**阶段命名冲突**建议以 `Pending Review` 处理，并请 Human / Maintainer 裁决后再固化为 Current。
