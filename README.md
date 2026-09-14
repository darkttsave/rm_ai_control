# rm-ai-control

`rm-ai-control` 是 RM AI Project Manager / State Coordination Pilot 的持久控制仓库。

它保存协议基线、导航索引、正式状态输入和最小充分交接输出；它不是 RoboMaster 业务代码仓库，也不是 DSH Runtime 开发仓库。Manager 的角色是 **Control Plane / Navigator**，不是 Command Chain。

## Source of Truth

本仓库采用以下优先级：

```text
Authoritative Artifact
    > Manager Control Index
    > Conversation Summary
```

- 项目阶段、里程碑、技术决定、验证结论和用户学习状态等语义事实，只能由相应权威产物支持。
- [`control/PROJECT_CONTROL_INDEX.md`](control/PROJECT_CONTROL_INDEX.md) 只保存导航摘要与来源指针，不替代权威产物。
- Manager 可以维护路径、时间、活跃状态和 freshness 等机械状态，但不能用推断填补语义事实。
- 来源冲突时，只标记冲突并请求或读取最新权威产物，不自行调和。

## Repository Map

- [`MANAGER_CHARTER.md`](MANAGER_CHARTER.md)：Manager 的职责与边界。
- [`.agents/skills/rm-project-manager/SKILL.md`](.agents/skills/rm-project-manager/SKILL.md)：未来 Manager 执行体入口。
- [`protocol/current/`](protocol/current/)：当前 Frozen 协议的原样展开内容，只读基线。
- [`protocol/releases/`](protocol/releases/)：Manager 使用的协议 Release Packet。
- [`control/`](control/)：Control Index 和 Pilot 模板。
- [`inbox/`](inbox/)：尚待 ingest 的正式状态更新或 release packet。
- [`outbox/`](outbox/)：Manager 生成的 bootstrap packet 等输出。
- [`archive/`](archive/)：原始输入包和退出活跃流转后的历史材料。

当前协议基线是 `RM_AI_Development_Protocol_v2.3_Frozen`。其展开目录不得在本仓库内修改；原始 ZIP 保存在 [`archive/source-packages/`](archive/source-packages/)，用于完整性核验和恢复。

## DSH Pilot Boundary

本次初始化不包含 DSH 的安装、配置或开发。未来只有在获得明确授权后，DSH Pilot 才应放在 `runtime/dsh-pilot/`；该目录当前故意不存在，避免把控制仓库初始化误写成 Runtime 已启动。

## Starting Point

未来在本仓库工作的执行体先读取 [`AGENTS.md`](AGENTS.md)。Manager 恢复状态时，从 Charter、Control Index 及其中引用的权威产物开始，不依赖旧聊天记录。
