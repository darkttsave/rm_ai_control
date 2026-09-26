# Template Resolution Catalog — rm-ai-control

> Status: Current navigation layer
> Scope: Template discovery, role trigger profiles, execution-surface delivery
> Semantic Authority: Human-confirmed navigation architecture; every listed Canonical Source remains authoritative for its own semantics
> Owner: rm-ai-control Maintainer（semantic mapping）/ Memory Curator（confirmed path, lifecycle and freshness maintenance）

## 1. Purpose and Boundary

本 Catalog 帮助 Manager、Maintainer 和 Repo-capable 角色完成：

```text
自然语言需求
→ 工作状态 / 角色方向
→ Artifact 类型
→ Canonical Contract / Template
→ Target Execution Surface
→ Delivery Strategy
→ Expected Return / Next Consumer
```

它不是：

- Template 正文；
- Authority；
- Capability Index；
- 要求普通 Conversation 自行读取的用户手册；
- Runtime Instance 或历史样例目录；
- 自动 Router、数据库或模板生成器。

规则：

- Canonical Source 决定语义，本 Catalog 只负责解析与导航；
- Manager 只在初始化、恢复、路由或收到显式 Template Dependency Request 时使用本 Catalog；
- 普通业务对话不由 Manager 持续监听；
- Human 不负责根据模糊文件名翻仓库；
- Frozen Protocol 文件保持原位且不可在本项目中修改。

## 2. Object and Scope Classes

### Primary Kind

| Kind | Meaning |
|---|---|
| `Output Template` | 正式 Artifact 的字段与结构 |
| `Prompt Pack` | 给 Human / Manager 使用的可复制操作提示集合 |
| `Instruction Module` | 固定交付规则，没有填空字段 |
| `Entry Rule` | Repo / Runtime / Role 启动入口 |
| `Embedded Contract` | Canonical 正文中的规则或固定结构 |
| `Embedded Fallback` | Canonical Template 不可读时使用的降级字段副本 |
| `Runtime Instance` | 已按规则装配的具体交付件 |
| `Historical Example` | 已消费或已处理的历史证据 |

### Scope Class

| Scope | Meaning |
|---|---|
| `Universal` | 跨项目 AI 管理与连续性 |
| `Domain` | Knowledge、Note、Debug、C++ 等领域方法 |
| `Project` | RM 阶段、Auto-Aim 等项目规则 |
| `Runtime` | DSH、Conversation、Cloud、Local 等交付规则 |

### Load Policy

| Policy | Meaning |
|---|---|
| `Startup Required` | 角色开始即必须拥有 |
| `Triggered` | 出现真实触发后才加载 |
| `Role-specific` | 只交付给相关角色 |
| `Project-specific` | 只交付给目标项目 |

## 3. Execution Surface Delivery

产品模式与实际权限分开记录。

| Product Mode | Default delivery | Must verify |
|---|---|---|
| `Conversation` | Inline minimum / upload / attachment；每次换对话重新交付仍需依赖 | 无仓库、Git、直接持久化；旧附件不可假定仍可读 |
| `Work Cloud` | 从已连接 Git 仓库的明确 Branch / Commit 读取 `AGENTS.md`、Catalog 和 Template | 仓库是否已连接；目标 Commit 是否已 push；写入、网络、Secret、PR 权限 |
| `Work Local` | 从本机仓库按路径读取；只加载任务相关条目 | 沙箱范围、写权限、Git 权限、当前 dirty state |
| `Other Runtime` | 按真实能力选择自足 Packet 或已验证路径 | 不根据产品名猜读写、Git、持久化或 Authority |

现行 Execution Surface 继续使用：

```text
Plain Conversation
Repo-capable Role
Executor with repo write
```

`Product Mode` 说明运行位置，`Target Execution Surface` 说明实际能力。二者都必须在 Bootstrap / Execution Contract 中声明。

## 4. Natural-language Resolution — Pilot

| Human / AI may say | Decision question | Resolve to | Canonical source |
|---|---|---|---|
| “对话太长了”“存一下进度” | 当前工作是否尚未结束？ | Stage / Specialist Checkpoint | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/STAGE_CHECKPOINT_TEMPLATE.md`](../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/STAGE_CHECKPOINT_TEMPLATE.md) |
| “总监督换个对话” | 是否仍是同一项目主线？ | Supervisor Snapshot | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/SUPERVISOR_SNAPSHOT_TEMPLATE.md`](../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/SUPERVISOR_SNAPSHOT_TEMPLATE.md) |
| “交接一下”“给下一个 AI” | 是同阶段继续、换角色、执行任务还是长期继任？ | Handoff decision first | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Handoff_Protocol.md`](../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Handoff_Protocol.md) |
| “开个专家”“让分析者看看” | 是否需要独立深分析？ | Specialist Brief | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/SPECIALIST_BRIEF_TEMPLATE.md`](../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/SPECIALIST_BRIEF_TEMPLATE.md) |
| “专项结论返回主线” | 是否已形成足够影响主线的结论？ | Specialist Return | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/SPECIALIST_RETURN_TEMPLATE.md`](../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/SPECIALIST_RETURN_TEMPLATE.md) |
| “交给执行体”“任务模板” | 方案是否已足够明确？ | Executor Task Brief | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_BRIEF_TEMPLATE.md`](../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_BRIEF_TEMPLATE.md) |
| “执行结果”“任务报告” | 是否为 Work / Executor 一轮执行结果？ | Task Report | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_REPORT_TEMPLATE.md`](../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/TASK_REPORT_TEMPLATE.md) |
| “启动新对话 / 角色” | 目标 Product Mode、Execution Surface 和 Authority 是否明确？ | Bootstrap Packet | [`templates/BOOTSTRAP_PACKET_TEMPLATE.md`](../templates/BOOTSTRAP_PACKET_TEMPLATE.md) |
| “恢复长期角色 / 权限” | 普通 Re-anchor 还是 Persistent Authority Recovery？ | Role Anchor + Recovery Instructions | [`UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](UNIVERSAL_PROJECT_AI_BEHAVIOR.md), [`templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md`](../templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md) |
| “整理笔记” | 临时整理还是长期知识资产？ | Informal output or Knowledge Note rules | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md`](../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md) |
| “入库”“持久化” | 语义是否已由相应 Authority 确认？ | Curator Update Packet → Curator | [`templates/CURATOR_UPDATE_PACKET_TEMPLATE.md`](../templates/CURATOR_UPDATE_PACKET_TEMPLATE.md) |
| “处理结果怎么样” | 是否为 Curator 处理回执？ | Curator Receipt | [`templates/CURATOR_RECEIPT_TEMPLATE.md`](../templates/CURATOR_RECEIPT_TEMPLATE.md) |

没有单一通用 `Return Template`。必须按 Producer 和 Next Consumer 选择 Specialist Return、Task Report、Stage Report、Checkpoint 或 Curator Packet。

## 5. Role Trigger Profiles — Pilot

Manager 只把目标角色相关的小段交付给下游，不传整个 Catalog。

### 5.1 Main Supervisor

- Context Health Yellow / Red → Re-anchor；必要时生成 Supervisor Snapshot；
- 下发独立深问题 → Specialist Brief；
- 下发足够明确的实现任务 → Task Brief；
- Specialist / Executor Return → 判断是否影响主线；
- 长期影响需要持久化 → Manager intake → Curator。

### 5.2 Specialist

- 同一专项未结束但换对话 → Stage Checkpoint；
- 已形成足以影响主线的结论 → Specialist Return；
- 需要实际实现 → 向上游请求 Task Brief / Executor route；
- 不把完整聊天当 Return。

### 5.3 Executor

- 开始前必须有 Task Brief、Execution Contract、Verification 和 Stop Conditions；
- 正式修改前读取目标仓库规则；
- 中断、额度不足或更换执行体 → Partial Task Report / Checkpoint；
- 完成一轮工作 → Task Report；
- 缺少正式模板或项目规范时发出 Template Dependency Request，不自行声称合规。

### 5.4 Knowledge Conversation

```text
临时整理 / 当前对话总结
→ 可直接完成，不加载正式 Note 规则

建立 / 更新 / 合并 / 替代长期知识资产
→ 读取 Knowledge Learning & Notes
→ 读取 Note Core + Style + Applicable Profile
→ 不可读时发出 Template Dependency Request
```

若意图不清，只问一次：临时整理，还是进入长期知识库。

### 5.5 Manager

- 仅在初始化、恢复、路由、显式依赖请求或 ingest 边界使用 Catalog；
- 解析后按目标表面交付并退出业务循环；
- 不持续监听下游；
- 不改变 Template、Authority 或 Catalog 语义。

### 5.6 Curator

- 接收正式 Return / Confirmed State Delta / Consumed Artifact Event / User Decision；
- 维护路径、Lifecycle、freshness、Index 和 Archive；
- 不决定模板语义或默认选择；
- 语义冲突保持 Pending Review。

## 6. Template Dependency Request

正式 Artifact 或持久化输出所需模板不可读时，下游返回：

```text
Template Dependency Request

Intent:
Required Template / Rule:
Why Required:
Current Product Mode:
Current Execution Surface:
Can Continue as Informal Draft: Yes / No
Requested Delivery: Path / Inline minimum / Attachment / Repo source
```

允许非正式草稿时，必须明确标记其未经过正式模板校验。不能降级时暂停正式输出，但普通讨论可以继续。

## 7. Canonical Registry — Pilot

| Artifact / Rule | Kind | Scope | Load | Producer → Consumer | Similar but not this | Status / note |
|---|---|---|---|---|---|---|
| Context Health / Re-anchor | Embedded Contract | Universal | Triggered | Current role → same/replacement role | Authority Recovery | Frozen Current |
| Stage Checkpoint | Output Template | Universal application | Triggered | Current conversation → replacement conversation | Report / Snapshot | Frozen Current |
| Supervisor Snapshot | Output Template | Project role | Role-specific | Supervisor → replacement Supervisor | Project State | Frozen Current |
| Handoff minimum | Embedded Contract | Universal | Triggered | Upstream → downstream | Bootstrap / Brief | Frozen Current |
| Specialist Brief | Output Template | Universal collaboration | Role-specific | Supervisor / Human → Specialist | Task Brief | Frozen Current |
| Specialist Return | Output Template | Universal collaboration | Role-specific | Specialist → Mainline | Task Report / Curator Packet | Frozen Current |
| Executor Task Brief | Output Template | Universal collaboration | Role-specific | Supervisor / Specialist → Executor | Specialist Brief / Bootstrap | Frozen Current; Authority Index dependency remains Pending Review |
| Task Report | Output Template | Universal collaboration | Role-specific | Executor → Human / upstream | Specialist Return | Frozen Current |
| Bootstrap Packet | Output Template | Runtime | Startup Required | Manager → target role / conversation | Handoff / Task Brief | Project Current |
| Authority Recovery Instructions | Instruction Module | Runtime | Role-specific | Manager → persistent role runtime | Session Bootstrap | Project Current |
| Curator Update Packet | Output Template | Universal persistence | Triggered | Producer / Manager → Curator | State Update | Project Current; registered Authority |
| Curator Receipt | Output Template | Universal persistence | Role-specific | Curator → Human / Manager | Task Report | Project Current |
| Knowledge Note rules | Embedded Contract / Playbook | Domain | Triggered | Knowledge role → formal knowledge asset | Informal note | Frozen Current; load only for long-term asset work |

## 8. Instance Navigation

| Instance state | Location / navigation |
|---|---|
| Pending dispatch | `outbox/` + `control/memory/MEMORY_INDEX.md` |
| Current project / role state | stable Current path + Control / Memory Index pointer |
| Current Role Anchor | `control/authority/role-anchors/` + Authority Index |
| Consumed dispatch | `archive/dispatches/` |
| Processed return | `archive/returns/` |
| Ingested State Update | `archive/state-updates/` |
| Candidate / disposable work | `temporary/`；不得作为稳定 Source of Truth |

## 9. Governance

### Maintainer

- 定义 Catalog Schema；
- 裁决语义映射、默认入口和相似项边界；
- 审理新增 / 改变 / 弃用；
- 不通过 Catalog 修改 Frozen Protocol。

### Manager

- 只读解析并装配交付；
- 报告 unresolved / ambiguous entry；
- 不持续参与下游业务。

### Curator

- 在语义已确认后维护路径、状态、freshness 和实例生命周期；
- 不把 Runtime Instance 晋升为 Canonical Template。

### Human

- 审理 Authority 变化、重要合并 / 弃用、语义冲突和高风险迁移。

## 10. Known Gaps / Pending Review

- `template:task-brief` 已被活跃规则依赖，但尚未登记于 `AUTHORITY_INDEX.md`；
- Pending Bootstrap 存在多代 Schema，不能按年龄推断已消费或批量覆盖；
- `BOOTSTRAP_GUIDED_DART_KNOWLEDGE_COORDINATE_FRAMES.md` 对 Plain Conversation 不自足；
- DSH Curator Runtime Entry 尚未在 `runtime/dsh-pilot/` 形成与 Manager Entry 对等的显式入口；
- State Update 与 Curator Update Packet 保持“通知 Manager”与“请求 Curator 持久化”的消费者边界，本轮不合并；
- Repository Change Request 已有实例，但当前证据不足以创建正式模板；
- 其余显式模板在试点通过后分批登记。
