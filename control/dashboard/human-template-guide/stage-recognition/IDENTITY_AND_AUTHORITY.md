# Recognition Card — Identity and Authority

> 判断对象：接收者是否需要初始化、恢复长期角色，或因 Authority 不可用而暂停。

## 新接收者 — Bootstrap

**信号**：接收者不知道项目、角色、任务、边界或当前入口，需要一次性初始化。

**提供**：[Bootstrap Packet Template](../../../templates/BOOTSTRAP_PACKET_TEMPLATE.md)。

Bootstrap 是交付外壳，不是连续性状态本体：

- 继续 P0/P1/P2 未完成阶段时，在 Bootstrap 中带对应 Stage Checkpoint；
- 继续 Specialist 未完成专项时，带 Specialist Checkpoint；
- Main Supervisor 换对话或实例时，带 Supervisor Snapshot；
- 阶段已经完成时，带 Stage Report，而不是重新制造 Checkpoint。

短期、一次性接收者默认不需要 Role Anchor。

## 新增长期正式角色 — Bootstrap + Role Anchor

**信号**：角色需要跨会话恢复稳定身份、职责、权限边界与依赖关系。

**动作**：提供 Bootstrap，并在 Human 审理、正式晋升后使用 Role Anchor。

设计稿、角色卡或 Proposal 不能自行升级为 Canonical Anchor。

## 恢复长期角色 — Authority Recovery

**信号**：角色已经存在，但新的对话或实例需要恢复身份和当前有效依据。

**提供**

- 已批准的 Role Anchor；
- [Project Authority Recovery Instructions](../../../templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md)。

恢复时核验 Anchor ID、版本、Authority 依赖和权限边界。

## Authority 不可用或冲突

**信号**

- 找不到当前 Authority；
- 不同来源互相冲突；
- 只有 Proposal，没有晋升证据；
- 接收者无法读取必要依据。

**动作**

可以继续非正式讨论与材料整理；暂停正式晋升、规范改写、高风险执行和代表系统作出承诺，交给 Human 裁决。

## 两条硬边界

- 仓库访问能力不等于语义修改权。
- 文件存在不等于文件已成为 Authority。
