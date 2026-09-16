# Universal Project AI Behavior — rm-ai-control_v1.1

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

- [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Context_Health.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Context_Health.md)
- [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Handoff_Protocol.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Handoff_Protocol.md)
- [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Carry_Forward.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Carry_Forward.md)

## 3. Project Reporting

在真实关键节点选择已有产物，不新增平行报告体系：

- 同阶段需要恢复现场 → Checkpoint；
- 确定工作单元完成 → Task Report；
- 专项结论回主线 → Specialist Return；
- 阶段结束或移交 → Stage Report；
- 需要同步 Manager 索引 → STATE_UPDATE。

报告使用 Frozen Protocol 中现有模板，或使用 [`templates/STATE_UPDATE_TEMPLATE.md`](templates/STATE_UPDATE_TEMPLATE.md)。长期功能变化附加 [`templates/CAPABILITY_IMPACT_TEMPLATE.md`](templates/CAPABILITY_IMPACT_TEMPLATE.md)；没有影响时只写 `None`。

## 4. State Synchronization

- 各项目角色维护 Role-local continuity；Manager 使用 [`PROJECT_CONTROL_INDEX.md`](PROJECT_CONTROL_INDEX.md) 导航 Project-global state；Memory Curator 负责权威来源确定后的持久化与索引同步。
- 语义事实必须来自权威产物，遵守 `Authoritative Artifact > Memory / Control Index > Conversation Summary`。
- 关键事件通过合适的 Checkpoint、Task Report、Specialist Return、Stage Report 或 STATE_UPDATE 向外同步。
- 普通解释、无持久影响的小问题和未采纳的 brainstorm 不触发状态写入。
- Manager 的 ingest、freshness 与冲突处理遵守 [`../MANAGER_CHARTER.md`](../MANAGER_CHARTER.md) 和 [`../.agents/skills/rm-project-manager/SKILL.md`](../.agents/skills/rm-project-manager/SKILL.md)。

## 5. Capability Changes

- 先查 [`SYSTEM_CAPABILITY_INDEX.md`](SYSTEM_CAPABILITY_INDEX.md)，避免重复设计已有能力。
- 报告者只陈述有实现、验证或正式决策支持的 `Added / Changed / Deprecated`。
- Manager 可以导航 Capability 并观察有证据的 Gap；定义变化交给 rm-ai-control Maintainer 裁决、由 Repo Operator 确定性落盘。Manager 不能自行创造 Capability，也不能修改 Core Protocol。
- Core Protocol 的变化必须由 rm-ai-control Maintainer 通过正式 Protocol Release 处理。

## 6. Artifact Return

- Returned Artifact、Confirmed State Delta、Consumed Artifact Event 和 User Decision 按 [`ARTIFACT_LIFECYCLE.md`](ARTIFACT_LIFECYCLE.md) 进入 `inbox/`、稳定 Current 位置或相应 archive 区域。
- `inbox/`、`outbox/`、`temporary/` 不是 Current / Authoritative Artifact 的永久来源位置。
- 文件分类、归档、Memory Index / Changelog 和低风险生命周期维护由 Memory Curator 负责；结构变化、批量迁移与复杂 Git 工作交给 Repo Operator。
