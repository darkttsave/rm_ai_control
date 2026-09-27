# Delivery Card — Minimum Sufficient Package

> 目标：让下游拥有完成当前工作所需的全部关键材料，但不把整个仓库、协议和历史聊天塞进上下文。

## 1. 长期层：稳定且可重复读取

按需包含：

- 稳定项目说明或 Project Instructions；
- 长期角色的 Role Anchor；
- 本角色本次任务真正需要的 Authority dependency closure；
- Recovery Instructions；
- 仓库级 `AGENTS.md` 或等价启动规则。

短期临时任务通常不需要 Role Anchor。不要把当前任务、当前鲸落状态或临时观察写进长期层。

## 2. 会话层：交付外壳与状态来源

Bootstrap Packet 负责把材料装配给新的接收者；它不替代实际状态来源。

先按工作状态选择主要恢复材料：

- P0/P1/P2 或 Specialist 同一阶段未完成：Checkpoint；
- Supervisor 更换：Supervisor Snapshot；
- 阶段完成进入下一阶段：Stage Report。

再把该恢复材料、当前任务和必要依赖装入 Bootstrap，交给新接收者。全新的短期任务没有既有连续性状态时，可以只有 Bootstrap + Task Brief/明确任务。

不要为了保险同时投放多份互相重叠的状态文档。

## 3. 任务层：这次具体做什么

至少说明：

- Goal；
- Allowed Scope / Not in Scope；
- Known Facts / Unknowns；
- 当前任务的 Brief 或明确指令；
- 需要的专用 Playbook；
- 源代码、笔记、数据、截图或其他材料；
- Required Verification；
- Stop / Human Gate Conditions。

## 4. 正式产物五要素

正式 Artifact 至少要有：

```text
Trigger
Template / Rule
Generation Prompt / Goal
Output File or Return Type
Next Consumer
```

如果需要长期持久化，再增加：

```text
Persistence Route
Authority / Source
Curator Update expectation
```

## 5. Execution Contract

交付时明确：

- Product Mode；
- Actual Execution Surface；
- Repository / Local File Access；
- Write / Git / Commit / PR Permission；
- Direct Persistence Permission；
- Required User-provided Materials；
- Expected Return Channel；
- Destination / Responsible Writer。

产品名称本身不授予这些能力。

## 6. 压缩原则

- 给原文或可验证来源，不用聊天记忆代替 Authority；
- 只交付本次依赖闭包，不上传整个 `rm-ai-control`；
- 只交付一张主特化卡，必要时增加一张辅卡；
- 只给状态的 Overview + Relevant Detail；
- 路径只有在目标运行表面确认可读时才算交付；
- Catalog 用于解析，默认不交给普通下游全文阅读。

装配模板：[Bootstrap Packet Template](../../../templates/BOOTSTRAP_PACKET_TEMPLATE.md)
