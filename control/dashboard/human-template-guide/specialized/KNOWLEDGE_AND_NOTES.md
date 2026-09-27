# Specialized Task Card — Knowledge Learning and Notes

> 使用场景：已经决定真正理解某个知识、讲解当前代码/原理，或把已收敛理解整理为长期笔记。

## 先分清三个目的

- **普通答疑**：十分钟局部问题，无长期状态变化，直接回答即可。
- **学习/讲解**：目标是建立足够理解，不要求立刻生成正式笔记。
- **正式笔记**：目标是形成或维护长期知识资产，必须重新组织而非抄聊天。

## 新学习对话最少提供

- `LEARNING_REQUEST_TEMPLATE.md` 表达的本轮目标与材料；
- 当前相关源码、文档、论文、截图或项目背景；
- 已存在时，提供 Learning State 的相关部分；
- 已存在时，提供 Knowledge Asset Index 的相关部分；
- 旧主题换对话继续时，再提供 `LEARNING_THREAD_STATE_TEMPLATE.md` 对应状态。

长期状态只给 Overview 与本轮 Relevant Detail，不要把全部知识库塞进上下文。

## 技术讲解需要提供

- 当前真实问题和相关材料；
- `KNOWLEDGE_LEARNING_AND_NOTES.md`；
- `EXPLANATION_CORE.md`；
- 需要判断讲解对象与深度时，再提供 `EXPLANATION_PROFILES.md`。

如果当前只需要讲解，不要顺带加载 Note Core、Note Profile 与 Note Style。

## 正式笔记必须提供

- 本轮已讲清楚或有来源支持的材料；
- 当前 Knowledge Asset Index 或相关资产清单；
- [Knowledge Learning & Notes](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md)；
- [Note Core](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/notes/NOTE_CORE.md)；
- [Note Profiles & Operations](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/notes/NOTE_PROFILES_AND_OPERATIONS.md)；
- [Note Style Standard](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/notes/NOTE_STYLE_STANDARD.md)。

当前系统没有一张通吃所有笔记的空白“笔记模板”。笔记形态由 Note Type、Operation 和上述规则共同决定。

## AI 在生成前必须判断

```text
中心问题是什么？
已有同职责资产吗？
New / Update / Merge / Legacy Reconstruction？
Theory / API-Code / System-Architecture / Engineering-Project？
```

修改、合并、删除或重命名已有 Canonical Asset 时，必须说明影响并通过 Human Gate。

## 旧笔记重构额外提供

- 原始笔记、图片、代码样例和重要注释；
- 当时声明的任务状态与验证结果；
- 当前允许处理的文件范围；
- 是否要求分批 Audit → Approval → Rewrite；
- 原始材料是否必须保持只读；
- Source Inventory / Source Map。

历史任务状态与本次重构验证状态必须分开。缺少这些材料时，不得声称已经完成完整 Legacy Reconstruction。

## 笔记完成标准

- 一篇只有一条主线；
- 按知识依赖组织，不按聊天顺序；
- 第一屏能够快速恢复；
- 来源事实、解释、推断和项目特例分开；
- 图、公式与代码承担明确认知任务；
- 给出 Asset Index 的 New/Update/Merge 建议；
- “有笔记”不被写成“Human 已掌握”。

## 持久化

只有 Human 确认的 Learning State 变化和正式知识资产更新才交给 Curator。一次讲解完成不自动改变长期 Learning State。

相关模板：

- [Learning Request](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/LEARNING_REQUEST_TEMPLATE.md)
- [Learning State](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/LEARNING_STATE_TEMPLATE.md)
- [Learning Thread State](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/LEARNING_THREAD_STATE_TEMPLATE.md)
- [Knowledge Asset Index](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/KNOWLEDGE_ASSET_INDEX_TEMPLATE.md)
- [Knowledge Prompt Cards](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/KNOWLEDGE_PROMPT_CARDS.md)

讲解规则：

- [Explanation Core](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/explanation/EXPLANATION_CORE.md)
- [Explanation Profiles](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/explanation/EXPLANATION_PROFILES.md)

本仓库当前状态入口：

- [Current Learning State](../../../knowledge/LEARNING_STATE.md)
- [Current Knowledge Asset Index](../../../knowledge/KNOWLEDGE_ASSET_INDEX.md)
