# Curator Update Packet — Auto-Aim P1 阶段语义与 Main Supervisor

```yaml
Artifact Type: Curator Update Packet
Scope: Project / Auto-Aim (P1) + Role
Producer: Manager (rm-ai-control_v1.1 Navigator)
Created: 2026-09-17
Lifecycle: Archived
Semantic Authority: Human Confirmed (stage semantics and project state) + Mechanical (role registration and artifact pointers)
Authoritative Source:
  - 用户 2026-09-17 Hot Start 说明（Human + rm-ai-control Architect 裁决）
  - outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md
  - outbox/BOOTSTRAP_AUTO_AIM_CODE_FRAMEWORK_ANALYST.md
  - outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md
Supersedes: outbox/CURATOR_UPDATE_PACKET_AUTO_AIM_P2_ROLES.md
Next Consumer: None
Expected Persistence: Auto
```

> **Archive Record**（由 Memory Curator 添加的生命周期 metadata，非正文语义）：本 Packet 已由 Memory Curator 从 `outbox/` `Pending Consumption` 消费并归档到 `archive/dispatches/`，Lifecycle 为 `Consumed → Archived`。其 Human Confirmed 阶段语义与本轮登记已持久化至 [`../../control/PROJECT_CONTROL_INDEX.md`](../../control/PROJECT_CONTROL_INDEX.md) 与 [`../../control/MEMORY_INDEX.md`](../../control/MEMORY_INDEX.md)，结果记录于 [`../../control/MEMORY_CHANGELOG.md`](../../control/MEMORY_CHANGELOG.md) 的 2026-09-17 条目；正文内容未改动。

## What Happened

### 1. 阶段语义正式修正（Human Confirmed）

**旧表述已 supersede，不得再使用**：

```text
P2 — Open-source assimilation / operation / tuning / diagnosis      ← superseded
```

**当前 active 阶段模型**：

```text
Stage Model: rm-ai-control Active
Current Stage: P1 — Team Legacy Assimilation & Operational Mastery
```

**P1 核心语义**：

```text
接手队伍遗产 / 成熟开源
→ Reproduce → Operate → Tune → Diagnose
→ 掌握步兵自瞄 → 掌握哨兵自瞄
→ 建立独立调参和常见故障诊断能力
```

- P1 **不是独立新系统开发阶段**。
- 重点对应 Engineering Control Ladder：`L0 Reproduce / L1 Operate / L2 Tune / L3 Diagnose`。
- **允许必要的 `L4 Modify`**，但独立架构与新方向开发**不是当前主目标**。

**未来阶段语义**：

```text
P2 — Independent Direction Development
= 开始独立负责并开发一个方向
用户预期的个人 P2 专精方向 = Dart-body / Guided Dart
```

- `P1` = 把成熟自瞄系统掌握到能够独立运行、调参、诊断。
- `P2` = 开始独立负责镖体 / 制导镖等方向并进行真正开发。
- **是否真正进入 P2 由 Human 确认。**

**歧义防护规则（需要进入 Current 规则）**：Current State 中需要避免歧义时应显式标注 `Stage Model: rm-ai-control Active`；若引用 Frozen 协议中的旧阶段语义，必须显式标注 `Stage Model: Protocol v2.3 Frozen`。**两个阶段编号不得隐式混用。**

### 2. 当前主项目状态（正式采用）

| 项 | 值 |
|---|---|
| Primary Project | `Auto-Aim` |
| Current Stage | `P1 — Team Legacy Assimilation & Operational Mastery`（`Stage Model: rm-ai-control Active`） |
| Current Work | Tongji University 2025 auto-aim assimilation；Environment reproduction；Codebase understanding；Infantry tuning；Sentry tuning；Diagnosis capability building |
| Development Mode | Brownfield / Open-source Adoption |
| Independent Development | Not Yet |
| Near-term Objective | 能够独立调试并诊断步兵、哨兵自瞄 |
| Future P2 | Independent Direction Development |
| User Future Specialization | Dart-body / Guided Dart |
| Guided Dart P0.5 | **Secondary / historical preparatory exploration**，非当前 Primary Project |

### 3. 首个 Milestone 正式建立

```text
M1 — Auto-Aim Baseline Reproduced
```

关注真实证据：repository identity / branch / revision 明确；environment baseline 明确；build path 可重复；run / launch path 可重复；initial system map 已建立；major modules / data flow 初图已建立；configuration / parameter entrypoints 已找到；至少一条实际 runtime evidence；unresolved unknowns 有记录。

**不要求**：看完全部源码、掌握全部算法理论、会独立修改 Tracker / EKF、完成步兵与哨兵全部调车。**本轮不设计全年 roadmap。**

推进方式：`Evidence → Current Gap → Next Highest-Value Task`。

**P1 Exit**：仅定义方向性条件（8 项，见 `outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md` 的 `P1 Exit` 一节），不建立复杂打分体系；**是否进入 P2 由 Human 确认**。

### 4. 新角色初始化

| 角色 | 类别 | Target Execution Surface | Bootstrap | 状态 |
|---|---|---|---|---|
| **Auto-Aim Main Supervisor**（自瞄项目总监督） | 项目级语义与推进负责人（既有 Main Supervisor 角色类别，**不是新系统 Capability**） | `Plain Conversation` | [`../../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md`](../../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md) | `Produced` / `Pending Consumption` |

**Auto-Aim Main Supervisor 成为 Auto-Aim 项目的日常监督角色**：消费 Code Framework Analyst / Environment Configuration Instructor / Knowledge Conversation / Specialist 的 Return 与实车验证证据，负责进度判断、阻塞识别、下一项最高价值任务、路由建议与 P1 Exit 接近度判断。重大阶段变化**只提案**，由 Human 确认。

**`rm-ai-control Architect` 不进入日常项目指挥链**（其职责为阶段语义与项目层方法裁决）。

### 5. 两个已有 Bootstrap 的刷新（仅语义刷新，未重新设计）

| 文件 | 是否修改 | 实际修改 |
|---|---|---|
| [`../../outbox/BOOTSTRAP_AUTO_AIM_CODE_FRAMEWORK_ANALYST.md`](../../outbox/BOOTSTRAP_AUTO_AIM_CODE_FRAMEWORK_ANALYST.md) | **是** | YAML `Scope` 的 `(P2)` → `(P1)`；`Current Project Context` 阶段表述改为 `P1 — Team Legacy Assimilation & Operational Mastery` 并加入 P1/P2 语义与阶段模型消歧规则；原"阶段命名冲突"条改为"已裁决"；`Open Questions` 移除该项 |
| [`../../outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md`](../../outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md) | **是** | 同上四项；**新增** `### Upstream Baseline vs Local Environment Adaptation（硬规则）`（本机侧自由 / 上游 tracked 的 `source`、`launch`、`YAML`、`scripts`、`algorithm configuration` 默认须先说明理由并获用户确认；`Return` 中记为 upstream deviation）；`Relevant Decisions / Invariants` 与 `Suggested Opening Prompt` 同步补充该规则 |

两个角色的**定位、类别、目标、First Action、Return 通道均未改变**。

### 6. 本轮未执行

Manager **未执行**代码分析、环境配置或自瞄调试（用户明确要求本轮只处理阶段语义与 Supervisor 初始化）。

## Verified Authority / Sources

- **阶段语义与项目状态**：用户 2026-09-17 Hot Start 说明，明确来源为 **Human + rm-ai-control Architect 裁决** → `Human Confirmed`。
- **落盘前状态核查**：Manager 于 2026-09-17 实测 `git grep` 确认 `control/` 与 `projects/` 中**没有任何** Auto-Aim / Tongji / 自瞄内容 → 本次变更**确实尚未进入持久状态**；上一份 P2 Packet 仍为 `Pending`，未被 ingest。
- **方法基础**：`playbooks/Project_Assimilation.md`（既有 Playbook，未新增方法论）。

## Active Rules or State Affected

- `control/PROJECT_CONTROL_INDEX.md`：Project Map、Conversation / Role Registry、Pending / Awaited Events 需反映 **Auto-Aim / P1 / M1 / Main Supervisor**；当前仍以 Guided Dart P0.5 为主项目。
- `control/MEMORY_INDEX.md`：Current Persistent State 与 Pending Outbox 概览需反映本 Packet 与 3 份新/改 Bootstrap（具体行由 Curator 决定）。
- **可能需要新的项目作用域目录**（例如 `projects/auto-aim/`）——属**结构变化**，若 Curator 判断需要，请升级给 **Repo Operator**；Manager 不自行创建。
- **阶段歧义防护规则**是否需要进入 `control/ARTIFACT_LIFECYCLE.md` 或 `control/PROJECT_CONTROL_INDEX.md` 的常驻说明，请 Curator / Maintainer / Architect 判断。

## Artifact Lifecycle Events

- Artifact: [`../../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md`](../../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md)
- Event: `Produced`
- Evidence: 用户 2026-09-17 明确要求生成；`Pending Consumption`

- Artifact: [`../../outbox/BOOTSTRAP_AUTO_AIM_CODE_FRAMEWORK_ANALYST.md`](../../outbox/BOOTSTRAP_AUTO_AIM_CODE_FRAMEWORK_ANALYST.md)
- Event: `Other`（语义刷新，仍为 `Pending Consumption`）
- Evidence: 阶段语义由 P2 修正为 P1；无消费证据

- Artifact: [`../../outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md`](../../outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md)
- Event: `Other`（语义刷新 + 新增 upstream baseline 硬规则，仍为 `Pending Consumption`）
- Evidence: 同上

- Artifact: [`CURATOR_UPDATE_PACKET_AUTO_AIM_P2_ROLES.md`](CURATOR_UPDATE_PACKET_AUTO_AIM_P2_ROLES.md)
- Event: `Superseded`
- Evidence: 其阶段表述已被 Human 取代；本 Packet 的 `Supersedes` 字段指向它。**请勿据其落盘阶段状态**；其中角色类别与 Bootstrap `Produced` 事件仍然有效。建议归档时标注 Superseded。

- Artifact: [`../../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md`](../../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md)
- Event: `Other` —— **状态不变**，仍 `Pending Consumption`（该对话尚未真正建立）
- Evidence: 无消费证据

## Capability Impact

- Added: `None`
- Changed: `None`
- Deprecated: `None`
- None: **No new top-level Capability.** Main Supervisor 是**工作角色**，沿用协议既有的 Main Supervisor 角色类别，**不等于新的系统 Capability**。阶段模型语义变化属于 **active methodology / project lifecycle clarification**，不是 Capability 定义变化。
- 本轮**未发现**需要记录的 Capability Gap；若后续真实 Pilot 暴露，再单独记录（不机械增加 Capability）。

## Must Remain Unchanged

- **Core Protocol**：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/` **严禁修改**；其中旧 P1 / P2 语义继续作为历史基线存在（引用时标注 `Stage Model: Protocol v2.3 Frozen`）。
- **Guided Dart P0.5 Checkpoint 内容**：`projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md` 语义不变（仅其**优先级定位**为 secondary / historical）。
- **Learning State**：`C++ / OpenCV / ROS2` 登记不变；`PnP / EKF / Deep Learning / PID / Control` **仍为 `Not Registered`**。
- **Knowledge Asset Index**：21 条不变。
- **PID / Control 知识线程状态**：不变（未创建 / 未消费）。
- **Capability 定义**：不变。
- 不得把任何新 Bootstrap 当作已消费；不得把角色存在当作"用户已获得相应能力"；不得由本 Packet 推出 P1 已完成或 P2 已开始。

## Unknowns / Conflicts

1. **`rm-ai-control Architect` 与 `rm-ai-control Maintainer` 的身份关系未确认**：本 Packet 的阶段语义裁决来源写为 `rm-ai-control Architect`（用户用词），而仓库当前登记的项目层方法角色名为 `rm-ai-control Maintainer`。**Manager 未自行合并两者**，请 Human / Architect 明确：改名、并存，还是同一角色的不同称呼。
2. **同济 2025 自瞄仓库**：地址 / 分支 / revision / 许可证 / 获取方式**未登记**。
3. **两个已有角色的实际环境能力未验证**：`Repo-capable Role`、`Executor with repo write` 仍是目标面声明，需用户首次启动时确认。
4. **Skill / Methodology 资产未提供**（Code Framework Analyst 的 `First Action` 前置）。
5. **目标机器事实全缺**：OS / ROS / compiler / 算力 / 相机 / SDK / 网络。
6. **M1 各项均无证据**；步兵 / 哨兵优先级未定；实车条件未登记。
7. **Main Supervisor 是否为当前唯一 Supervisor**、是否需要上级结构，未确认。

## Expected Persistence

`Auto`

Producer 不指定 `MEMORY_INDEX` 的具体行、是否写 Changelog、最终 archive 位置或 commit message。若存在语义冲突、权限问题或关键事实缺失，已在上方 `Unknowns / Conflicts` 列出——其中 **Architect / Maintainer 身份关系** 建议以 `Pending Review` 处理。
