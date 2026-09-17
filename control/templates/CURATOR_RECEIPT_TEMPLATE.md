# Curator Receipt

> Memory Curator 处理 Update Packet 或其他 Return 后的简短回执。人类通常只需查看本 Receipt 判断是否需要介入；它不替代详细 Git 历史。

```yaml
Artifact Type: Curator Receipt
Scope:
Producer: Memory Curator
Created:
Lifecycle: Pending | Archived
Semantic Authority: Mechanical
Authoritative Source:
Supersedes: None
Next Consumer: Human / Manager
```

## Receipt

- Input Artifact:
- Outcome: `Persisted | Pending Review | Conflict | Stale Source | Updated Pointer`
- Classification:
- Persisted / Updated Locations:
- Index / Changelog Action:
- Lifecycle / Archive Action:
- Git Commit: `hash | Not committed | Not applicable`
- Human Action Required: `None | describe the semantic confirmation / conflict / permission needed`
- Remaining Pending Items:

Receipt 只摘要处理结果和需要人类介入的点，不复制完整 diff 或 Git log。
