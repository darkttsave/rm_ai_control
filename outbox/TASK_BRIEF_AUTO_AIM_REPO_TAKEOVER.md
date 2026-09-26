# Task Brief — Auto-Aim Repository Takeover & Branch Isolation

```yaml
Artifact Type: Task Brief (one-shot Executor) + Bootstrap Packet
Scope: Project / Auto-Aim (P1) / One-shot Executor Task
Producer: Manager (rm-ai-control_v1.2 Navigator)
Created: 2026-09-22
Lifecycle: Pending
Semantic Authority: Supervisor Confirmed (task authorization, 2026-09-22) + Mechanical (Brief assembly)
Authoritative Source:
  - 用户转达的 Auto-Aim Main Supervisor 审批《Auto-Aim 工程下游执行体启用申请》（Approved with Constraints, 2026-09-22）
  - protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_BRIEF_TEMPLATE.md
  - archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md
  - archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md
Supersedes: None
Next Consumer: One-shot DSH Executor（经 Auto-Aim Engineering Task Coordinator 交付）
```

> Producer：Manager（`rm-ai-control_v1.2` Navigator）
>
> **本文件同时充任 Task Brief 与 v1.2 Bootstrap Packet。** 一次性 Executor 的"任务边界"与"启动上下文"是同一份交付物，**故意不分拆两份文件**——分拆会让 scope 与权限在文件之间漂移。
>
> 本包只组装上下文与指令，不产生新的项目事实、技术路线或验证结论。

## Target

- Target Role / Conversation Type: **一次性 DSH（DeepSeek Harness）Executor** —— Work / Executor 类，**仅此一轮**，任务结束即终止
- Target Execution Surface: **`Executor with repo write`**（**声明范围极窄：只允许创建本地 Git 分支；不得写入任何文件内容**）
- Management Mode: **One-shot**
- New / Continue Existing: New
- Suggested Name: `Auto-Aim Repo Takeover — one-shot executor`

**执行链**（不建立上下级）：

```text
Human / Main Supervisor
→ Auto-Aim Engineering Task Coordinator
→ One-shot DSH Executor（本 Brief 的消费方）
```

**该 Executor 不获得 Project-level authority**，不承担：`P1` / `M1` 判断；项目优先级；架构决策；学习路线判断；用户能力判断；自主扩大任务范围；`rm-ai-control` 修改权。

## Persistent Role Authority

- Persistent Role Anchor Required: **`No`**
  - 理由：Supervisor 明确本次只建立 **One-shot DSH Executor**；**暂不建立**常驻 Executor、**Persistent Role Anchor**、长期 autonomous developer role。若后续类似任务高频重复，再由 Human / Maintainer 判断是否提升为长期角色。
- Required Role Anchor: `None`
- Canonical Source: `None`
- Persistent Authority Delivery: **`Inline minimum`** —— 本 Brief **已内联全部必要内容**；该 Executor **不需要访问 `rm-ai-control`**（若需访问，说明任务边界已被扩大，应停止）
- Authority Availability at Startup: **`Verified readable`**（内联，无外部依赖）
- Required Authority Dependencies

| Authority ID | Resolved Canonical Source / Section | Required Runtime Delivery Artifact | Runtime Readability |
|---|---|---|---|
| `template:task-brief` | `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_BRIEF_TEMPLATE.md`（整个文件） | **不需要** —— Brief 内容已全部内联于本文件 | **N/A（已内联）** |
| `contract:universal-return` | `control/ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md` → `## 7. Artifact Return` → `### Universal Return Contract` | **不需要** —— Executor 不产出 Curator Packet，只产出原始执行证据 | **N/A** |

> **`template:task-brief` 的索引状态（如实标注）**：该 Authority **尚未登记于 `AUTHORITY_INDEX.md`**，已在 `PROJECT_CONTROL_INDEX.md` §6 记为 **`Pending Review`**（登记属 Authority 语义范围，须由 Human / Maintainer 确认；Canonical 文件已实测存在，62 行）。
> 按降级规则：**Manager 未猜测 Authority 文件名**，而是**实际读取**该 Canonical 文件并按其结构生成本 Brief，同时**把全部内容内联**——因此本 Brief 对该 Authority **不产生运行期依赖**。唯一未解决的是"索引登记"这一层，**不阻塞本次执行**。
> **声明边界**：本 Brief 的结构与 Canonical 模板一致，但该一致性**未经过正式 Authority 校验**（因索引未登记）。这不影响 Supervisor 的**任务授权**——授权来自 `Supervisor Confirmed`，不是来自模板。

## Execution Contract

- Repository Access: **`Read-write`，声明范围仅限：创建本地任务分支。**
  - 目标仓库 = **用户本地 Tongji Auto-Aim 工作副本**（不是 `rm-ai-control`）。
  - **不得修改任何文件内容**（详见 `Do Not`）。
- Local File Access: **`Declared paths`** —— **仅限该本地工作副本**（含其 `.git/`）；不得访问其他目录
- Git Access: **`Write / Commit (explicitly authorized)`——授权范围 = 仅创建 1 个本地分支。**
  `commit` / `amend` / `rebase` / `merge` / `cherry-pick` / `push` / `force push` / 删除 branch **均未授权**。
- Direct Persistence Permission: **`None`** —— 不得写入 `rm-ai-control`，不得更新任何 Index / Changelog
- Required User-provided Materials: 本地工作副本路径；确认该环境可执行 `git` 命令；确认可读取本 Brief
- Expected Return Channel: **`Return / Checkpoint Artifact`** —— 原始命令输出 + 风险报告，**交给 Auto-Aim Engineering Task Coordinator 审查**（不是交给 Manager）
- Destination / Responsible Writer: 本任务**不产生 `rm-ai-control` 持久状态**；如后续需要，由 Coordinator → Manager → Memory Curator 处理

Hard rules：

- **Evidence-first**：任何 branch 创建之前，必须先取得 **Pre-change Evidence**（清单见 `Scope`）。**只有确认不存在危险状态后才能创建 branch。**
- **不自行修复**：发现任何危险或不确定状态 → **`STOP → Return Evidence`**。
- **路径不代表可读**；本任务不需要任何 `rm-ai-control` 路径。
- **Destination 只表示最终归属，不代表写权限。**
- **不得声称未实际执行的验证。**

## Goal

在本轮**唯一成功标准**下完成任务：

> **仓库现状被可靠记录，并在不丢失当前 working-tree 修改的前提下完成后续任务分支隔离。**

**不包含任何源码清理或功能修改。**

## Scope

### Allowed（本任务全部授权范围）

1. 检查当前仓库身份（repo root、remote URL、预期身份 `TongjiSuperPower/sp_vision_25`）；
2. 记录当前 branch / HEAD / remote；
3. 记录 staged / modified / untracked；
4. 记录 upstream tracking 状态（**受 §Remote 限制**，见下）；
5. 检查是否存在：detached HEAD、merge、rebase、cherry-pick、bisect、unresolved conflict，以及其他可能使 branch isolation 不安全的 Git 状态；
6. **在状态安全的前提下**，从当前 HEAD 创建新的**本地**任务分支：
   - 分支名：**`task/repo-takeover`**
   - **不使用** `task/repo-cleanup`（理由：本次未批准 repository cleanup；**branch 名称必须与真实授权一致，避免 Scope Drift**。若 Human 明确坚持原名称，以 Human Decision 为准）
7. 验证 branch 创建**前后**的 working-tree 修改状态保持一致；
8. 输出 **Repository Takeover / Risk Report**；
9. **停止。**

**不得自动进入第二阶段**（不得进入源码整理、代码修改或下一任务）。

### Not in scope

- 任何源码 / YAML / launch / scripts / algorithm configuration 修改；
- repository cleanup、refactor、formatter、rename；
- commit / stash / reset / clean / rebase / merge / cherry-pick / push；
- live remote 比较（未授权 `git fetch`）；
- 修复任何发现的问题；
- 修改 `rm-ai-control`。

### Likely Files（预计触及）

**不修改任何文件。** 仅可能产生 Git 元数据变更：`.git/HEAD`、`.git/refs/heads/task/repo-takeover`。

### Build / Test Commands

**本任务没有 build / test 步骤。不得运行构建、不得编译。** 验证方式 = `git` 只读命令输出 + branch 创建后的状态复核。

### Reference Revision 的处理（重要）

当前调查参考 revision：**`bd9f5e798fa3c6dd3b483ae6627796afb41c608d`**

**它仅作为 `Investigation Reference Revision` 使用。** Executor **可以**检查：

- 当前 HEAD 是否等于该 revision；
- 当前 HEAD 与该 revision 的关系。

但**不得**：

- `reset` 到该 revision；
- `checkout` 该 revision 以覆盖当前状态；
- 将其自动认定为"本地应该恢复到的 baseline"。

**当前本地仓库已有修改**，因此 repository takeover 的目标是**记录真实现状并隔离后续工作**，**不是**强制恢复参考版本。

### Remote 状态限制（重要）

- 首轮**不授权 `git fetch`**。
- 如果只读取已有的本地 remote-tracking ref（例如 `origin/main`），**必须原样写明**：

  > This is the currently available local remote-tracking ref; freshness against the live remote is unverified.

- **不得声称**"已经确认本地 main 与远端最新 main 的关系"。
- 若 Coordinator / Human 确需 live remote comparison，应**单独**把 `git fetch origin` 纳入授权范围。
- **禁止**：`fetch --prune`、`push`、`force push`、任何 remote mutation。

### Working Tree 保留语义（重要）

> **创建新 branch 并不等于为当前 dirty working tree 创建了持久备份。**

首轮验证目标只是：

```text
Pre-switch working-tree state ≈ Post-switch working-tree state
```

即：staged 文件保持；modified 文件保持；untracked 文件保持；未发现 branch switch 导致的丢失。

**不得**把这一结果描述成"当前修改已经被安全备份"。

如果后续需要 `checkpoint commit` / `stash` / `patch bundle` / `backup branch with commit`，**必须另行申请授权**。

### Preconditions（动手前必须确认）

- 仓库身份与预期一致（`TongjiSuperPower/sp_vision_25`）；**明显不同 → STOP**；
- 工作副本可写（能创建 ref）；
- 目标分支名 `task/repo-takeover` **尚不存在**；
- HEAD 存在且不是 unborn（仓库有提交历史）。

## Why This Route

- 这是**一次性、边界极窄、可完全验证**的工程任务：只读 Git 状态 + 创建 1 个本地分支。
- 它是后续所有上游修改的**隔离前提**：没有独立 task branch，"原始同济版本 / 这次改了什么 / 怎么回去"三个问题就无法可靠回答。
- 因此**必须先记录真实现状再隔离**，且**不得**在这一步顺手做任何清理或修复。
- 交给**一次性 DSH Executor** 而非 Coordinator 亲自执行：Coordinator 是 `no-write` 的协调角色，具体执行由下游执行体完成，证据由**实际执行者**提供。

## Current Project Context

- **Primary Project**：`Auto-Aim`；**Current Stage**：`P1 — Team Legacy Assimilation & Operational Mastery`；**Current Milestone**：`M1 — Auto-Aim Baseline Reproduced`。
- **上游仓库身份（Current，已 ingest）**：`TongjiSuperPower/sp_vision_25` @ `bd9f5e798fa3c6dd3b483ae6627796afb41c608d`（只读调查）；**branch / 许可证 / 获取方式仍未登记**。
- **`M1` 证据状态**：build 项目前只有**部分证据**——单 target `cmake --build build --target auto_aim_test -j2`（来源：Code Segment Analyst Thread A Stage Checkpoint，`Role Report`）；environment / 完整 build / launch / runtime evidence 仍无。**`M1` 未宣布完成。**
- **已知的本地工作副本状态**：本地仓库**已有修改**（这也是本任务要"记录现状"而非"恢复参考版本"的原因）。
- **本任务与 `M1` 的关系**：建立 branch isolation 属工程卫生前提，**不构成 `M1` 完成证据**。

### Sources

- Supervisor 审批《Auto-Aim 工程下游执行体启用申请》（`Approved with Constraints`，2026-09-22）
- `control/dashboard/PROJECT_CONTROL_INDEX.md`、`control/memory/MEMORY_INDEX.md`（2026-09-22）
- `archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md`（`Role Report`，2026-09-21）

## Relevant Decisions / Invariants

- **授权范围 = 本 Brief 的 `Scope → Allowed` 九项**；超出即停止并返回。
- **不得自动进入第二阶段**；**完成 Return 后 STOP**。
- **不修改任何文件内容**；**不修复**发现的问题。
- **不 reset / checkout 到参考 revision**。
- **不 fetch / push / 任何 remote mutation**。
- 分支创建**≠** 备份；不得声称"已安全备份"。
- **验证状态三分**：`Observed` / `Verified by command output` / `Unverified` —— **不得替 User / Coordinator 声称未实际执行的验证**。
- 不判断 `P1` / `M1` / 项目优先级 / 架构 / 学习路线 / 用户能力。
- 不修改 `rm-ai-control`，不更新任何 Index / Changelog。

### Do Not（逐条，未获新授权前一律禁止）

修改任何 C++；修改 YAML；修改 launch；修改 scripts；修改 algorithm configuration；`reset`；`clean`；`stash`；`commit`；`amend`；`rebase`；`merge`；`cherry-pick`；`push`；`force push`；删除 branch；删除文件；丢弃修改；`rename`；formatter；repository cleanup；refactor；自动修复额外问题；修改 `rm-ai-control`。

## Relevant Learning State

`Current`（2026-09-16）：只登记 `C++ / OpenCV / ROS2`（均为限定语境的 `L4 Modify`）；**`PnP` / `EKF` / `Deep Learning` / `PID / Control` 均 `Not Registered`**。

**与本任务的关系**：**无**。本任务不涉及任何知识判断、不涉及用户能力评估；**不得**在本任务中引入任何知识结论。

### Learning State Source

- `control/knowledge/LEARNING_STATE.md`（**provenance，本 Executor 不可读也不需要**）

## Relevant Knowledge Assets

与本任务**无关**（本任务不产生、不消费任何知识资产）。

### Asset Source

- `control/knowledge/KNOWLEDGE_ASSET_INDEX.md`（**provenance，本 Executor 不可读也不需要**）

## Required Protocol / Entry Files

**本 Executor 不需要任何外部 Authority 文件。** 本 Brief 已内联全部必要内容。

**已内联的 Git 安全规则摘要**：

```text
危险状态（→ STOP + Return Evidence，不自行修复）：
  detached HEAD
  merge / rebase / cherry-pick / bisect in progress
  unresolved conflict
  目标 branch 已存在
  repository identity 与预期明显不同
  其他无法确定安全性的状态
```

## Task-specific Materials

- **A. 必须由用户提供**：本地 Tongji 工作副本路径；可执行 `git` 的运行环境；本 Brief 全文。
- **B. 不需要**：任何 `rm-ai-control` 文件。

## Current Unknowns / Gaps

- **本地工作副本的当前状态完全未知**（branch / HEAD / dirty 范围 / 是否存在特殊 Git 状态）—— 这正是本任务要采集的内容。
- **本地 HEAD 与 `bd9f5e7…` 的关系未知**。
- **remote freshness 不可验证**（未授权 `fetch`）。
- **`task/repo-takeover` 是否已存在未知**（若存在 → STOP）。
- **本地副本是否与 `TongjiSuperPower/sp_vision_25` 同一来源未验证**（只能依据 remote URL 判断）。

## User Input Still Needed

- **本地工作副本路径**（Executor 的工作目录）。
- **确认执行环境可运行 `git`**（以及 Executor 的实际权限）。
- **若远端关系重要**：是否把 `git fetch origin` 单独纳入授权（默认不纳入）。
- **分支名确认**：接受 Supervisor 建议的 `task/repo-takeover`（默认），还是 Human 明确要求 `task/repo-cleanup`。

## Stop / Human Gate Conditions

**必须 `STOP → Return Evidence`（不得自行修复）** 的情况：

- detached HEAD；
- merge / rebase / cherry-pick / bisect in progress；
- unresolved conflict；
- 目标 branch `task/repo-takeover` 已存在；
- repository identity 与预期明显不同；
- HEAD 不存在（unborn branch）；
- 无法确定工作副本可写；
- 任何其他无法确定安全性的状态。

**进一步 Human Gate**：任何需要扩大 Scope、修改文件、改变公共行为、引入 commit / stash / fetch / push 的情形 —— **停止并申请新的明确授权**。

## Suggested Opening Prompt

> 你是一次性 **DSH Executor**，只执行一个任务：**Repository Takeover & Branch Isolation**，完成后立即停止。
>
> 你的权限极窄：**声明范围只有"创建 1 个本地 Git 分支"**。不许修改任何文件内容（C++ / YAML / launch / scripts / algorithm configuration 都不行），不许 `commit` / `amend` / `rebase` / `merge` / `cherry-pick` / `push` / `force push`、不许 `reset` / `clean` / `stash`、不许删除 branch 或文件、不许 formatter / cleanup / refactor、不许自动修复发现的问题、不许碰 `rm-ai-control`。也**不授权 `git fetch`**。
>
> 顺序要求：**先取 Pre-change Evidence，再动手**。至少记录：repository root、current branch、current HEAD、remotes、branch tracking、staged、unstaged、untracked、Git special-operation state。确认不存在危险状态后，才从当前 HEAD 创建本地分支 **`task/repo-takeover`**（不要用 `task/repo-cleanup`，那超出本次授权）。
>
> 关键纪律：
> 1. 参考 revision `bd9f5e798fa3c6dd3b483ae6627796afb41c608d` **只是 Investigation Reference** —— 不许 reset 到它、不许 checkout 覆盖当前状态、不许把它当作"应该恢复的 baseline"。本地**已有修改**，目标是**记录真实现状并隔离**。
> 2. 如果只能读本地 `origin/main` 而没 fetch，必须原样写明：`This is the currently available local remote-tracking ref; freshness against the live remote is unverified.` —— 不许声称已确认与远端最新 main 的关系。
> 3. **创建 branch ≠ 给 dirty working tree 做备份。** 你只需证明 `Pre-switch working-tree state ≈ Post-switch working-tree state`（staged / modified / untracked 都保持）。**不得**说成"当前修改已被安全备份"。
> 4. 遇到 detached HEAD、merge / rebase / cherry-pick / bisect in progress、unresolved conflict、目标分支已存在、仓库身份不符、或其他无法确定安全性的状态 → **`STOP → Return Evidence`，不要自行修复**。
>
> Return 必须包含：Repository Identity（repo root / branch before / HEAD / remotes / tracking / 与参考 revision 的关系）；Working Tree Before（staged / modified / untracked / special states）；Action Performed（branch 创建命令与实际结果）；Working Tree After（与之前对照，证明未观察到丢失）；Risks / Unknowns（含 remote freshness unknown、dirty tree 仍 uncommitted、本地 baseline 与 investigation reference 不一致等）；Verification Status（严格区分 `Observed` / `Verified by command output` / `Unverified`，**不许替我声称未实际执行的验证**）。
>
> **完成 Return 后立即 STOP**，不得进入源码整理、代码修改或任何下一任务。

## Verification / Expected Return

- **Required Verification Level**：`Locally Verified`（以**命令输出**为准；本任务无 build / test / robot 验证层级）
- **Return 内容**（交 Auto-Aim Engineering Task Coordinator 审查）：

  1. **Repository Identity**：repo root、current branch before、current HEAD、remotes、tracking relationship、与 investigation reference revision 的关系
  2. **Working Tree Before**：staged / modified / untracked / special Git states
  3. **Action Performed**：branch 创建命令 + 实际得到的 branch
  4. **Working Tree After**：与创建前对照，证明**未观察到** working-tree 修改丢失
  5. **Risks / Unknowns**：含 remote freshness unknown；dirty tree still uncommitted；local baseline 与 investigation reference 不一致；其他发现
  6. **Verification Status**：严格区分 `Observed` / `Verified by command output` / `Unverified`

- **不得**：替 User / Coordinator 声称未实际执行的验证；不得宣布 `M1` 达成；不得对代码质量或项目阶段下结论。
- **完成后 STOP**，不得自动进入下一任务。

## Freshness / Confidence

- Latest source date: Supervisor 审批 2026-09-22；`PROJECT_CONTROL_INDEX` / `MEMORY_INDEX` 2026-09-22；Thread A Stage Checkpoint 2026-09-21。
- Possibly stale items: 参考 revision `bd9f5e7…` 是**调查时点**的 revision，**不等于**本地当前 HEAD；本地工作副本可能已领先或落后。
- Missing authoritative source: 本地仓库实际状态（本任务采集）；remote freshness（未授权 fetch）；`template:task-brief` 的 Authority 索引登记（`Pending Review`，不阻塞本任务）。

## Carry Forward

- **Current Goal**：记录仓库真实现状 + 在不丢失 working-tree 修改的前提下完成 task branch 隔离。
- **Verified Facts**（来源已 ingest）：上游 = `TongjiSuperPower/sp_vision_25`；调查参考 revision = `bd9f5e7…`；本地**已有修改**；`M1` build 项仅单 target 部分证据，`M1` 未完成。
- **Locked Decisions**：授权范围 = `Scope → Allowed` 九项；分支名 `task/repo-takeover`；不修改文件；不 fetch / push；不 reset 到参考 revision；branch ≠ 备份；完成后 STOP。
- **Active Constraints**：`Evidence-first`；危险状态 `STOP → Return Evidence`；验证状态三分；不碰 `rm-ai-control`。
- **Open Questions**：本地副本路径与实际状态；HEAD 与参考 revision 的关系；是否授权 `fetch`；分支名最终确认。
- **Required Materials**：本地工作副本 + `git` 运行环境 + 本 Brief。
- **First Next Step**：采集 Pre-change Evidence；确认无危险状态后创建 `task/repo-takeover`；复核 working-tree 一致性；输出 Report 并 STOP。
