# Bootstrap Packet — rm-ai-control Maintainer（Work Cloud runtime 续接）

```yaml
Artifact Type: Bootstrap Packet (Long-lived Role Runtime Activation / Continuation)
Scope: System / Role (rm-ai-control Maintainer) / Runtime (Work Cloud)
Producer: Manager (rm-ai-control_v1.2 Navigator)
Created: 2026-09-27
Lifecycle: Archived（`Pending Consumption → Consumed → Archived`）
Semantic Authority: Mechanical (assembled from cited stable sources; asserts no new semantic state)
Authoritative Source:
  - archive/dispatches/CURATOR_UPDATE_PACKET_HUMAN_GUIDE_AND_MAINTAINER_CLOUD_PRIORITY_2026-09-27.md（Human Confirmed；Archived）
  - control/authority/role-anchors/RM_AI_CONTROL_MAINTAINER_ROLE_ANCHOR.md（Anchor ID rm-ai-control-maintainer / Version 1.0）
  - control/dashboard/PROJECT_CONTROL_INDEX.md
  - control/memory/MEMORY_INDEX.md
  - control/authority/AUTHORITY_INDEX.md
  - control/ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md
  - control/governance/ARTIFACT_LIFECYCLE.md
  - control/dashboard/human-template-guide/delivery/WORK_CLOUD.md
  - Git read-only observation at local HEAD 451a4da8f18bbf62584137e5a509a8825bdff031
Supersedes: None
Next Consumer: rm-ai-control Maintainer Work Cloud runtime instance（当时记为 `Codex Cloud 仓库执行`；目标面此后由 Role Report 澄清为 ChatGPT Work Cloud discussion / review，见上方 Curator Archive Record）
```

> Curator Archive Record（机械性；正文未改动）
>
> - 本 Bootstrap 已由云端 runtime 消费：Role Report（[`../returns/RM_AI_CONTROL_MAINTAINER_WORK_CLOUD_RECOVERY_CHECKPOINT.md`](../returns/RM_AI_CONTROL_MAINTAINER_WORK_CLOUD_RECOVERY_CHECKPOINT.md)）`## Verified Facts` 与验收项 2 记录该 runtime 从固定 commit `e27d12c7f4bc59755e713f0d81c52fe1c92e2398` 读取并重读本文件。Lifecycle 由 `Pending Consumption` 记为 `Consumed` 并归档至 `archive/dispatches/`。
> - 本文件按当时语义**原样保留为历史证据**，不重写为当前要求。其 `Codex Cloud 仓库执行` / `Repo-capable Role` 目标面框架此后由 Role Report `## Decisions` 澄清：实际激活的是 **ChatGPT Work Cloud discussion / review runtime + GitHub-connected repository access**；Codex Cloud checkout、build / test environment 与 workspace dirty-state inspection **不是**本次激活的证据要求，也没有 Codex Cloud executor 被登记或推断。
> - 目标面措辞的 Authority 层调和仍属 Human / `rm-ai-control Maintainer` 范围。

> Producer：Manager（`rm-ai-control_v1.2` Navigator）
>
> 原则：**Minimum Sufficient Handoff + Overview + Relevant Detail。**
>
> 本包只组装已有上下文与指针，**不产生新的系统事实、阶段、Capability、Authority 或验证结论**。它**不是** Role Anchor 的替代品，也**不**创建第二个 Role Anchor 或第二个语义 Authority。

## Target

- Target Role / Conversation Type: **rm-ai-control Maintainer**（既有长期正式角色）—— Work Cloud runtime **continuation / sibling runtime**
- Product Mode: **`Work Cloud`**（Codex Cloud 仓库执行；`control/dashboard/human-template-guide/delivery/WORK_CLOUD.md` §1 "Codex Cloud 仓库执行"）
- Target Execution Surface: **`Repo-capable Role`**（云端隔离环境内可读取已连接 Git 仓库；本轮任务为恢复验证，不默认写）
- New / Continue Existing: **Continue Existing**（同一长期角色的续接运行位置，**不是**新角色）
- Suggested Name: `RM AI Control — Maintainer（Work Cloud / Codex Cloud）`

**身份边界（Human Confirmed，2026-09-27）：** 云端实例是同一长期 `rm-ai-control Maintainer` 角色的 continuation / sibling runtime；**不替代**本地 Maintainer，**不产生**第二个语义 Authority。本地 Maintainer 在云端恢复测试通过前保持 `Current`。

## Persistent Role Authority

- Persistent Role Anchor Required: **`Yes`**
- Required Role Anchor:
  - Anchor ID: **`rm-ai-control-maintainer`**
  - Required Version: **`1.0`**
- Canonical Source: `control/authority/role-anchors/RM_AI_CONTROL_MAINTAINER_ROLE_ANCHOR.md`
- Persistent Authority Delivery: **`Repo startup rule + Role Anchor + Git`**（Codex Cloud 仓库执行的最小匹配部署：`AGENTS.md` / startup rule + repo Role Anchor + Git）；若外层另用 ChatGPT Project 承载，则附加 **`Project Instructions + Project Sources`** 作为同一最小闭包的冗余交付面
- Authority Availability at Startup: **`Unknown`** —— 取决于外部 Human 动作（远程认证、目标 commit 已 push、Cloud Environment 已连接）。**路径存在不等于云端可读**，必须在 Codex Cloud 环境内实测。

### Required Authority Dependencies（本次任务最小闭包）

| Authority ID / 角色 | Resolved Canonical Source / Section | Required Runtime Delivery Artifact | Runtime Readability（云端） |
|---|---|---|---|
| `role:rm-ai-control-maintainer` | `control/authority/role-anchors/RM_AI_CONTROL_MAINTAINER_ROLE_ANCHOR.md` → 整个文件；核对 Anchor ID / Version | 同一 Role Anchor 的可读副本 | **`Unknown`** —— 云端启动时验证 |
| 仓库启动与任务边界（未登记为 Authority ID） | `AGENTS.md` → 整个文件 | 目标 commit 内可读的 `AGENTS.md` | **`Unknown`** —— 云端启动时验证 |
| `contract:universal-return` | `control/ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md` → `## 7. Artifact Return` → `### Universal Return Contract` | 该文件的可读副本 | **`Unknown`** —— 云端启动时验证 |
| `template:curator-update-packet` | `control/templates/CURATOR_UPDATE_PACKET_TEMPLATE.md` → 整个文件 | 该模板的可读副本 | **`Unknown`** —— 云端启动时验证 |
| Authority dependency 发现与解析 | `control/authority/AUTHORITY_INDEX.md` → 整个文件 | 该索引的可读副本 | **`Unknown`** —— 云端启动时验证 |
| 当前项目与持久状态恢复 | `control/dashboard/PROJECT_CONTROL_INDEX.md` + `control/memory/MEMORY_INDEX.md` | 两个索引的可读副本 | **`Unknown`** —— 云端启动时验证 |
| Artifact 生命周期与 Current / Pending / Historical 分类 | `control/governance/ARTIFACT_LIFECYCLE.md` → 整个文件 | 该文件的可读副本 | **`Unknown`** —— 云端启动时验证 |
| Runtime 恢复指令 | `control/templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md` → 整个文件 | 该 Instruction Module 的可读副本 | **`Unknown`** —— 云端启动时验证 |
| Work Cloud 交付边界（导航，非 Authority） | `control/dashboard/human-template-guide/delivery/WORK_CLOUD.md` | 该 Delivery Card 的可读副本 | **`Unknown`** —— 云端启动时验证 |

**触发式依赖（本轮不交付，出现真实触发时才解析）：**

- Capability 判断与变更边界 → `control/dashboard/SYSTEM_CAPABILITY_INDEX.md`（仅当出现有证据的 Capability 变化 / Gap 判断时）；
- Role Anchor 结构与版本规则 → `control/templates/ROLE_ANCHOR_TEMPLATE.md`（仅当拟议 Anchor 结构或版本变化时；本轮**不**修改 Anchor）；
- Core Protocol 版本与 Frozen 边界 → `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/`（仅当出现协议层维护任务时；Frozen 基线不可修改）。

> **未解析依赖（如实登记，不猜测补齐）**：`TEMPLATE_RESOLUTION_CATALOG.md` §5 Role Trigger Profiles 目前**没有** Maintainer 专属 profile（已登记 Supervisor / Specialist / Executor / Knowledge Conversation / Manager / Curator）。本包不自行发明该 profile；按 Maintainer Role Anchor 自带的 `## Authority Dependencies` 解析闭包。该项属导航层缺项，可供 Maintainer / Human 后续审理。

## Execution Contract

- Repository Access: **`Read-only`（本轮）** —— 目标仓库 `https://github.com/darkttsave/rm_ai_control.git`；用途为 Authority 恢复、状态恢复与恢复测试。
- Local File Access: `None`（云端不读取任何本机路径）
- Git Access: **`Read-only`（本轮）** —— 可读 history / branch / commit 以确认恢复基线；**不得** commit / push / 改写历史，除非 Human 对具体任务另行明确授权。
- Direct Persistence Permission: **`None`（本轮）** —— 本轮不产生 Current State 修改。
- Required User-provided Materials: **Human 提供的云端连接事实**（见 `User Input Still Needed`）：目标 branch / commit、GitHub 连接与认证方式、cloud environment 名称或来源集合、写 / PR 权限范围（本轮是否需要）。
- Expected Return Channel: **`Return / Checkpoint Artifact`** —— Maintainer Checkpoint（含 Role Anchor 字段）+ 必要时 `Curator Update Packet`；不要把"聊天里说完成了"当作状态来源。
- Destination / Responsible Writer: `rm-ai-control` 持久状态由其既有生命周期路径落盘 —— 正式 Return → **Memory Curator**（Receive → Classify → Persist → Index → Archive）；结构 / 批量迁移 / 复杂 Git → **Repo Operator**。云端 Maintainer 只描述"发生了什么"，不硬编码最终目录、Index 行、Changelog 或 commit message。

Hard rules：

- **`Repository Access ≠ Semantic Authority`**（Role Anchor `## Repository Execution Boundary`）。云端拥有仓库读取能力，**不因此获得** Core Protocol、Role Anchor、Authority、Capability、系统规则或 Business State 的修改权。
- **不创建第二个 Role Anchor，不产生第二个语义 Authority**；Anchor ID `rm-ai-control-maintainer` 与 Version `1.0` 在未经单独审理批准前**保持不变**。
- **本地 Maintainer 继续有效**；云端的启动**不**使本地实例失效，也**不**改变 `Local Current; Cloud Activation Pending`，直到远程交付与恢复测试真实通过。
- **不得**修改 `protocol/current/` Frozen 基线、Capability、Authority 语义、业务 Project Stage / Milestone、Learning State 或业务技术决定。
- **`inbox/Curator Update Packet.md` 是 ownership-unknown 的无关 pending 文件**：不得读取、修改、消费、归档或 stage（Archived Packet `## Must Remain Unchanged`）。
- **不得 stage / commit / push 任何无关 Artifact**；不得使用可能丢失成果的 Git 操作（`git reset --hard` 等）。
- **DSH Manager 与 DSH Curator 是 control-plane 角色，不是项目任务执行体**（Archived Packet `## Must Remain Unchanged`）。
- 路径只证明 provenance；下游真正必须阅读的内容以目标 commit 内实际可读副本为准。

## Template Dependencies

- Role Trigger Profile: **未登记 Maintainer 专属 profile**（见上方未解析依赖）；本轮按 Role Anchor `## Authority Dependencies` 解析，不使用其他角色的 profile。
- Templates Required at Startup: `control/templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md`（Instruction Module）；Role Anchor 原文（非 template，但为 Startup Required Authority）。
- Templates Available by Verified Repository Path: 上表全部闭包文件（本地在 HEAD `451a4da` 存在且可读；**云端可读性未验证**）。
- Templates Delivered Inline / Attached / Project Source: 若 Codex Cloud 仓库连接可用，则全部从目标 commit 读取；若外层使用 ChatGPT Project，则上述闭包作为 Project Sources 交付，**不上传整个控制仓库**。
- On-demand Template Triggers: Checkpoint → `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/STAGE_CHECKPOINT_TEMPLATE.md`（或 Maintainer Role-local Checkpoint 结构，见 `Verification / Expected Return`）；需要持久化 → `control/templates/CURATOR_UPDATE_PACKET_TEMPLATE.md`；仅当出现真实 Capability 判断 → `SYSTEM_CAPABILITY_INDEX.md`。
- Missing Dependency Behavior: `Request exact dependency | Continue as clearly marked informal draft | Stop formal output`
- Informal Fallback Allowed: `Conditional` —— 普通讨论、临时解释与明确标记的非正式 Draft 可继续；**权限敏感操作、正式 Artifact 最终化、Current State 修改与"符合正式规范"的声明必须暂停**并报告 `Authority unavailable`。

## Goal

在 Codex Cloud 仓库执行环境中**准备并激活同一长期 `rm-ai-control Maintainer` 角色的云端续接实例**：从持久仓库状态恢复 Role Anchor 与 Authority 闭包，验证云端能够长期重新读取这些 Authority 并恢复 Current State，通过一次真实恢复测试；在通过前**不得**记为迁移完成，也**不得**改变本地 Maintainer 的 Current 状态或产生第二个语义 Authority。

## Why This Route

- Human 于 2026-09-27 明确把既有 `rm-ai-control Maintainer` 迁移到 Work Cloud runtime 列为**当前系统维护最高优先级**（Human Confirmed）。
- 系统维护工作 ordering 为：① 从持久仓库状态同步 Curator 与 Manager → ② 准备并激活 Maintainer Work Cloud runtime → ③ 待迁移任务完成后才恢复 universal-function inventory / naming。
- 该项属**系统方法论与长期角色连续性**范围，是 Maintainer 自身职责；**不是**业务项目（Auto-Aim / Guided Dart）任务，也不是 DSH Plugin / Backend / Runtime 扩展开发。
- 目标 Git 仓库由 Human 选定：`https://github.com/darkttsave/rm_ai_control.git`。

## Current Project Context

只放会改变本任务判断的事实：

- **Maintainer runtime position**：`Local Current; Cloud Activation Pending`（Human Confirmed，2026-09-27）。Work Cloud 是同一长期角色的 continuation / sibling runtime，不替代本地 Maintainer，也不产生第二个语义 Authority。
- **系统维护 ordering（Human Confirmed，2026-09-27）**：① 从持久仓库状态同步 Curator 与 Manager → ② 准备并激活 Maintainer Work Cloud runtime → ③ 恢复 universal-function inventory / naming。
- **universal-function inventory 与 naming**：`Deferred` —— Human 明确 paused，**未取消、未完成**；在 Work Cloud 迁移任务完成前不得记为已完成或已放弃，也不得提前恢复。
- **Human Template Guide**：**Current Human 导航入口** = `control/dashboard/human-template-guide/START_HERE.md`（promotion commit `e5f628be3c810d83c7ea782ad9329fde8d226a03`）；它是导航，不替代 Canonical Template 或 Authority。
- **Maintainer Role Anchor**：`rm-ai-control-maintainer` / Version `1.0`，`Lifecycle: Current`，`Semantic Authority: Human Confirmed`；第1次鲸落 `Completed`，第1次鲸鸣 `PASS`。
- **`rm-ai-control Architect` vs `rm-ai-control Maintainer`**：身份关系仍为 `Pending Review`，**未调和**；Manager 与 Curator 均不得自行合并。
- **DSH Manager / DSH Curator**：control-plane 角色，**不是**项目任务执行体。
- **本地 Git 只读核验（本 Bootstrap 生成时）**：branch `main`；HEAD `451a4da8f18bbf62584137e5a509a8825bdff031`（`chore(memory): ingest human guide navigation and maintainer cloud priority`，2026-09-27T14:49:47+08:00）；`origin` fetch / push 均为 `https://github.com/darkttsave/rm_ai_control.git`；**`main` 未配置 upstream**，本地无 `origin/main` 引用；从本机执行 `git ls-remote origin` **失败**（`schannel: AcquireCredentialsHandle failed: SEC_E_NO_CREDENTIALS`）→ 本机会话**无可用凭据**，远程可达性与 pushed 状态**未验证**；工作区除未跟踪文件 `inbox/Curator Update Packet.md` 外无修改。
- **业务项目状态（与本任务无关，不得改动）**：Auto-Aim 为 Current Primary Project，`P1` / `M1`；Guided Dart 为 secondary / historical。

### Sources

- `archive/dispatches/CURATOR_UPDATE_PACKET_HUMAN_GUIDE_AND_MAINTAINER_CLOUD_PRIORITY_2026-09-27.md`（`Human Confirmed`，`Consumed → Archived`）
- `control/dashboard/PROJECT_CONTROL_INDEX.md`（Last Refreshed 2026-09-27）
- `control/memory/MEMORY_INDEX.md`（2026-09-27）
- `control/authority/AUTHORITY_INDEX.md`、`control/authority/role-anchors/RM_AI_CONTROL_MAINTAINER_ROLE_ANCHOR.md`
- `control/dashboard/human-template-guide/delivery/WORK_CLOUD.md`
- 本地 Git 只读观察（HEAD `451a4da`，2026-09-27）

## Relevant Decisions / Invariants

- **不新增 Capability 或 Authority**；本事件只改变导航可用性与维护工作 ordering。
- **Anchor ID 保持 `rm-ai-control-maintainer`，Version 保持 `1.0`**，除非单独审理并批准。
- **云端 runtime 不替代本地 runtime，也不获得更宽的 Semantic Authority**。
- **`inbox/Curator Update Packet.md`**：无关、ownership-unknown 的 pending 文件，**不得**读取 / 修改 / 消费 / 归档 / stage。
- **未通过远程交付与恢复测试前，不得记为迁移完成**；`Local Current; Cloud Activation Pending` 保持。
- **不修改** `protocol/current/` Frozen、业务 Project Stage / Milestone、Learning State、业务技术决定、Control / Memory Index。
- **不创建第二个 Role Anchor**；Bootstrap 不是长期 Authority 的替代品。
- 本地 Maintainer 与云端实例**不构成**两个语义 Authority；冲突时以 Canonical Authority 原文为准。

## Relevant Learning State

- None registered for this task —— 本任务是系统方法论 / Runtime 迁移任务，不涉及、也不得推断用户 Learning State。

### Learning State Source

- `control/knowledge/LEARNING_STATE.md`（仅 provenance；本轮不读取、不修改、不引用为任务事实）

## Relevant Knowledge Assets

- None registered for this task。

### Asset Source

- `control/knowledge/KNOWLEDGE_ASSET_INDEX.md`（仅 provenance；本轮不修改）

## Required Protocol / Entry Files

**Startup Required（云端必须先实际读取，且在当前环境中可长期重新读取）：**

1. `control/authority/role-anchors/RM_AI_CONTROL_MAINTAINER_ROLE_ANCHOR.md` —— 核对 Anchor ID `rm-ai-control-maintainer` / Version `1.0`；
2. `AGENTS.md` —— 仓库启动与任务边界；
3. `control/templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md` —— Authority Recovery 行为；
4. `control/authority/AUTHORITY_INDEX.md` —— Authority 解析规则；
5. `control/dashboard/PROJECT_CONTROL_INDEX.md` + `control/memory/MEMORY_INDEX.md` —— Current State 恢复；
6. `control/ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md`（`## 7. Artifact Return` 必读）—— 仓库写入 / Formal Artifact / Return 行为；
7. `control/governance/ARTIFACT_LIFECYCLE.md` —— 生命周期与所有权边界；
8. `control/templates/CURATOR_UPDATE_PACKET_TEMPLATE.md` —— 需要持久化时的标准接口。

**已内联的最小恢复规则（云端闭包不可读时的降级路径，须标注"未经过正式 Authority 校验"）：**

```text
Locate Canonical Anchor
→ Read full Anchor
→ Verify Anchor ID = rm-ai-control-maintainer
→ Verify Version = 1.0
→ Resolve required Authority dependency closure
→ Recover Current State from authoritative sources
→ Check repository status
→ Continue
```

- Authority 不可读 / 版本无法确认时：普通讨论、临时解释、非正式探索与 Draft 可继续；**权限敏感操作、正式 Artifact 最终化、Current State 修改、正式合规声明必须暂停**，并主动报告 `Authority unavailable`。
- `Authoritative Artifact > Memory / Control Index > Conversation Summary`；不得用聊天记忆、摘要或过去回答替代 Anchor 原文。
- `Repository Access ≠ Semantic Authority`；`Repo-capable` 只表示执行能力。

## Task-specific Materials

- **A. 必须由 Human / 云端环境提供**：已连接 GitHub 的仓库与目标 `branch` / `commit`；cloud environment 配置（依赖 / 工具 / 变量 / 允许的 Secret）；启动时该环境的实际读写 / Git / 网络权限。
- **B. provenance（本机路径，云端不可读）**：本包中所有 `control/…`、`protocol/…`、`archive/…` 路径。

## Current Unknowns / Gaps

- **远程仓库可达性与认证**：未验证（本机 `git ls-remote` 因无凭据失败）。
- **目标 commit 是否已 push**：未验证（`main` 无 upstream，本地无 `origin/main`；HEAD `451a4da` 可能仅为本地 commit）。
- **Cloud Environment 是否已连接正确 repository / environment**：未验证。
- **云端恢复测试**：未执行。
- **云端实际读 / 写 / Git / 网络 / Secret / PR 权限范围**：未验证。
- **`TEMPLATE_RESOLUTION_CATALOG.md` §5 无 Maintainer 专属 Role Trigger Profile**：导航层缺项，已登记，未自行发明。
- **DSH Curator live runtime validation**：`runtime/dsh-pilot/CURATOR_RUNTIME_STATUS.md` 中仍记为 `Pending`，与本事件无关，本轮不得当作已验证。
- **`rm-ai-control Architect` 身份关系**：`Pending Review`，未调和。

> 以上 Unknown 均**不**构成迁移完成的否定结论，也不得被写成"已通过"；它们只说明**恢复测试的前置条件尚未满足**。

## User Input Still Needed

- 云端应使用哪个 **repository / branch / commit**（并确认该 commit 已 push 到 `https://github.com/darkttsave/rm_ai_control.git`）。
- **GitHub 连接与认证方式**（账号 / 连接应用 / 凭据范围），以及是否允许云端访问该仓库。
- **cloud environment** 的名称、来源集合、依赖与工具配置；是否允许网络与 Secret。
- 本轮是否授予**写 / commit / PR 权限**（默认 `None`；未明确授权时保持只读）。
- 由**谁**执行 push 与云端环境配置（Manager 不执行 push，也不代为配置云端）。
- 恢复测试的**验收方式**：由谁判定、以什么 Return Artifact 作为证据。

## Suggested Opening Prompt

> 你是 **rm-ai-control Maintainer**，现在在 **Work Cloud（Codex Cloud 仓库执行）** 环境中作为该长期角色的 **continuation / sibling runtime** 启动。你不是新角色，也不产生第二个语义 Authority；本地 Maintainer 仍然有效。
>
> 启动顺序（不要跳步）：
> 1. 读取 `control/authority/role-anchors/RM_AI_CONTROL_MAINTAINER_ROLE_ANCHOR.md` 原文，核对 **Anchor ID = `rm-ai-control-maintainer`、Version = `1.0`**；
> 2. 读取 `AGENTS.md`、`control/ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md`、`control/governance/ARTIFACT_LIFECYCLE.md`、`control/authority/AUTHORITY_INDEX.md`、`control/templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md`；
> 3. 从 `control/dashboard/PROJECT_CONTROL_INDEX.md` 与 `control/memory/MEMORY_INDEX.md` 恢复 Current State；
> 4. 报告你实际取到的 git branch / commit，并确认它来自**已 push** 的提交。
>
> 需要恢复的当前事实（引用来源，不要延伸）：Maintainer runtime = `Local Current; Cloud Activation Pending`；Work Cloud 迁移是当前系统维护最高优先级；universal-function inventory / naming 为 `Deferred`（未取消、未完成）；Human Template Guide 是 Current Human 导航；DSH Manager 与 Curator 是 control-plane 角色，不是任务执行体。
>
> 硬边界：不创建第二个 Role Anchor；不修改 Anchor ID / Version；不修改 `protocol/current/` Frozen、Capability、Authority、业务 Stage / Milestone、Learning State；`inbox/Curator Update Packet.md` 无关，不读、不改、不消费、不归档、不 stage；未获明确授权不 commit / push；`Repository Access ≠ Semantic Authority`。
>
> 如果 Anchor 或任何必需 Authority 不可读 / 版本无法确认：继续普通讨论可以，但**暂停**权限敏感操作、正式 Artifact 最终化与 Current State 修改，并报告 `Authority unavailable`。
>
> 完成后返回 **Maintainer Checkpoint**（含 `Role Anchor ID / Version / Last Authority Verification` + `Goal / Verified Facts / Decisions / Unknowns / Current Work / Next Step`），并逐条给出下方"云端恢复验收标准"的实测结果（`PASS / FAIL / Not Verified`）。**不得**在验收通过前声称迁移完成。

## Verification / Expected Return

- Return Type / Template: **Maintainer Checkpoint**（Role-local continuity，附加 Anchor 字段）；如产生需进入持久状态的系统事件，附 **`Curator Update Packet`**（`control/templates/CURATOR_UPDATE_PACKET_TEMPLATE.md`）。
- Minimum Required Fields（Checkpoint）:
  - `Role Anchor ID`
  - `Role Anchor Version`
  - `Last Authority Verification`
  - `Goal`
  - `Verified Facts`
  - `Decisions`
  - `Unknowns`
  - `Current Work`
  - `Next Step`
- Next Consumer: **Manager**（导航与 ingest）→ **Memory Curator**（持久化 / 索引 / 归档）；结构 / 批量迁移 / 复杂 Git → **Repo Operator**。
- Persistence Route: `Manager → Curator`（正式事件）；云端 Maintainer 不自行决定最终目录、Index 行、Changelog、Archive 或 commit message。

### 云端恢复验收标准（Cloud Recovery Acceptance Criteria）

全部为 **实测项**；任一项未通过，迁移即**未完成**，状态保持 `Local Current; Cloud Activation Pending`。

| # | 验收项 | 通过判据 |
|---|---|---|
| 1 | 仓库连接与版本 | Cloud Environment 实际连接到 `https://github.com/darkttsave/rm_ai_control.git`，并在一个**已 push** 的 branch / commit 上工作；报告可定位的 branch + commit hash（**不得**为仅本地的 commit） |
| 2 | Authority 闭包完整 | 目标 commit 内 `AGENTS.md` 与上表全部 Startup Required 文件均存在且可读 |
| 3 | Anchor 身份核对 | 云端读取 Role Anchor **原文**并核对 `Anchor ID = rm-ai-control-maintainer`、`Version = 1.0` 成功 |
| 4 | Authority 可重新读取 | 所交付的每一份 Runtime Delivery Artifact 可在**同一云端环境内重新读取**（不是一次性附件、不是聊天内粘贴） |
| 5 | Current State 恢复 | 云端能复述并引用来源：`Local Current; Cloud Activation Pending`；Work Cloud 迁移为最高系统维护优先级；inventory / naming `Deferred`；Human Template Guide 为 Current Human 导航；Manager / Curator 为 control-plane |
| 6 | 单一语义 Authority | 未创建第二个 Role Anchor、未产生第二个语义 Authority；Anchor ID / Version 未变；本地 Maintainer 仍为 Current |
| 7 | 无越界修改 | 未修改 `protocol/current/` Frozen、Capability、Authority 语义、业务 Stage / Milestone、Learning State；未触碰 `inbox/Curator Update Packet.md`；工作区除本任务范围外无 dirty state |
| 8 | 恢复 Return | 产出含上述 9 个字段的 Maintainer Checkpoint，并经 Return 路径交回 Manager → Curator；验收结果逐项标注 `PASS / FAIL / Not Verified` |
| 9 | 失败行为正确 | 任一 Authority 不可读 / 版本不可确认时，云端正确报告 `Authority unavailable` 并暂停正式操作，而不是猜测补全 |

> 本 Manager session **不能**代替云端执行上述验收；上表是交回判定的验收契约，不是已验证结果。

## Freshness / Confidence

- Latest source date: 2026-09-27（Human Confirmed priority packet；`PROJECT_CONTROL_INDEX` / `MEMORY_INDEX` 同步于同日）。本地 Git 只读核验：2026-09-27，HEAD `451a4da8f18bbf62584137e5a509a8825bdff031`。
- Possibly stale items: Maintainer runtime position 与维护 ordering 目前只由 Human Confirmed 的 Archived Packet + 两个索引承载（**稳定 Maintainer runtime status 位置尚未建立**，见 `MEMORY_INDEX`）；`runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md` 记录时间为 2026-09-14。
- Missing authoritative source: 远程可达性 / 认证 / pushed commit / Cloud Environment 连接 / 恢复测试**均无权威证据**；`TEMPLATE_RESOLUTION_CATALOG` 无 Maintainer 专属 Trigger Profile；`rm-ai-control Architect` 身份关系 `Pending Review`。

## Carry Forward

下游必须保留：

- **Current Goal**：在 Codex Cloud 仓库执行环境中准备并激活同一长期 `rm-ai-control Maintainer` 角色的云端续接实例，并通过云端恢复验收。
- **Verified Facts**：Role Anchor `rm-ai-control-maintainer` / `1.0` 为 Current；Maintainer runtime = `Local Current; Cloud Activation Pending`；Work Cloud 迁移为当前系统维护最高优先级；inventory / naming `Deferred`；Human Template Guide 为 Current Human 导航；DSH Manager / Curator 为 control-plane，不是任务执行体；目标仓库 = `https://github.com/darkttsave/rm_ai_control.git`；本地 HEAD `451a4da`，`main` 无 upstream，远程认证未验证。
- **Locked Decisions**：不创建第二个 Role Anchor / 第二个语义 Authority；Anchor ID / Version 不变；云端不替代本地；未通过恢复测试前不记为迁移完成；`Repository Access ≠ Semantic Authority`；默认只读、无明确授权不 commit / push；`inbox/Curator Update Packet.md` 不读 / 不改 / 不 stage；不改 Frozen / Capability / Authority / 业务状态 / Learning State。
- **Active Constraints**：Authority Recovery Gate 与 Artifact Promotion Gate；`Authoritative Artifact > Memory / Control Index > Conversation Summary`；路径不代表可读；Destination 不代表写权限。
- **Open Questions**：远程认证与可达性；目标 branch / commit 与是否已 push；Cloud Environment 配置与权限；恢复测试验收人。
- **Required Materials**：目标 repository / branch / commit；GitHub 连接与认证；cloud environment 配置；本轮权限范围。
- **First Next Step**：由 Human 完成远程认证与 push、创建并配置 Cloud Environment；随后云端 Maintainer 按上表 9 项执行恢复验收并返回 Checkpoint。Manager 不执行 push，也不代为配置云端。
