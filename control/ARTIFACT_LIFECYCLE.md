# Artifact Lifecycle — rm-ai-control_v1.1

> 薄的项目级 Artifact 生命周期规则。它管理存放、导航和持久化，不改变 Core Protocol、业务语义或角色权限。

## Lifecycle States

只使用五个基本状态：

| Lifecycle | Meaning | Normal Location |
|---|---|---|
| Draft | 尚未准备进入系统 | 生产者工作区；可在 `temporary/` 临时存在，但不可被 Current 状态引用 |
| Pending | 已返回或已产生，等待消费、审查或 ingest | 入站 `inbox/` 或出站 `outbox/` |
| Current | 当前有效的持久状态 | `control/`、`projects/` 或其他明确的稳定位置 |
| Consumed | 交接类产物已被目标角色使用 | 从 `outbox/` 移出前必须存在明确消费证据 |
| Archived | 只作为历史证据保存 | `archive/returns/`、`archive/dispatches/`、`archive/state-updates/` |

这五个状态是导航词表，不构成复杂状态机。冲突时使用 `Pending Review` 描述审查条件；其 Lifecycle 仍为 `Pending`。

## Classification Order

Memory Curator 按以下顺序判断 Artifact 身份；文件格式、模型来源和文件扩展名不是首要分类依据：

```text
Scope
→ System / Project / Role / Knowledge / Function
→ State / Checkpoint / Decision / Return / Handoff / Bootstrap / Candidate / Report
→ Lifecycle
→ Pending / Current / Historical
```

## Common Header

新 Artifact 和以后被实质触及的旧 Artifact 逐步采用 [`templates/ARTIFACT_HEADER_TEMPLATE.md`](templates/ARTIFACT_HEADER_TEMPLATE.md)。不批量改写历史文件，也不向原始证据正文注入新语义。

`Semantic Authority` 至少使用：

- `Human Confirmed`
- `Supervisor Confirmed`
- `Role Report`
- `Candidate Only`
- `Mechanical`

Header 描述权威边界，不自动让文件成为 Source of Truth。

## Inbound and Outbound Flow

```text
External role / Working Role / Conversation
→ inbox/ (Pending)
→ Memory Curator review / ingest
→ stable Current location OR archive/returns/ (Archived evidence)
```

```text
Manager / Maintainer / Role
→ outbox/ (Pending Consumption)
→ target role uses the Artifact
→ explicit consumption evidence
→ archive/dispatches/ (Archived)
```

- `inbox/` 不是长期存储。
- `outbox/` 不是历史输出仓库。
- 不得根据文件年龄、文件名或“看起来应该用过”猜测已消费。
- 已 ingest 的 `STATE_UPDATE` 继续放在 `archive/state-updates/`。

### Plain Conversation Boundary

`Plain Conversation` 默认无仓库访问、无任意本地文件读取、无 Git、无直接持久化写权限。路径只是 provenance；真正需要其阅读的内容必须内联必要摘要，或由用户粘贴、上传、作为可读取附件提供。

```text
Plain Conversation
→ Return / Checkpoint Artifact（对话内文本）
→ User / Manager
→ inbox/ or Curator Update Packet (Pending)
→ Memory Curator / Repo Operator
```

Destination 只描述最终归属，不隐含当前 Producer 的写权限。

### Curator Interface

- [`templates/CURATOR_UPDATE_PACKET_TEMPLATE.md`](templates/CURATOR_UPDATE_PACKET_TEMPLATE.md) 是推荐的 Producer / Manager → Curator 标准接口，不是硬格式门槛。
- 旧 Return / Checkpoint 没有 Packet 时仍可 ingest。
- `Expected Persistence: Auto` 表示 Curator 自行决定具体持久化动作。
- Curator 处理后使用 [`templates/CURATOR_RECEIPT_TEMPLATE.md`](templates/CURATOR_RECEIPT_TEMPLATE.md) 摘要结果与 Human Action Required。

## Stable Reference Rule

任何 `Current` 或 Authoritative Artifact 都不得永久引用 `inbox/`、`outbox/` 或 `temporary/`。

正确流程：

```text
Pending Artifact
→ review / ingest / consume
→ move to stable Current location OR the appropriate archive area
→ Current state references the stable location
```

## Current State and History

Current State 使用稳定文件名，例如：

- `PROJECT_STATE.md`
- `CHECKPOINT.md`
- `LEARNING_STATE.md`
- `KNOWLEDGE_ASSET_INDEX.md`

不要用日期或“final2 / latest_new”制造伪版本。Current 文件的历史版本主要由 Git 保存。

仍需恢复继续的角色可以维护稳定的 `CHECKPOINT.md`；更新时允许覆盖 Current 文件，由 Git 保存演化历史。已结束任务的 Return 是一次性 Artifact，不作为 Current Checkpoint。

## Eventual Consistency and Freshness

> Persistent State is eventually consistent.

系统不建立消息队列或实时同步。Current Memory / Index 应表达：

- `Last Updated`
- `Source`
- `Pending Update`

存在未 ingest Return 时，导航应同时指出：

```text
Current persisted state = X
Pending return = Y
```

## Responsibility Boundary

- Manager：用户接口、意图理解、状态查询、路由、Bootstrap、Capability Navigation 和 Gap Observation；把 Confirmed State Delta、Returned Artifact、Consumed Artifact Event、User Decision 交给 Curator。
- Memory Curator：Receive → Classify → Persist → Index → Archive；维护 Memory Index / Changelog 和机械 freshness，不创造业务事实。
- rm-ai-control Maintainer：方法论、Capability 和项目版本裁决。
- Repo Operator：跨目录、跨文件、批量引用、Git 风险或结构规则修改。

详细边界见 [`../MEMORY_CURATOR_CHARTER.md`](../MEMORY_CURATOR_CHARTER.md)。
