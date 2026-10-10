# Context Health — 上下文健康

> 来源：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Context_Health.md`  
> 判断标准不是剩余 token，而是能否可靠恢复继续工作所需的关键状态。

## 最小锚点

```text
Current Goal
Verified Facts
Important Decisions
Current Scope
Unknowns
Next Step / Expected Return
```

## Green / Yellow / Red

### Green

关键锚点清楚。继续工作，不制造额外文档。

### Yellow

出现模糊回忆、长支线返回、多分支混淆、重要结论变化或即将进行高风险修改。

行为：只重新读取完成当前动作所需的最小材料并 Re-anchor。

### Red

Goal、关键事实或 Scope 无法可靠恢复，或当前理解与持久事实冲突，继续可能造成重大错误。

行为：停止重大判断，先恢复材料；仍无法恢复时请求必要信息或进行 Handoff。

## 事件驱动

在 Goal 改变、重要决定完成、新分支开启或返回、新证据推翻旧假设、准备高风险修改、准备换角色或换对话时检查；不要每隔固定消息数检查。

## 是否需要记录

记录会影响未来工作的事实、决定、目标变化、阻塞和阶段成果。普通解释、未采纳想法和无长期影响的小问题通常不记录。

## Recoverability Test

如果当前聊天现在完全消失，只提供最小状态，新接收者能否继续下一步？

- 能：Handoff Ready。
- 不能：先收敛缺失的关键状态。

