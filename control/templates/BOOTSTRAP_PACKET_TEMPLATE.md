# Bootstrap Packet

> Producer：Manager
>
> Consumer：新的 / 续接的 Conversation、Specialist 或 Work
>
> 原则：**Minimum Sufficient Handoff + Overview + Relevant Detail。**

## Target

- Target Role / Conversation Type:
- Product Mode: `Conversation | Work Cloud | Work Local | Other: ...`
- Target Execution Surface: `Plain Conversation | Repo-capable Role | Executor with repo write`
- New / Continue Existing:
- Suggested Name:

`Product Mode` 说明运行位置，`Target Execution Surface` 说明实际能力。二者不能互相替代。Execution Surface 只区分上述三类通用环境，不建立更复杂的 Runtime taxonomy。`Repo-capable Role` 必须另行声明实际可读范围；除非明确授权，不得假设其可写。

## Persistent Role Authority

- Persistent Role Anchor Required: `Yes | No`
- Required Role Anchor:
  - Anchor ID:
  - Required Version:
- Canonical Source:
- Persistent Authority Delivery: `Inline minimum | Project Instructions + Project Sources | Local Role Anchor | Repo startup rule + Role Anchor | Attached Anchor | Other: ...`
- Authority Availability at Startup: `Verified readable | User must provide / attach | Unknown`
- Required Authority Dependencies:
  - Authority ID:
  - Resolved Canonical Source / Section:
  - Required Runtime Delivery Artifact:
  - Runtime Readability: `Verified | Missing | Unknown`

短期临时任务不强制创建 Anchor。需要 Anchor 时，Bootstrap 只引用 Anchor ID / Version 和交付方式，不复制 Anchor 全文，也不把 Bootstrap 当作长期 Authority 替代品。依赖项通过 [`../AUTHORITY_INDEX.md`](../AUTHORITY_INDEX.md) 解析，只列本次任务需要的 closure。

## Execution Contract

- Repository Access: `None | Read-only (declare scope) | Read-write (declare scope)`
- Local File Access: `None | User-provided attachments only | Declared paths`
- Git Access: `None | Read-only | Write / Commit (explicitly authorized)`
- Direct Persistence Permission: `None | Declared scope`
- Required User-provided Materials: `None | Upload / paste / attach: ...`
- Expected Return Channel: `Return / Checkpoint Artifact | Direct repository change | Other: ...`
- Destination / Responsible Writer:

Hard rules:

- 路径不代表可读。下游真正必须阅读的内容，必须内联最小必要摘要，或由用户粘贴 / 上传 / 作为该对话可读附件提供。
- Destination 只表示最终归属，不代表当前下游拥有写权限；必须明确最终由谁落盘。
- `Plain Conversation` 默认无仓库访问、无任意本地文件读取、无 Git、无直接持久化写权限。它只产出 Return / Checkpoint Artifact，再经 Manager → Memory Curator / Repo Operator 进入持久状态。
- Canonical Source 的路径只证明 provenance；Manager 必须验证目标 Runtime 能否实际读取相应 Runtime Delivery Copy。

Plain Conversation 自足性判据：

> 如果移除所有不可访问的仓库 / 本地路径后，下游已无法理解任务或完成主要工作，该 Bootstrap 不合格。

## Template Dependencies

- Role Trigger Profile:
- Templates Required at Startup:
- Templates Available by Verified Repository Path:
- Templates Delivered Inline / Attached / Project Source:
- On-demand Template Triggers:
- Missing Dependency Behavior: `Request exact dependency | Continue as clearly marked informal draft | Stop formal output`
- Informal Fallback Allowed: `Yes | No | Conditional: ...`

解析模板时使用 [`../TEMPLATE_RESOLUTION_CATALOG.md`](../TEMPLATE_RESOLUTION_CATALOG.md)。不要把完整 Catalog 交给下游；只交付当前角色相关的 Trigger Profile 和本次需要的模板。

正式 Artifact、持久化输出或声称符合正式规范的工作开始前，必须确认所需 Template / Authority 实际可读。不可读时，下游应返回：

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

普通讨论、临时整理和明确标记的非正式草稿不因“可能有模板”而强制加载完整规则。

## Goal

这次对话 / 角色要解决什么？

## Why This Route

为什么应该进入这个角色 / 对话，而不是留在当前入口？

## Current Project Context

只放会改变本任务判断的项目事实：

- 

### Sources

- 

## Relevant Decisions / Invariants

- 

## Relevant Learning State

只放本任务真正相关部分：

- 

### Learning State Source

- 

## Relevant Knowledge Assets

- 

### Asset Source

- 

## Required Protocol / Entry Files

- 

不要因为“可能有用”把整个协议全部塞进来。对 `Plain Conversation`，路径只是 provenance；在本节内联完成任务所需的最小规则，或明确要求用户提供必需原文。

## Task-specific Materials

- 

## Current Unknowns / Gaps

- 

## User Input Still Needed

如果 Manager 不能替用户决定，明确留空：

- 

## Suggested Opening Prompt

> <生成一段简短、可直接交给目标对话的开场提示词。>

## Verification / Expected Return

目标对话结束后，应该回什么：

- Return Type / Template:
- Minimum Required Fields:
- Next Consumer:
- Persistence Route: `None | Manager → Curator | Repo-capable writer | Other: ...`

## Freshness / Confidence

- Latest source date:
- Possibly stale items:
- Missing authoritative source:

## Carry Forward

下游必须保留：

- 
