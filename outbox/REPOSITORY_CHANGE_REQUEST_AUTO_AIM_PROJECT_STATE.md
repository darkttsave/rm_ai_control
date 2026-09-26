# Repository Change Request — Auto-Aim 稳定项目状态位置

```yaml
Artifact Type: Repository Change Request
Scope: System / Repository Structure (projects/ layer)
Producer: Memory Curator
Created: 2026-09-17
Lifecycle: Pending
Semantic Authority: Mechanical（结构性缺口，不改动任何语义状态）
Authoritative Source:
  - archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md
  - control/dashboard/PROJECT_CONTROL_INDEX.md
  - control/governance/ARTIFACT_LIFECYCLE.md
  - README.md
Supersedes: None
Next Consumer: Repo Operator
```

> 本请求只涉及**存放结构**，不涉及业务语义、Capability、方法论或 Core Protocol。Memory Curator 不自行创建目录或迁移权威文件。

## 1. Request

为 `Auto-Aim`（2026-09-17 起为 Current Primary Project）建立一个**稳定的项目状态位置**，使该项目的 Current State 具备与 `projects/guided-dart/` 对等的落点。

候选形式（由 Repo Operator 裁决）：

```text
projects/auto-aim/AUTO_AIM_PROJECT_STATE.md      ← 项目状态本体（阶段 / M1 / P1 Exit / 未决项指针）
projects/auto-aim/                               ← 与 guided-dart 同构的项目作用域目录
```

命名与层级不必与上述完全一致；请求的核心是"Primary Project 拥有 `projects/` 下的稳定 Current 状态位置"。

## 2. Why — 结构性缺口（实测）

| 事实 | 证据 |
|---|---|
| `Auto-Aim` 已成为 Current Primary Project | [`../control/dashboard/PROJECT_CONTROL_INDEX.md`](../control/dashboard/PROJECT_CONTROL_INDEX.md) §1 |
| 其 Human Confirmed 阶段语义来源当前是一份**已 ingest 的入站证据**，位于 `archive/dispatches/` | [`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md`](../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md) |
| 仓库设计把 `projects/` 定义为"项目级 Current State 与权威产物"，但该目录下目前只有 `guided-dart/` | [`../README.md`](../README.md) Repository Map；`git ls-files projects/` |
| `archive/` 的既有语义是"只作为历史证据保存" | [`../control/governance/ARTIFACT_LIFECYCLE.md`](../control/governance/ARTIFACT_LIFECYCLE.md) Lifecycle States |

因此当前状态是：**Primary Project 的 Current 阶段来源落在历史证据区，且没有项目状态本体**。这不会立即造成错误（导航仍可用），但会让"Auto-Aim 当前状态在哪"依赖对一份归档 Packet 的解读，而不是一份明确的 Current 状态文件。

对照先例：跨项目知识状态的 Current 本体位于 `control/knowledge/LEARNING_STATE.md`，其 ingest 证据位于 `archive/state-updates/` —— 即"Current 本体 + 归档证据"两层结构。Auto-Aim 目前只有后者。

## 3. 本请求未做的事

- 未创建任何目录或文件于 `projects/`。
- 未迁移、未改写任何权威产物。
- 未改动 `control/governance/ARTIFACT_LIFECYCLE.md`、`SYSTEM_CAPABILITY_INDEX.md`、任何模板、Charter 或方法论。
- 未改变阶段语义：本请求只搬运"存放位置"，阶段语义已由 Human 确认并已持久化。

## 4. 可接受的裁决结果

1. **采纳**：Repo Operator 创建稳定位置并落盘初始内容；Memory Curator 随后把 `MEMORY_INDEX` / `PROJECT_CONTROL_INDEX` 的 Stage Source 指针改为该稳定路径。
2. **延后**：暂不创建，等 Auto-Aim Main Supervisor 会话建立并产出第一份真实 Checkpoint 时再建。此时当前指针维持现状（指向已归档的 ingest 证据），并在 §5 保留该缺口记录。
3. **否决并给出替代落点**：由 Repo Operator / Maintainer 指定其它稳定位置。

## 5. 当前替代状态（无需等待本请求即可工作）

- 阶段语义与 M1 定义已持久化于 [`../control/dashboard/PROJECT_CONTROL_INDEX.md`](../control/dashboard/PROJECT_CONTROL_INDEX.md) §1。
- 缺口已登记于同文件 §6，`Memory Curator` 与 `Manager` 均可导航到。
- 三份 Auto-Aim Bootstrap 仍为 `Pending Consumption`，其消费不依赖本请求。

## 6. Impact if Deferred

无阻塞性影响；风险仅限于：新 Session 恢复 Auto-Aim 状态时，需要读取一份归档 Packet 才能获得阶段语义本体，而不是读取一份明确的 Current 项目状态文件。
