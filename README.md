# rm-ai-control_v1.2

`rm-ai-control_v1.2` 是 RM + AI 项目的持久控制仓库。它把稳定协议、系统能力导航、项目控制状态、Artifact Lifecycle、Persistent Authority、Persistent Memory 与可回退 Manager Runtime 放在同一个可维护版本体系中。

它保存协议基线、导航索引、正式状态输入和最小充分交接输出；它不是 RoboMaster 业务代码仓库，也不是 DSH Runtime 开发仓库。Manager 的角色是 **Control Plane / Navigator**，不是 Command Chain。

## Source of Truth

本仓库采用以下优先级：

```text
Authoritative Artifact
    > Memory / Control Index
    > Conversation Summary
```

- 项目阶段、里程碑、技术决定、验证结论和用户学习状态等语义事实，只能由相应权威产物支持。
- [`control/dashboard/PROJECT_CONTROL_INDEX.md`](control/dashboard/PROJECT_CONTROL_INDEX.md) 与 [`control/memory/MEMORY_INDEX.md`](control/memory/MEMORY_INDEX.md) 只保存导航摘要与来源指针，不替代权威产物。
- Manager 可以解释路径、时间、活跃状态和 freshness 等机械状态；Memory Curator 负责权威来源确定后的持久化。二者都不能用推断填补语义事实。
- 来源冲突时，只标记冲突并请求或读取最新权威产物，不自行调和。

## System Views

```text
Core Protocol
= 系统遵守什么

System Capabilities
= 系统现在会什么

Control State
= 系统现在正在做什么

Persistent Memory
= 当前有哪些持久状态、在哪里、是否新鲜

Persistent Authority
= 长期正式角色是谁、必须遵守什么、当前 Runtime 能否重新读取
```

- **Core Protocol / Stable Baseline**：[`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/`](protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/)。Frozen 保持原样；`rm-ai-control_v1.2` 是项目版本，不是 Protocol v2.4。
- **System Capabilities**：[`control/dashboard/SYSTEM_CAPABILITY_INDEX.md`](control/dashboard/SYSTEM_CAPABILITY_INDEX.md)。按能力而非文件提供用途、入口、Owner 和可用状态。
- **Control State**：[`control/dashboard/PROJECT_CONTROL_INDEX.md`](control/dashboard/PROJECT_CONTROL_INDEX.md)。保存当前项目与角色的导航摘要、freshness 和权威来源指针。
- **Persistent Memory**：[`control/memory/MEMORY_INDEX.md`](control/memory/MEMORY_INDEX.md)。导航 Current State、Pending Artifact 与 freshness，不复制事实正文。
- **Authoritative Artifacts**：真正的事实本体；Index 与 Conversation Summary 都不能替代它们。

## Repository Map

- [`MANAGER_CHARTER.md`](MANAGER_CHARTER.md)：Manager 的职责与边界。
- [`MEMORY_CURATOR_CHARTER.md`](MEMORY_CURATOR_CHARTER.md)：Memory Curator 的持久状态管理职责与边界。
- [`.agents/skills/rm-project-manager/SKILL.md`](.agents/skills/rm-project-manager/SKILL.md)：未来 Manager 执行体入口。
- [`protocol/current/`](protocol/current/)：当前 Frozen 协议的原样展开内容，只读基线。
- [`protocol/releases/`](protocol/releases/)：Manager 使用的协议 Release Packet。
- [`control/`](control/)：Project State、System Capability、Memory Navigation、Artifact Lifecycle、Universal Behavior 和控制模板。
- [`control/ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](control/ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md)：通用 AI 行为、事件驱动自维护与 Git Hygiene。
- [`control/authority/AUTHORITY_INDEX.md`](control/authority/AUTHORITY_INDEX.md)：把 Authority ID / 语义名称解析到 Canonical Source、Section 与 Runtime Delivery Artifact 的薄索引。
- [`control/ai/TEMPLATE_RESOLUTION_CATALOG.md`](control/ai/TEMPLATE_RESOLUTION_CATALOG.md)：供 Manager / Maintainer / Curator 使用的模板解析入口；按模糊需求、角色触发和执行表面定位最小交付，不替代 Canonical Template。
- [`control/authority/role-anchors/`](control/authority/role-anchors/)：长期正式角色的 Canonical Role Anchor；Runtime Delivery Copy 必须由目标环境实际可读。
- [`projects/`](projects/)：项目级 Current State 与权威产物；当前启用 `projects/guided-dart/`。
- [`inbox/`](inbox/)：外部角色 / Conversation → Memory Curator 的 Pending 入站区，不是长期存储。
- [`outbox/`](outbox/)：等待目标角色消费的正式出站区；留在这里表示 Pending Consumption。
- [`archive/`](archive/)：Historical Evidence；`returns/` 保存已处理入站，`dispatches/` 保存已消费出站，`state-updates/` 保存已 ingest State Update。
- [`temporary/`](temporary/)：Disposable Local Scratch Space；除说明文件外由 Git 忽略，不得作为稳定 Source of Truth。
- [`runtime/dsh-pilot/`](runtime/dsh-pilot/)：固定版本的 DSH 控制面运行入口；Manager 已有 live validation，Curator Entry 已实现但仍待独立 Runtime validation；运行缓存和密钥不入 Git。
- [`releases/rm-ai-control_v1.2/RELEASE_NOTES.md`](releases/rm-ai-control_v1.2/RELEASE_NOTES.md)：当前项目版本的 Release 记录。

当前项目版本是 `rm-ai-control_v1.2`；其 Core Protocol 基线仍是 `RM_AI_Development_Protocol_v2.3_Frozen`。Frozen 展开目录不得在本仓库内修改；原始 ZIP 保存在 [`archive/source-packages/`](archive/source-packages/)，用于完整性核验和恢复。

## DSH Pilot Boundary

DSH 控制面位于 [`runtime/dsh-pilot/`](runtime/dsh-pilot/)，通过同一固定版本官方 headless profile 分别启动 Manager 与 Memory Curator；两者共享 Runtime，不共享角色权限，且都不作为项目任务 Executor。不修改 DSH 源码，不开发 Plugin / Backend，也不把 DSH Session 当作状态本体。Manager 的已验证边界见 [`MANAGER_RUNTIME_STATUS.md`](runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md)，Curator 的实现与待验证边界见 [`CURATOR_RUNTIME_STATUS.md`](runtime/dsh-pilot/CURATOR_RUNTIME_STATUS.md)。

## Starting Point

未来在本仓库工作的执行体先读取 [`AGENTS.md`](AGENTS.md)。Manager 从 Control Index 导航当前工作；Memory Curator 从 Artifact Lifecycle、Memory Index 和权威产物恢复持久状态，不依赖旧聊天记录。
