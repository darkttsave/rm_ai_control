# Curator Update Packet — Auto-Aim Engineering Task Coordinator 新增角色

```yaml
Artifact Type: Curator Update Packet
Scope: Project / Auto-Aim (P1) + Role (Supporting Conversation, task-level)
Producer: Manager (rm-ai-control_v1.2 Navigator)
Created: 2026-09-22
Lifecycle: Pending
Semantic Authority: Supervisor Confirmed (角色申请来源) + Mechanical (角色登记、Authority 依赖与 Artifact 指针)
Authoritative Source:
  - 用户转达的 Auto-Aim Main Supervisor 2026-09-22 新增角色申请
  - outbox/BOOTSTRAP_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md
  - control/AUTHORITY_INDEX.md
  - control/PROJECT_CONTROL_INDEX.md
Supersedes: None
Next Consumer: Memory Curator
Expected Persistence: Auto
```

## What Happened

### 1. 增量来源（真实需求）

Auto-Aim Main Supervisor 提交**新增角色申请**。来源是**已经发生的真实比赛训练工作**：

> 学长不仅要求学习和分析代码，也会**直接布置需要修改同济代码的简单工程任务**（增加调试输出、增加简单可视化、修改测试程序、增加小功能、调整已有逻辑、为调参增加观察入口，以及训练期间的临时工程需求）。

### 2. Manager 审理结论：**认可该角色，附三项限定**

**结论**：适合作为独立 `Conversation` 角色。理由是**现有四个角色都不承担"任务交付闭环"**：

| 现有角色 | 为何不覆盖 |
|---|---|
| Code Framework Analyst | 模块级 Assimilation **学习主线**，不处理学长临时任务的交付责任 |
| Code Segment Analyst | **只读**源码调查，Checkpoint 已登记 `Read-only investigation` 并禁止 commit / push / refactor |
| C++ Quick Knowledge Conversation | 仅即时 C++ 知识补缺 |
| Environment Configuration Instructor | 环境 / 构建 / 运行（写权限限环境范围） |

申请自行反对"为适应修改任务而扩大 Segment Analyst 权限"——**Manager 同意该判断**，这符合既有角色边界与"不因为路由更整齐而扩权"的原则。

**限定一（层级）**：本角色是 **Task-level**，不是 Project-level。`P1` / `M1` / `P1 Exit` / 项目优先级 / 用户能力判断**仍属 Human 与 Auto-Aim Main Supervisor**；Coordinator 向 Main Supervisor 提交 Return，不得形成"两层老板"。

**限定二（写权限）**：采用**默认 `no-write`**（`Read-only` 仓库访问 + 只读 Git）；小任务**指导用户修改**，中大型任务形成 `TASK_BRIEF` 路由下游。**不授予** Coordinator 或任何角色"大规模修改同济源码"的默认权限。若未来机制调整为授予极小写能力，Bootstrap 已写明必须保持"不因为拥有写能力就跳过任务拆解与验收"。

**限定三（upstream baseline 纪律）**：由于本角色是**决定改什么**的角色，Bootstrap 中加入最强上游纪律——任何针对同济 upstream **tracked 文件**（`source` / `launch` / `YAML` / `scripts` / `algorithm configuration`）的变更，必须先说明 `为什么必须改 / 改什么 / 影响哪个 baseline / 如何回滚` 并获**用户明确授权**；不得"顺手改"；提案应落在明确 revision / 独立工作分支上。

### 审理后的 Supervisor 决策确认（2026-09-22，由 Human 转达）

Supervisor **认可本次审理结果与三项限定**，并对 Manager 留下的 6 个开口给出决策；这些决策已刷新进 Bootstrap：

| 开口 | Supervisor 决策 | 状态 |
|---|---|---|
| 极小写权限 | **暂不授予，保持 `no-write`**；先验证"Coordinator → 用户 / Executor"模式是否真的造成摩擦 | **已关闭** |
| branch / revision | **固定 verified revision + 每个修改任务独立 `task/<具体任务>` 分支**；不在 baseline / main 上直接实验；是否 commit / push / merge 由用户按具体任务决定 | **已关闭** |
| 验收证据 | **谁实际执行，谁提供原始 evidence**：用户自己改→用户提供 build / runtime 结果；Executor 改→Executor 返回 diff + build / test / runtime evidence；Coordinator 只审查，不代替声称验证 | **已关闭** |
| 常驻 Executor | **暂不创建**；第一个真正达到"多文件 / 机械性修改较多"的任务出现时创建**一次性** Work / Executor；**反复出现后**才考虑常驻 | **已关闭** |
| `template:task-brief` | 属 **Maintainer / Authority Index** 问题，**本角色不处理**；正式登记前继续按 Bootstrap 降级路径执行 | 归属已明确（登记仍未决） |
| Segment Analyst 状态 | **已有消费证据**，应提交 Memory Curator 修正 `Pending` 状态 | **已解决**（见 `Unknowns` 第 1 条） |

**Anchor 触发条件已收紧**：Coordinator **第一次实际路由真实 tracked-source 修改任务**时，即应重新评估是否建立 Role Anchor（最终由 Human / Maintainer 决定）。

**Supervisor 冻结的项目关系**（不进入任务交付责任链的仅为知识支持支线）：

```text
Code Framework Analyst      长期模块学习
Code Segment Analyst        局部源码理解（Read-only）
        │ 源码事实
        ↓
Engineering Task Coordinator  学长工程任务闭环（Read-only / no-write）
        ├─ 小任务 → 用户修改
        └─ 大任务 → 一次性 Executor → diff/build/runtime → Coordinator 验收

C++ Quick Knowledge / Control Theory = 知识支持，不进入任务交付责任链
```

**Supervisor 建议的最小下一步**：启动 Engineering Task Coordinator 对话；暂不创建 Executor、不改变 Segment Analyst；等下一次学长真正下达修改类任务时，第一次完整跑通 `Task → Scope → Authorization → Modification → Evidence → Acceptance`，再据实际摩擦判断是否需要写权限、常驻 Executor 或 Role Anchor。

### 3. 新增 Supporting Conversation

| 角色 | 类别 | Target Execution Surface | 管理模式 | Bootstrap | 状态 |
|---|---|---|---|---|---|
| **Auto-Aim Engineering Task Coordinator**（自瞄工程任务协调对话 / 学长任务中游负责人） | Supporting Conversation（**Task-level** 交付闭环） | `Repo-capable Role`（read access；**默认 no-write**） | `Conversation` | [`../outbox/BOOTSTRAP_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md) | `Produced` / `Pending Consumption` |

固定工作循环：

```text
Task Received → Clarify Required Outcome → Inspect Relevant Source
→ Determine Scope / Risk → Choose Execution Route → Verify Evidence → Return Result
```

### 4. Persistent Role Authority 判断

- **Anchor Required: `No`（本增量）** —— 按 v1.2 规则，Supporting Conversation 默认不强制 Anchor。
- **但 Manager 记录一项保留意见**：本角色是当前三个 Supporting 角色中**最应考虑升 Anchor 的一个**，因为它是唯一持有「上游变更**路由**与**验收**」决策权的 supporting 角色。若它开始实际路由真实上游修改，或需跨会话 / 跨人长期使用，应由 **Maintainer / Human** 决定是否建立 `role:auto-aim-engineering-task-coordinator`。
- **Manager 未创建任何 Anchor**，也**未**向 `AUTHORITY_INDEX` 新增 `role:*` 条目。

### 5. Authority 依赖解析 —— **发现一个新的 unresolved dependency（需 Maintainer / Curator 裁决）**

| Authority ID | 解析结果 | 状态 |
|---|---|---|
| `contract:universal-return` | `control/UNIVERSAL_PROJECT_AI_BEHAVIOR.md` → `## 7. Artifact Return` → `### Universal Return Contract` | 已在索引；Runtime 可读性 `Unknown`（部署时验证） |
| `template:curator-update-packet` | `control/templates/CURATOR_UPDATE_PACKET_TEMPLATE.md` | 已在索引；同上 |
| **`template:task-brief`（建议 ID）** | 应为 `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_BRIEF_TEMPLATE.md` | **未登记于 `AUTHORITY_INDEX`** |

**为何这是真实缺项（而非 Manager 过度登记）**：本角色向下游 Executor 路由时**必然**依赖协议的 `TASK_BRIEF_TEMPLATE.md`；`START_HERE.md` 已把 Work 入口明确指向它（"先按 `TASK_BRIEF_TEMPLATE.md` 形成 `TASK_BRIEF.md`"），因此它**已被当前活跃规则引用**，符合索引"只登记已真实使用或已被当前活跃规则引用的 Authority"的登记条件。

**Manager 的行为**：按索引 Resolution Rule —— **缺项须报告，不靠猜测文件名补齐**。因此：
- 未擅自新增该条目；
- 在 Bootstrap 中把它标为 `Runtime Readability: Missing` + "未解析依赖（已上报）"；
- 内联了一份等价 Brief 结构作为**降级路径**，并明确要求在使用时标注"未经过正式 Authority 校验"。

**建议**（供 Maintainer / Curator 裁决，非 Manager 自决）：新增 `template:task-brief` 条目，Canonical Source = 上述 Frozen 协议模板，Section / Locator = 整个文件，Runtime Delivery Requirement = 该文件的可读副本。

### 6. 复用而非另造：`Implementation Brief` = 协议 `TASK_BRIEF` + 两项扩展

申请提出的 `Implementation Brief` 字段与协议 `TASK_BRIEF_TEMPLATE.md` 高度重叠。Manager 判断**不另造平行体系**，映射如下：

| 申请字段 | 协议 `TASK_BRIEF` 对应 |
|---|---|
| Goal | `Goal` |
| Current Evidence | `Known Facts` + `Relevant Current State` |
| Scope | `Scope`（Allowed / Not in scope） |
| Implementation Requirements | `Expected Behavior` |
| Must Remain Unchanged | `Locked Decisions / Invariants` |
| Acceptance Criteria | `Expected Behavior` + `Verification` |
| Runtime Validation | `Required Verification Level` + `Verification` |
| **Likely Files** | **协议未含 → 需小幅扩展** |
| **Build / Test Commands** | **协议未含 → 需小幅扩展** |

两项扩展先按"协议 `TASK_BRIEF` + 两个附加小节"执行；**未新建模板**。若反复证明必要，再由 **Maintainer** 决定是否提升为正式模板。

### 7. 本轮 Manager 未执行

未执行任何源码分析、环境配置或工程任务；未修改任何既有角色、主线、支线或项目状态。

## Verified Authority / Sources

- **增量来源**：用户转达的 **Auto-Aim Main Supervisor** 申请（2026-09-22）→ `Supervisor Confirmed`。
- **角色边界依据**：`control/PROJECT_CONTROL_INDEX.md` §2（四个既有角色的已登记职责）；`archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md`（2026-09-20，已 ingest）。
- **协议依据**：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_BRIEF_TEMPLATE.md`（62 行，实际读取）；`START_HERE.md` 的 Work / Executor 入口；`shared/Human_AI_Gates.md` 的 Do Not 与 Stop 条件（已内联摘要）。
- **Authority 依据**：`control/AUTHORITY_INDEX.md`（`Current`，2026-09-19，5 条）。
- **模板依据**：`control/templates/BOOTSTRAP_PACKET_TEMPLATE.md`（v1.2，含 `Persistent Role Authority` 与 `Execution Contract`）。

## Active Rules or State Affected

- `control/PROJECT_CONTROL_INDEX.md` §2 Conversation / Role Registry：需新增 **Auto-Aim Engineering Task Coordinator** 条目。
- `control/PROJECT_CONTROL_INDEX.md` §5 Pending / Awaited Events：可能需记录"下游 Repo / Work Executor 尚不存在"、"上游变更分支策略未定"、"学长任务验收方式未定"。
- `control/MEMORY_INDEX.md`：Pending Outbox 概览需新增本 Bootstrap。
- `control/AUTHORITY_INDEX.md`：**建议新增 `template:task-brief`**（见 `What Happened` §5）——**由 Maintainer / Curator 裁决**，Manager 未改动该文件。

## Artifact Lifecycle Events

- Artifact: [`../outbox/BOOTSTRAP_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md)
- Event: `Produced`
- Evidence: Main Supervisor 2026-09-22 申请，经 Manager 审理认可并附三项限定；`Pending Consumption`

- Artifact: 现有五份 Auto-Aim Bootstrap（Main Supervisor / Code Framework Analyst / Environment Instructor / Code Segment Analyst / C++ Quick Knowledge）
- Event: `Other` —— **状态不变**，仍为 `Pending Consumption`
- Evidence: 无新消费证据

## Capability Impact

- Added: `None`
- Changed: `None`
- Deprecated: `None`
- None: 本角色是 **Supporting Conversation（工作角色）**，复用既有 Capability（`Minimum bootstrap assembly`、`Role and conversation routing`、`Persistent memory and artifact curation` 等），**不新增、不改变、不弃用**任何 Capability。角色存在不等于用户已获得相应能力。

## Must Remain Unchanged

- `RM_AI_Development_Protocol_v2.3_Frozen` 内容与语义。
- **Primary Project = Auto-Aim**；**Current Stage = `P1 — Team Legacy Assimilation & Operational Mastery`**（`Stage Model: rm-ai-control Active`）；**Current Milestone = `M1 — Auto-Aim Baseline Reproduced`**。
- **Code Framework Analyst 主线**与 **Code Segment Analyst 只读边界**（**不扩权**）。
- **C++ Quick Knowledge Conversation** 与 **Control Theory Support Line**。
- **Environment Configuration Instructor** 的职责与 upstream baseline 硬规则。
- **Learning State**（`C++ / OpenCV / ROS2`；`PnP / EKF / Deep Learning / PID / Control` = `Not Registered`）与 **Knowledge Asset Index**（21 条）。
- **User Engineering Capability Assessment**；**Future P2**；**Guided Dart P0.5**（secondary / historical）。
- **Tongji upstream baseline**；既有 Role Anchor `auto-aim-code-framework-analyst` `1.1` 与 `Persistent Authority / Long-lived Role Continuity` 的 `Active` 状态。
- 不得把本 Bootstrap 当作已消费；**不得授予任何角色大规模修改同济源码的默认权限**。

## Unknowns / Conflicts

1. **状态一致性（已解决，由用户直接提交 Curator）**：Supervisor 已确认 Code Segment Analyst **已有消费证据**（其 Checkpoint 记录 `Conversation Role = Auto-Aim Code Segment Analyst`、`Role Type = Supporting Conversation`、`Repository Mode = Read-only investigation`，锁定实际仓库 revision，并已产生真实源码调查结果与后续工作）。
   → **该消费证据由用户直接提交 Memory Curator**，并请将该 Bootstrap 从 `Pending Consumption` 修正为实际已运行状态。**Manager 不代为处理**，也不再把它列为开放缺口。
2. **`template:task-brief` 未登记于 `AUTHORITY_INDEX`** → unresolved Authority dependency（见 §5）。**Supervisor 明确：属 Maintainer / Authority Index 问题，Coordinator 不处理**；正式登记前继续使用 Bootstrap 的降级路径。
3. **下游 Repo / Work Executor 不存在**：Supervisor 决定**暂不创建常驻会话**；第一个真正达到"多文件 / 机械性修改较多"的任务出现时创建**一次性** Work / Executor，**反复出现后**才考虑常驻。
4. **Coordinator 的实际仓库读取能力未验证**（首次启动时确认）。**写权限已决定：暂不授予，保持 `no-write`。**
5. **分支 / revision 策略已决定**：固定 **verified revision** + 每任务独立 `task/<具体任务>` 分支；不在 baseline / main 上直接实验；是否 commit / push / merge 由**用户**按具体任务决定。
6. **Anchor 触发条件已收紧**：Coordinator **第一次实际路由真实 tracked-source 修改任务**时，即应重新评估是否建立 Role Anchor（最终由 Human / Maintainer 决定）。
7. 未发现语义冲突；**无 `Pending Review` 项**。

## Expected Persistence

`Auto`

Producer 不指定 `MEMORY_INDEX` 的具体行、是否写 Changelog、最终 archive 位置或 commit message。上述 `Unknowns` 中第 1–5 条为事实缺口或待裁决项，请 Curator 按既有规则独立处理；其中第 2 条（Authority 条目）属 Authority 语义范围，请交 Maintainer 裁决。
