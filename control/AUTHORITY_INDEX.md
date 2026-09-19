# Authority Index — rm-ai-control_v1.2

> 薄的 Authority discovery / resolution 索引：把人类语义名称和 Authority ID 映射到真实 Canonical Source 与 Runtime Delivery Artifact。
>
> 本索引不是 Authority 正文、Memory Index、数据库或自动同步服务。正式行为仍以 Canonical Source 原文为准；只登记已真实使用或已被当前活跃规则引用的 Authority。

## Authority Registry

| Authority ID | Name | Type | Canonical Source | Section / Locator | Runtime Delivery Requirement | Related Template / Dependency | Notes |
|---|---|---|---|---|---|---|---|
| `role:auto-aim-code-framework-analyst` | Auto-Aim Code Framework Analyst Role Anchor | Role Anchor | [`role-anchors/AUTO_AIM_CODE_FRAMEWORK_ANALYST_ROLE_ANCHOR.md`](role-anchors/AUTO_AIM_CODE_FRAMEWORK_ANALYST_ROLE_ANCHOR.md) | Whole file; verify Anchor ID and Version | 可读取的同一 Role Anchor 副本 | [`templates/ROLE_ANCHOR_TEMPLATE.md`](templates/ROLE_ANCHOR_TEMPLATE.md) | Current canonical version: `1.1`; `1.0` Runtime Copy is stale |
| `contract:universal-return` | Universal Return Contract | Project-level Contract | [`UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](UNIVERSAL_PROJECT_AI_BEHAVIOR.md) | `## 7. Artifact Return` → `### Universal Return Contract` | 可读取的 `UNIVERSAL_PROJECT_AI_BEHAVIOR.md` | `template:curator-update-packet` when a formal Packet is required | Authority 名称不等于独立文件名；仓库中没有 `Universal Return Contract.md` |
| `template:curator-update-packet` | Curator Update Packet Template | Artifact Template | [`templates/CURATOR_UPDATE_PACKET_TEMPLATE.md`](templates/CURATOR_UPDATE_PACKET_TEMPLATE.md) | Whole file | 可读取的 `CURATOR_UPDATE_PACKET_TEMPLATE.md` | Normally used with `contract:universal-return` | Defines Packet structure; does not replace the Contract |
| `playbook:knowledge-learning-notes` | Knowledge Learning & Notes | Core Protocol Playbook | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md) | Whole file; relevant sections selected by task | 该文件的可读副本 | Formal Knowledge Note dependency | Frozen Canonical Source; do not modify |
| `playbook:project-assimilation` | Project Assimilation | Core Protocol Playbook | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/Project_Assimilation.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/Project_Assimilation.md) | Whole file; relevant sections selected by task | 该文件的可读副本 | Load only when the task explicitly requires this method | Frozen Canonical Source; do not modify |

## Resolution Rule

```text
Authority ID / semantic name
→ resolve in this Index
→ Canonical Source + Section / Locator
→ Required Runtime Delivery Artifact
→ verify target Runtime readability
```

Manager 只闭包本次任务实际需要的 Authority dependencies，不把整个 `rm-ai-control` 仓库交付给目标角色。索引缺项时报告 unresolved dependency，由 Human / rm-ai-control Maintainer 确认；不得靠猜测文件名补齐。
