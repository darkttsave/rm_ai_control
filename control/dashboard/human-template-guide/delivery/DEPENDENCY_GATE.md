# Delivery Card — Dependency Gate

> 目标：解决“下游没有主动索要模板”的问题，但不要求每轮都重新检查。

## 1. 什么时候必须检查

- 新对话、新角色或新执行体开始；
- 正式 Artifact、持久化输出或规范约束任务开始；
- 上下文 Yellow/Red，需要重锚或恢复；
- Draft 准备晋升为 Formal / Persistent / Authoritative；
- Role Anchor、Authority、分支、Commit 或运行表面发生变化。

普通问答、临时整理和明确标记的非正式草稿不必为了“可能有模板”加载完整 Catalog。

## 2. 下游开始前的最小确认

```text
Goal understood: Yes / No
Required Template / Rule readable: Yes / No
Required Authority readable and version verified: Yes / No / Not applicable
Task materials sufficient: Yes / No
Expected Return and Next Consumer understood: Yes / No
```

只有正式工作所需项均为 Yes 时，才声称按正式规范执行。

## 3. 缺失时的请求格式

```text
Template Dependency Request

Intent:
Required Template / Rule:
Why Required:
Current Product Mode:
Current Execution Surface:
Can Continue as Informal Draft: Yes / No
Requested Delivery: Path / Inline minimum / Attachment / Project source / Repo source
```

Human 不需要根据模糊名字翻仓库。Manager 收到请求后，通过 Catalog 解析确切来源，交付最小依赖，然后退出业务循环。

## 4. 能否继续

- 正式模板不可读，但任务允许临时探索 → 可继续，必须标记 Informal Draft；
- Authority 不可读或版本不明 → 普通讨论可继续，正式权限与晋升暂停；
- 缺少关键事实会改变目标或范围 → 触发 Human Gate；
- 只是非关键参考缺失 → 标记 Unknown，不虚构内容。

## 5. 如何处理上下文漂移

入口检查不能保证模型在长对话中永久记住。控制方式是事件驱动复核：

- Context Green：继续，不重复投放；
- Context Yellow：重锚关键规则、目标和边界；
- Context Red：停止高风险工作，从原文恢复；
- 正式产物最终化前：重新读取所需 Authority 与 Template。

Manager 不持续监听下游对话。Human、Supervisor 或当前执行体在上述事件发生时触发复核；未来若 DSH 扩展业务路由，可把这一步实现为程序 Gate。

正式解析来源：[Template Resolution Catalog](../../../ai/TEMPLATE_RESOLUTION_CATALOG.md)
