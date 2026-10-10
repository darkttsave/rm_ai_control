# Note Profiles & Operations

> 来源：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/notes/NOTE_PROFILES_AND_OPERATIONS.md`

## Note Types

### Theory / Concept

`一句话本质 → 核心关系 → 前置对象 → 概念与机制 → 为什么成立 → 易混/边界 → 系统位置`。当前阶段不需要的完整推导不强行加入。

### API / Code

第一屏优先正式接口、输入输出、高频参数、最小示例和 Pipeline 位置；正文再讲机制、运行时语义和常见错误。原则：先能查，再能读。

### System / Architecture

优先展示 `Input → Module/State → Output`，再说明模块职责、Contract、接口、失败边界和当前工程位置。

### Engineering / Project

区分通用知识、当前项目事实、当前参数和验证状态，不把一次项目参数写成普适结论。

## Operations

### New

当前形成独立知识职责，且没有同职责正式笔记。

### Update

已有同职责笔记，本轮只是补全、纠错或深化。默认优先 Update。

### Merge / Supersede

同主题、同职责且长期会造成重复或冲突。操作前说明重复内容、主入口、独有内容和旧资产去向；移动、删除或重命名需要 Human 确认。

### Legacy Reconstruction

原始材料默认只读。重构需要保留原始问题、用户理解、任务事实和历史验证，并区分：

```text
Original Task Status = 当时真实完成到哪里
Rewrite Status = 本次重构实际检查了什么
```

正式重构前盘点来源，完成后保证重要来源有明确去向。分批审理时遵守：先 Audit，不写文件；提出结构；只实现批准批次；报告本批变化；确认后继续。

