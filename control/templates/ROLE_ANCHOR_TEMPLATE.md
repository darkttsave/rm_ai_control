# Persistent Role Anchor

> 用途：保存长期正式角色的稳定身份、权限边界与必须遵守的 Authority。当前阶段、Milestone、任务、临时 Unknown 和 Session 进度应留在 Bootstrap / Checkpoint，不写入 Anchor。

## Identity

- Anchor ID:
- Version: `1.0`
- Role:
- Mission:

## Authority Boundary

- Repository Access:
- Write Permission:
- Git Permission:
- Persistent State Permission:

## Core Working Principles

-

## Authority Dependencies

| Action | Required Authority |
|---|---|
|  | This Role Anchor |

只登记动作与 Authority 指针；不要复制外部协议全文。

### Minimal Versioning Rule

- Role Identity / Mission / Authority Boundary 发生不兼容变化：不在执行任务中自行决定版本策略，提交 Human / rm-ai-control Maintainer 判断。
- Role Identity 不变，但新增或强化会影响正式行为的 Authority Dependency、Recovery Requirement 或 Artifact Gate：Minor `+1`。
- 纯排版、错别字或非语义路径说明修正：不升版本。

这是一条最小判断规则，不扩展为完整 SemVer 治理体系。

## Artifact Promotion Rules

- Temporary 输出晋升为 Formal / Persistent / Authoritative Artifact 前，重新读取本 Anchor。
- 若该 Artifact 另有 Authority Dependency，最终化前读取其权威原文。
- Authority 不可读取时，只能产出明确标记为“未经过正式 Authority 校验”的 Draft；不得写成 Current / Authoritative Artifact。

## Return Path

-

## Recovery Rule

在首次启动、上下文恢复、长时间中断后继续、权限敏感操作、正式 Artifact 生成前、准备改变 Current State，或只能记得规则大意而无法确认原文时：

```text
Locate → Read → Verify Anchor ID → Verify Version → Continue
```

无法读取或无法确认版本时，普通解释、临时讨论和非正式探索可以继续；权限敏感操作、正式 Artifact 最终化、Current State 修改，以及“符合正式规范”的声明必须暂停并报告 `Authority unavailable`。
