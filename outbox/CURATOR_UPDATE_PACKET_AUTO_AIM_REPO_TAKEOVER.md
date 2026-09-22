# Curator Update Packet — One-shot DSH Executor 首轮任务（Repo Takeover）

```yaml
Artifact Type: Curator Update Packet
Scope: Project / Auto-Aim (P1) / One-shot Executor Task
Producer: Manager (rm-ai-control_v1.2 Navigator)
Created: 2026-09-22
Lifecycle: Pending
Semantic Authority: Supervisor Confirmed (任务授权) + Mechanical (Brief 组装与审核结论)
Authoritative Source:
  - 用户转达的 Auto-Aim Main Supervisor 审批《Auto-Aim 工程下游执行体启用申请》（Approved with Constraints, 2026-09-22）
  - outbox/TASK_BRIEF_AUTO_AIM_REPO_TAKEOVER.md
Supersedes: None
Next Consumer: Memory Curator
Expected Persistence: Auto
```

## What Happened

### 1. Supervisor 批准一次性下游执行体

Auto-Aim Main Supervisor 对 Coordinator 提交的《Auto-Aim 工程下游执行体启用申请》给出 **`Approved with Constraints`**：批准在 Auto-Aim P1 中为明确任务启用**一次性 DSH（DeepSeek Harness）Executor**，作为**下游工程执行体**，不获得 Project-level authority。

执行链固定为：`Human / Main Supervisor → Engineering Task Coordinator → One-shot DSH Executor`。

### 2. Manager 审核结论：**决议可落地**

Supervisor 决议的 10 节约束（首轮任务、分支改名、参考 revision 处理、Evidence-first、working tree 保留语义、remote 限制、允许 / 禁止操作、Return 要求、Lifecycle）**可逐条转成可执行 Brief**，未发现互相矛盾或无法执行的要求。Manager 据此生成正式 Task Brief：

[`../outbox/TASK_BRIEF_AUTO_AIM_REPO_TAKEOVER.md`](../outbox/TASK_BRIEF_AUTO_AIM_REPO_TAKEOVER.md)（`Produced` / `Pending Consumption`）

**设计决定**：该文件**同时充任 Task Brief 与 v1.2 Bootstrap Packet**。一次性 Executor 的"任务边界"与"启动上下文"是同一交付物，**故意不分拆**——分拆会让 scope 与权限在两份文件之间漂移。文件内含协议 `TASK_BRIEF_TEMPLATE.md` 的字段结构（含 Supervisor 认可的两项扩展），并附 v1.2 必需的 `Target` / `Persistent Role Authority` / `Execution Contract`。

### 3. Manager 在落地时补的两项（属可执行性补全，未改变授权）

1. **写明预期仓库身份**：Supervisor §4 要求"repository identity 与预期明显不同 → STOP"，但原决议未写出"预期"是什么。Brief 中明确为 **`TongjiSuperPower/sp_vision_25`**、目标为**用户本地工作副本**（不是 `rm-ai-control`），使 STOP 条件可判定。
2. **写明动手前的 Preconditions**：仓库身份一致、工作副本可写、`task/repo-takeover` 尚不存在、HEAD 非 unborn —— 使"状态不安全则 STOP"具备可枚举判据。

### 4. `template:task-brief` 的处理（**未解决项，按降级规则执行，未猜测 Authority**）

- 该 Authority **仍未登记于 `AUTHORITY_INDEX.md`**，`PROJECT_CONTROL_INDEX.md` §6 记为 **`Pending Review`**（登记属 Authority 语义范围，须由 Human / Maintainer 确认）。
- Manager **未猜测文件名**：**实际读取**了 Canonical 文件 `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_BRIEF_TEMPLATE.md`（62 行），按其结构生成 Brief，并**把全部内容内联**。
- **结论**：本 Brief 对该 Authority **不产生运行期依赖**；唯一未解决的是"索引登记"这一层，**不阻塞本次执行**。Brief 中如实标注该一致性**未经过正式 Authority 校验**（因索引未登记），并说明这**不影响 Supervisor 的任务授权**——授权来源是 `Supervisor Confirmed`，不是模板。

### 5. 授权的 Scope 保真处理

- 分支名按 Supervisor 建议采用 **`task/repo-takeover`**（不是 `task/repo-cleanup`），并在 Brief 中写明理由（本次未批准 repository cleanup）与例外条件（Human 明确坚持原名称时以 Human Decision 为准）。
- Supervisor §1 步骤 4 要求"记录 upstream tracking 状态"，但 §6 **不授权 `git fetch`** → Brief 中明确该项**只能**报告已配置的 tracking + 本地 remote-tracking ref，并**必须原样附上** Supervisor 指定的英文 caveat；**不得**声称已确认与远端最新 `main` 的关系。

### 6. 宿主说明

Supervisor 指定宿主为 **DSH**。Brief 的 Execution Contract 是**实际约束**；若改用其他 Work agent，仍须满足同一 Contract，且**变更宿主应先与 Coordinator 确认**（Manager 未自行放宽或扩大授权）。

### 7. 本轮 Manager 未执行

未执行任何仓库操作；未创建分支；未读取或修改任何 Tongji 文件；未修改 `rm-ai-control` 的状态、索引或方法论。

## Verified Authority / Sources

- **任务授权**：用户转达的 Supervisor 审批（2026-09-22）→ `Supervisor Confirmed`。
- **协议结构依据**：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_BRIEF_TEMPLATE.md`（Manager 实际读取，62 行）。
- **项目事实依据**：`control/PROJECT_CONTROL_INDEX.md`、`control/MEMORY_INDEX.md`（2026-09-22）；`archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md`（Thread A，`Role Report`，2026-09-21，`M1` build 项单 target 部分证据）。
- **模板依据**：`control/templates/BOOTSTRAP_PACKET_TEMPLATE.md`（v1.2）。

## Active Rules or State Affected

- `control/PROJECT_CONTROL_INDEX.md` §5 Pending / Awaited Events：可由 Curator 更新"Coordinator 上线与首次任务"等待项的实际状态（Brief 已发出，等待 Executor Return）。
- `control/MEMORY_INDEX.md`：Pending Outbox 概览需新增本 Task Brief。
- `control/SYSTEM_CAPABILITY_INDEX.md`：**不需要**改动（见 `Capability Impact`）。
- `control/AUTHORITY_INDEX.md`：**仍未改动**；`template:task-brief` 保持 `Pending Review`。

## Artifact Lifecycle Events

- Artifact: [`../outbox/TASK_BRIEF_AUTO_AIM_REPO_TAKEOVER.md`](../outbox/TASK_BRIEF_AUTO_AIM_REPO_TAKEOVER.md)
- Event: `Produced`
- Evidence: Supervisor `Approved with Constraints`（2026-09-22）；交付对象为一次性 DSH Executor（经 Coordinator）；`Pending Consumption`

- Artifact: `rm-ai-control` 持久状态
- Event: `Other`
- Evidence: **本任务本身不产生 `rm-ai-control` 持久状态**（不写入任何 Index / Changelog；Executor 的 Return 交 **Coordinator** 审查，不进 Manager 链路）。后续若需登记（例如 baseline / branch 事实），由 Coordinator → Manager 另行提交。

## Capability Impact

- Added: `None`
- Changed: `None`
- Deprecated: `None`
- None: 本任务复用既有 Capability（`Minimum bootstrap assembly`、`Authoritative state ingest` 等），属**一次性执行体任务**，**不新增 Capability**；一次性 Executor **不建立 Persistent Role Anchor**（Supervisor §10 明确），因此 `Persistent Authority / Long-lived Role Continuity` 的定义与状态不变。

## Must Remain Unchanged

- `RM_AI_Development_Protocol_v2.3_Frozen` 内容与语义。
- **Primary Project = Auto-Aim**；**Current Stage = `P1 — Team Legacy Assimilation & Operational Mastery`**；**Current Milestone = `M1 — Auto-Aim Baseline Reproduced`**（**未完成**；本任务**不构成** `M1` 完成证据）。
- **Learning State** 与 **Knowledge Asset Index**；**User Engineering Capability Assessment**；**Future P2**；**Guided Dart P0.5**。
- **现有各角色**：Code Framework Analyst、Code Segment Analyst（Read-only，**两个并行线程 A / B 分别登记**）、C++ Quick Knowledge、Environment Configuration Instructor、Engineering Task Coordinator（**默认 `no-write`，不因此任务获得写权限**）。
- **Tongji upstream baseline**：本任务**不改动任何文件内容**；参考 revision 仅作 Investigation Reference。
- `template:task-brief` 的 `Pending Review` 状态；`AUTHORITY_INDEX.md` 未改动。
- 不建立常驻 Executor、不建立 Persistent Role Anchor、不建立长期 autonomous developer role。

## Unknowns / Conflicts

1. **本地工作副本的实际状态未知**（branch / HEAD / dirty 范围 / 特殊 Git 状态）—— 这正是本任务要采集的内容，**不是冲突**。
2. **本地 HEAD 与参考 revision `bd9f5e7…` 的关系未知**；Brief 已明确**不得**据此 reset / checkout。
3. **remote freshness 不可验证**（未授权 `fetch`）；Brief 已强制指定 caveat。
4. **`task/repo-takeover` 是否已存在未知** → 若存在则 `STOP → Return Evidence`。
5. **分支名最终确认**：默认采纳 Supervisor 建议的 `task/repo-takeover`；Human 若坚持 `task/repo-cleanup` 需以 Human Decision 覆盖。
6. **Executor 宿主与权限未验证**：需用户确认执行环境可运行 `git` 并具备创建 ref 的权限。
7. 未发现语义冲突；**无 `Pending Review` 项**（第 1 条为待采集事实）。

## Expected Persistence

`Auto`

Producer 不指定 `MEMORY_INDEX` 的具体行、是否写 Changelog、最终 archive 位置或 commit message。请 Curator 按既有规则独立处理；其中 **Task Brief 的 `Pending Consumption` 状态**应保持，直到 Coordinator 取得明确消费证据。
