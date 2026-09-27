# Specialized Task Card — Development Execution

> 使用场景：目标、Scope 和验收方式已经足够清楚，需要实现、修改、测试或交付。

## 不需要附加 Playbook 的情况

- 明确的小功能；
- 已定位的 Bug 修复；
- 参数或配置调整；
- 当前 Scope 内的测试补充；
- 不改变外部行为的局部维护。

普通开发不应为了“流程完整”强行加载所有 Playbook。

## Human 最少提供

- 当前目标与允许范围；
- 真实仓库或必要文件；
- 已知事实、接口和约束；
- Required Verification Level；
- 明确的停止条件或 Human Gate；
- 若为正式分派，提供 Task Brief；
- 若执行体无法读取仓库，实际上传或内联必要材料。

## 下游执行体应读取

- 仓库自身 README、AGENTS、构建与开发文档；
- 当前 Task Brief 或用户任务；
- AI Autonomous Contract；
- Human–AI Gates；
- Verification Levels；
- 仅在任务匹配时读取相关 Playbook。

## 什么时候切换特化卡

- 原因仍未知 → Debug / Experiment；
- 必须改变公共行为或重大架构 → Human Gate，再决定是否进入 Architecture；
- 接真实上下游或真机 → Integration Safety；
- 陌生知识已经阻塞 Modify/Diagnose → Learning / Knowledge Debt；
- 主要问题变成 C++ 工程组织 → C++ Architecture。

## 应返回

- 实际变更与范围；
- 验证证据及当前等级；
- Pending、Blocked、Unverified；
- Temporary、Debt 和残留风险；
- Task Report；
- 只有长期事实确实变化时，才提出持久化输入。

## 正式依据

- [Executor Bootstrap](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/AGENTS.md)
- [AI Autonomous Contract](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/ai/AI_Autonomous_Contract.md)
- [Human–AI Gates](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/shared/Human_AI_Gates.md)
- [Verification Levels](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/shared/Verification_Levels.md)
- [Task Brief Template](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_BRIEF_TEMPLATE.md)
- [Task Report Template](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_REPORT_TEMPLATE.md)

注意：`template:task-brief` 当前仍有 Authority Pending Review；正式使用前检查其状态。
