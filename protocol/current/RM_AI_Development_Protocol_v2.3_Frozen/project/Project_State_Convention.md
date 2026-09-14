# Project State Convention

> v2.3 继承 v2.2 定位：Project State 保存"当前项目事实"；总监督当前工作态由
> Supervisor Snapshot 保存，两者不得混用。

> 目标：为多轮 AI / 多对话协作保留一个**轻量、当前、可信**的事实入口。\
> 原则：**Brownfield First。**

------------------------------------------------------------------------

# 1. 并非每个项目都必须创建 PROJECT_STATE.md

首先检查原仓库已有：

-   README；
-   docs；
-   开发说明；
-   Issues / Milestone；
-   AGENTS / project instructions；
-   构建和运行脚本；
-   当前任务记录。

如果这些内容已经足以让人和 AI 恢复当前事实：

> 不额外创建状态文件。

只有当当前状态分散、经常需要人工重新解释时，再增加一个薄的
`PROJECT_STATE.md`。

------------------------------------------------------------------------

# 2. PROJECT_STATE 只保存"当前真相"

推荐内容：

-   Current Milestone；
-   Current Verified Baseline；
-   Current Task / Focus；
-   Verified Facts；
-   Current Unknowns；
-   Integration Blockers；
-   Temporary Structures；
-   Knowledge Debt；
-   Technical Debt；
-   Architecture Backlog；
-   Verification Pending。

不记录完整历史。

------------------------------------------------------------------------

# 3. 当前状态与历史的边界

``` text
历史为什么这样变
→ Git / Task Reports / Decision Logs

现在真正是什么
→ Code / Verified Docs / PROJECT_STATE
```

不要让未来 AI 需要阅读几十份 Task Report 才知道项目现在在哪里。

------------------------------------------------------------------------

# 4. 事实要求

PROJECT_STATE 中的内容应尽量区分：

``` text
Verified Fact
Unknown
Pending
Temporary
Debt
Backlog
```

不要把推测写成事实。

如果某项事实已经因新实验失效：

> 直接修改当前状态，不保留两套冲突结论。

历史由 Git 保存。

------------------------------------------------------------------------

# 5. 什么时候更新

只有对后续开发有意义时更新，例如：

-   新的可复现 baseline；
-   某项联调已通过；
-   某项之前的假设被排除；
-   新增/删除 Temporary；
-   新的外部 Blocker；
-   Current Milestone 改变；
-   产生重要 Knowledge Debt；
-   Architecture Backlog 出现真实候选。

小型局部修复不必机械更新状态文件。

------------------------------------------------------------------------

# 6. 谁维护

AI 可以在重要任务结束时提出或执行状态更新。

人不需要手工维护每一个字段。

但：

> 人对项目目标和重大语义事实拥有最终确认权。

------------------------------------------------------------------------

# 7. 最小主义

如果 `PROJECT_STATE.md` 开始变成长篇设计文档，应立即压缩。

它应该让新 Agent 在几分钟内回答：

1.  现在项目要干什么？
2.  当前确认能工作的 baseline 是什么？
3.  现在卡在哪里？
4.  有哪些临时结构和待验证项？
5.  哪些债务会影响下一步？

回答完就够了。

------------------------------------------------------------------------

# 8. 模板

见：

`templates/PROJECT_STATE_TEMPLATE.md`

------------------------------------------------------------------------

# v2.3：与 Supervisor Snapshot 的边界（继承 v2.2）

`PROJECT_STATE` 保存可被不同人 / AI 共同依赖的**当前工程事实**。

`SUPERVISOR_SNAPSHOT`
保存主监督当前的**工作态**：正在关注什么、有哪些活跃专项、下一步等什么决策。

不要把：

-   当前正在讨论的方案；
-   某个专项正在调查什么；
-   "下一步可能做 A 或 B"；

长期塞进 Project State。

如果它只是主线工作上下文，放进 Supervisor Snapshot。
