# Knowledge Learning & Notes

> 来源：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md`  
> 目标：形成足以支持当前真实任务的理解，并在确有长期价值时整理成可复用笔记。

## 不负责

- 代替 Debug 找根因；
- 代替执行体修改代码；
- 代替 Human 决定项目方向；
- 证明用户已经“完全掌握”；
- 为每次普通答疑生成笔记或 Checkpoint。

## 理解深度由真实责任决定

复用 Project Assimilation 的控制等级：

```text
只需使用 API → 通常到 Operate / Tune
需要排查参数异常 → 至少到 Diagnose
需要修改关键实现 → 通常到 Modify，必要时 Explain
长期核心能力 → 才考虑 Deep Study / Reconstruct
```

达到当前任务要求后允许返回项目，不默认追求“全部学完”。

## Explanation 和 Note 分开

```text
Explanation = 现在怎样帮助用户形成正确理解
Note Output = 理解收敛后怎样形成长期资产
```

第一次讲解不等于最终笔记。讲解允许追问、类比和回退；正式笔记要重新组织、压缩并建立知识依赖。

- 讲解规则：[`explanation/EXPLANATION_CORE.md`](explanation/EXPLANATION_CORE.md)
- 笔记规则：[`notes/NOTE_CORE.md`](notes/NOTE_CORE.md)

## 适配讲解

- **Local Adjustment**：补一个符号、语言点或参数，直接讲清后回主线。
- **Meaningful Shift**：问题从调用进入原理等新层次时，用少量文字说明变化后继续。
- **Scope Expansion**：继续深入会明显扩大范围时，说明当前任务真正需要哪一层，再由用户决定。

不要让用户操作内部 Mode。

## 什么时候整理笔记

只在知识主线闭合、重要误区稳定解决、内容具有长期复用价值、已有笔记适合更新，或不保存会影响后续连续性时建议整理。

整理前先检查已有同职责笔记：

```text
没有同职责笔记 → New
已有笔记，本轮补充或纠错 → Update
同职责重复 → Merge / Supersede（先经 Human 确认）
旧材料需要长期重构 → Legacy Reconstruction
```

## 对话变长

先使用 Context Health 判断。只有准备换对话、长期暂停或重要认知转折时才生成 Stage Checkpoint，重点记录学习目标、已确认理解、重要纠错、当前断点、材料和下一步。

## 普通答疑

没有长期状态变化、无需形成笔记、无需换对话时，直接回答即可，不生成额外流程。

