# Recognition Card — Task Workflow

> 判断对象：是否要把独立研究或明确执行交给另一个工作单元。

## Specialist — 独立深挖

**信号**

- 问题边界清楚，但需要独立研究、诊断或方案比较；
- 结果用于支持主线决策，而不是接管主线；
- 可以与 Supervisor 的其他工作并行。

**提供**

- 派出：`SPECIALIST_BRIEF_TEMPLATE.md`；
- Specialist 对话续接：阶段 Checkpoint → `SPECIALIST_CHECKPOINT.md`；
- 返回主线：`SPECIALIST_RETURN_TEMPLATE.md`。

**不要**：让 Specialist 自动取得主线决策权；不要只给模糊题目而没有范围、证据要求和返回目标。

## Executor / Work — 明确执行

**信号**

- 已知道要实现、修改、测试或交付什么；
- 输入、边界、验收方式和返回对象可以明确；
- 执行者负责完成任务，不负责重新定义项目。

**提供**

- 派出：`TASK_BRIEF_TEMPLATE.md`；
- 返回：`TASK_REPORT_TEMPLATE.md`。

**当前状态提醒**

仓库中存在冻结版 Task Brief 模板，但 `template:task-brief` 在 Authority Index 中仍是待审依赖。正式使用前要确认 Authority 状态；文件存在不等于已完成晋升。

**不要**

- 不要把尚未澄清的问题伪装成执行任务；
- 不要让执行者因仓库可写而自动取得语义修改权。

## Return 与 Report

- **Specialist Return**：返回研究结论、证据、限制与建议，由主线决定如何使用。
- **Task Report**：报告明确任务的完成状态、变更、验证、残留风险与后续动作。

## 不必分派的情况

工作很小、风险低、上下文完整且当前对话可以直接完成时，不必为了形式创建 Brief。

正式依据：

- [Protocol Usage Guide](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/USAGE_GUIDE.md)
- [Template Resolution Catalog](../../../ai/TEMPLATE_RESOLUTION_CATALOG.md)
