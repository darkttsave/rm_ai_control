# Universal Project AI Behavior — rm-ai-control_v1.2

> 薄的项目级行为入口。它引用现有 Protocol / Manager 机制，不建立第二套 Context、Handoff、Reporting 或 State 系统。

## 1. Repository Hygiene

任何会写入仓库的 AI：

1. 任务开始先检查 `git status`，记录任务前已有修改与未跟踪文件。
2. 区分任务前状态与本任务产生的修改；未知修改默认属于用户或其他工作。
3. 不覆盖、删除、回滚或擅自提交未知用户修改；不为“保持干净”删除未知文件。
4. 修改前确认范围，稳定、已验证、边界明确的工作单元由产生该工作单元的 AI 负责提交；不要求每个小修改立即提交。
5. Commit 前检查将要提交的 diff 和文件清单，只暂存本任务范围。
6. 不提交 API Key、Token、密码、私有凭据、含 Secret 的 `.env` 或运行缓存。
7. 不默认使用 `git reset --hard`；任何可能丢失工作成果的操作都必须先确认准确目标与授权。
8. 任务结束报告 commit hash，以及所有剩余 dirty state 和其归属；不适合提交时明确说明原因。

## 2. Context Continuity

所有具备项目职责的 AI 默认维护自己的 Role-local continuity：

```text
Goal
Verified Facts
Decisions
Unknowns
Current Work
Next Step
```

维护是事件驱动的，不是每轮写“记忆”。Context 健康、重新锚定、Checkpoint、Handoff 与 Carry Forward 直接复用：

- [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Context_Health.md`](../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Context_Health.md)
- [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Handoff_Protocol.md`](../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Handoff_Protocol.md)
- [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Carry_Forward.md`](../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Carry_Forward.md)

长期正式角色使用三层连续性：

```text
Role Anchor       = 我是谁、长期必须遵守什么
Session Bootstrap = 本次为什么启动、当前任务是什么
Checkpoint        = 现在做到哪里
```

Bootstrap 不替代长期 Authority。存在正式 Role Anchor 时，Checkpoint 在既有模板内容前附加：

```text
Role Anchor ID:
Role Anchor Version:
Last Authority Verification:
```

并继续保存 `Current Goal / Verified Facts / Decisions / Unknowns / Current Work / Next Step`。临时任务没有正式 Role Anchor 时，不强制填写 Anchor 字段。

## 3. Persistent Authority

### Canonical Authority and Runtime Delivery Copy

- **Canonical Authority**：`rm-ai-control` 中版本受控的权威原文，决定 `What is correct?`。
- **Runtime Delivery Copy**：目标角色在当前运行环境中能够长期重新读取的副本，决定 `Can this role actually read it now?`。
- 两者不得混为一谈；文件路径存在不代表目标角色可读取。

Target Surface 的第一版部署映射：

| Target Surface | Persistent Authority Delivery |
|---|---|
| Short-lived Plain Chat | Inline minimum required authority |
| Long-lived Chat in ChatGPT Project | Project Instructions + Project Sources |
| Cloud Work in ChatGPT Project | Project Instructions + Project Sources |
| Local Work | Local Role Anchor |
| Repo Executor | `AGENTS.md` / startup rule + repo Role Anchor + Git |
| Temporary Specialist | Attached Anchor / other currently accessible persistent source |

这只是部署映射，不建立新 Runtime、自动同步或推送服务。

对于 ChatGPT Project / Cloud Work，Runtime Authority Delivery 由以下最小集合组成：

```text
Role Anchor
+ 本次任务实际需要的 Authority Dependency closure
+ Project-level Recovery Instructions
```

Authority dependency 通过 [`AUTHORITY_INDEX.md`](../authority/AUTHORITY_INDEX.md) 从 Authority ID / 语义名称解析到 Canonical Source、Section / Locator 和 Runtime Delivery Artifact。只交付本次任务闭包，不上传整个仓库。

例如 Code Analyst 的正式 Return 最小闭包是 Role Anchor + `UNIVERSAL_PROJECT_AI_BEHAVIOR.md` + `CURATOR_UPDATE_PACKET_TEMPLATE.md`；正式知识笔记再加入 `KNOWLEDGE_LEARNING_AND_NOTES.md`，明确使用 Project Assimilation Method 时再加入 `Project_Assimilation.md`。

### Authority Recovery Gate

拥有 Role Anchor 的长期正式角色，在以下事件必须重新读取当前 Anchor：首次启动、明显上下文恢复、长时间中断后继续、权限敏感操作、正式 Artifact 生成前、准备改变 Current State，或只能记得规则大意而不能确认原文。

```text
Locate → Read → Verify Anchor ID → Verify Version → Continue
```

聊天记忆、摘要或过去回答不能代替 Authority Verification。若 Anchor 不可读取或版本无法确认：

- 可以继续普通解释、临时讨论和非正式探索；
- 必须暂停权限敏感操作、正式 Artifact 最终化、Current State 修改，以及“符合正式规范”的声明；
- 主动报告 `Authority unavailable`。

### Artifact Promotion Gate

当输出从 `Temporary` 晋升为 `Formal / Persistent / Authoritative` 时，先检查相关 Authority：

- 没有额外 Authority → 正常 Finalize；
- 有 Authority 且当前可读 → 读取原文后 Finalize；
- 有 Authority 但不可读 → 请求恢复；若用户暂不提供，只能生成明确标记为“未经过正式 Authority 校验”的 Draft，不得作为 Current / Authoritative Artifact。

典型晋升包括 Explanation → Formal Note、Discussion → Decision Record、Investigation → Authoritative Report、Experiment → Stable SOP、Candidate → Current State、Temporary Config → Team Baseline。

## 4. Project Reporting

在真实关键节点选择已有产物，不新增平行报告体系：

- 同阶段需要恢复现场 → Checkpoint；
- 确定工作单元完成 → Task Report；
- 专项结论回主线 → Specialist Return；
- 阶段结束或移交 → Stage Report；
- 需要同步 Manager 索引 → STATE_UPDATE。

报告使用 Frozen Protocol 中现有模板，或使用 [`templates/STATE_UPDATE_TEMPLATE.md`](../templates/STATE_UPDATE_TEMPLATE.md)。长期功能变化附加 [`templates/CAPABILITY_IMPACT_TEMPLATE.md`](../templates/CAPABILITY_IMPACT_TEMPLATE.md)；没有影响时只写 `None`。

## 5. State Synchronization

- 各项目角色维护 Role-local continuity；Manager 使用 [`PROJECT_CONTROL_INDEX.md`](../dashboard/PROJECT_CONTROL_INDEX.md) 导航 Project-global state；Memory Curator 负责权威来源确定后的持久化与索引同步。
- 语义事实必须来自权威产物，遵守 `Authoritative Artifact > Memory / Control Index > Conversation Summary`。
- 关键事件通过合适的 Checkpoint、Task Report、Specialist Return、Stage Report 或 STATE_UPDATE 向外同步。
- 普通解释、无持久影响的小问题和未采纳的 brainstorm 不触发状态写入。
- Manager 的 ingest、freshness 与冲突处理遵守 [`../MANAGER_CHARTER.md`](../../MANAGER_CHARTER.md) 和 [`../.agents/skills/rm-project-manager/SKILL.md`](../../.agents/skills/rm-project-manager/SKILL.md)。

## 6. Capability Changes

- 先查 [`SYSTEM_CAPABILITY_INDEX.md`](../dashboard/SYSTEM_CAPABILITY_INDEX.md)，避免重复设计已有能力。
- 报告者只陈述有实现、验证或正式决策支持的 `Added / Changed / Deprecated`。
- Manager 可以导航 Capability 并观察有证据的 Gap；定义变化交给 rm-ai-control Maintainer 裁决、由 Repo Operator 确定性落盘。Manager 不能自行创造 Capability，也不能修改 Core Protocol。
- Core Protocol 的变化必须由 rm-ai-control Maintainer 通过正式 Protocol Release 处理。

## 7. Artifact Return

- Returned Artifact、Confirmed State Delta、Consumed Artifact Event 和 User Decision 按 [`ARTIFACT_LIFECYCLE.md`](../governance/ARTIFACT_LIFECYCLE.md) 进入 `inbox/`、稳定 Current 位置或相应 archive 区域。
- `inbox/`、`outbox/`、`temporary/` 不是 Current / Authoritative Artifact 的永久来源位置。
- 文件分类、归档、Memory Index / Changelog 和低风险生命周期维护由 Memory Curator 负责；结构变化、批量迁移与复杂 Git 工作交给 Repo Operator。

### Universal Return Contract

当角色产生需要进入持久状态的变化时，在正式 Return / Report 中附带 [`templates/CURATOR_UPDATE_PACKET_TEMPLATE.md`](../templates/CURATOR_UPDATE_PACKET_TEMPLATE.md)；由 Producer 描述“发生了什么”，不决定最终目录、Index 具体行、Changelog、Archive 或 commit message。

典型触发：

- Project Stage / Milestone、正式 Decision 或 Current Checkpoint 发生权威变化；
- Supervisor / Specialist / Work 产生需进入主线的正式 Return；
- Learning State、Knowledge Asset 或其他 Current State 发生经确认的变化；
- Artifact 已明确消费、被替代或需要生命周期处理；
- 已裁决的长期 Capability / 活跃规则变化需要持久化记录。

不触发：

- 普通解释、一般问答和无持久影响的小问题；
- 未采纳 brainstorm、候选想法或尚未确认的语义判断；
- 纯排版调整或不影响导航与恢复的机械修复。

职责：

- Artifact Producer：写清事件、Scope、来源 / 权威、影响、Unknown、Capability Impact 与已知 Lifecycle 事件；不负责决定最终目录。
- Memory Curator：独立执行 Receive → Classify → Persist → Index → Archive，并返回 [`templates/CURATOR_RECEIPT_TEMPLATE.md`](../templates/CURATOR_RECEIPT_TEMPLATE.md)。
- Human：默认不填写 Update Packet；AI 应尽量自动生成。只有语义确认、冲突或缺少关键事实时才请求 Human 介入。
