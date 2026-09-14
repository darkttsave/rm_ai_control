# Design Evolution — v2.0 → v2.1

> v2.1 是一次**可用性 / 上下文连续性修订**，不改变 v2.0 的 RM 四问和核心工程哲学。

---

## 1. v2.0 暴露的实际问题

v2.0 已经明确：

- Human Core；
- Human–AI Gates；
- AI Autonomous Contract；
- 总监督 + 专项对话 + Work / 执行体；
- Project State / Snapshot / Brief / Return。

但真实使用时出现两个落地问题：

### A. Conversation 无法假设自动访问工作区协议

原表述如“总监督需要 Operating Model / 相关 Playbook”容易把责任隐式推给用户：用户需要自己判断并手工拼装文件。

### B. 长期对话存在不可见的上下文衰减风险

用户无法可靠知道模型是否还保有最早约定；模型也不应假设自己永久记得。

---

## 2. v2.1 修订

### Entry Layer

新增：

- `START_HERE.md`
- `entries/Supervisor_Entry.md`
- `entries/Specialist_Entry.md`
- 根目录 `AGENTS.md`

让不同角色有明确初始化入口。

### Playbook Routing

新增：

- `PLAYBOOK_INDEX.md`

Conversation 环境下由总监督指出需要的 Playbook；Workspace / Work 环境下执行体可自行读取。

### Context Health

新增：

- `operating/Context_Health.md`

不监测 token，而监测关键工作状态能否被可靠恢复；采用 Green / Yellow / Red 与 Recoverability Test。

### 主动持久化 / 交接

明确：

- 什么值得记录；
- 什么不值得记录；
- 什么事件触发重新锚定；
- 什么情况下应主动建议交接。

---

## 3. 没有改变的东西

v2.1 不改变：

- RM 工程四问；
- Safety 硬约束；
- Human Gate 的基本边界；
- Verification Levels；
- Brownfield First；
- AI 的 Scope / Evidence / Convergence Discipline；
- Playbook 的按场景性质；
- “总监督 + 专项对话 + Work / 执行体”的人工协作拓扑。

因此 v2.1 不是重新设计 Framework，而是让 v2.0 真正可在长期 RM 备赛中操作。
