# Recognition Card — Persistence

> 判断对象：已产生的结果是否应该进入长期当前状态。

## 先返回上游，不立即持久化

**信号**

- Specialist 或 Executor 已返回结果；
- Human 或 Supervisor 尚未确认其长期意义；
- 结果只服务于当前判断或下一步任务。

**动作**：先由下一位消费者审查。不要因“结果很好”就直接修改长期记忆、索引或 Authority。

## 准备交给 Curator 持久化

**信号**

结果改变了项目的长期当前事实、已批准决策、稳定资产、持续待办或恢复入口。

**准备说明**

- 发生了什么变化；
- 证据或来源在哪里，并确保 Curator 实际可读；
- 影响哪些现有记录；
- 谁已批准；
- 哪个事件或对象需要持久化。

具体交付方式见：[Template Delivery Guide](../TEMPLATE_DELIVERY.md)。

Producer 或 Manager 使用 [Curator Update Packet](../../../templates/CURATOR_UPDATE_PACKET_TEMPLATE.md) 描述事件与来源；Human 默认不需要手工填写。Packet 不替代实际 Return/Artifact：来源必须作为附件、仓库可读路径或其他已验证载体一并可用。具体目录、Index、Changelog、Archive 与 Git 动作由 Curator 决定。Curator 处理后通过 [Curator Receipt](../../../templates/CURATOR_RECEIPT_TEMPLATE.md) 返回结果、落盘位置与待处理问题。

## 边界

- 聊天中的建议不是长期事实；
- Manager 负责初始化、路由和交付接口，不代替 Curator 持续维护业务状态；
- Executor、Specialist 和 Manager 不得自行修改 Authority 或宣布新 Capability 成立；
- “已返回结果”与“已完成持久化”是两个状态。
