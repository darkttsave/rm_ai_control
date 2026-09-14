# Operating Model --- 总监督、专项对话与 Work/执行体

> 这不是自动 Multi-Agent Framework。
>
> 它是人在真实 RM 备赛中使用 ChatGPT / 对话 / Work / Coding Agent
> 的默认组织方式。

------------------------------------------------------------------------

# 1. 默认拓扑

``` text
                    Human
                      │
                      ▼
              Main Supervisor Chat
                 守住项目主线
                      │
             ┌────────┴────────┐
             ▼                 ▼
       Specialist Dialogues   简单明确任务
        深分析 / 学习 / Debug       │
             │                      │
             └────────┬─────────────┘
                      ▼
                 Work / Executor
                 Repo / Build / Test
                      │
                      ▼
               Return / Report
                      │
                      └──→ Main Supervisor
```

默认关系：

``` text
Supervisor → Specialist → Work
```

不是：

``` text
Supervisor → 直接微管理 Work
```

总监督的核心职责是主线判断、专项拆分、方案收敛与下一步组织。

------------------------------------------------------------------------

# 2. Project Prelude 位于正式项目之前

如果项目尚未正式出生：

``` text
P0 Domain Orientation
→ P1 Reality Acquisition
→ P2 Project Inception
→ First Milestone
```

这些阶段默认只需要普通对话。

完成 P2 后才建立正式项目运行体系。

详见：

`project/Project_Prelude.md`

------------------------------------------------------------------------

# 3. Human

人主要负责：

-   当前为什么造；
-   项目优先级；
-   Human Gate；
-   真实机器人实验；
-   重大工程意图；
-   接受 / 拒绝重大结论；
-   判断当前是否仍满足 RM 四问。

------------------------------------------------------------------------

# 4. Main Supervisor

总监督是：

> **项目主线的外部工作记忆 + 技术决策伙伴。**

主要负责：

1.  Current Milestone；
2.  当前最大问题；
3.  Fact / Hypothesis / Unknown；
4.  Specialist 路由；
5.  `SPECIALIST_BRIEF.md`；
6.  `SPECIALIST_RETURN.md`；
7.  Human Gate；
8.  `SUPERVISOR_SNAPSHOT.md`；
9.  下一步。

总监督不需要维护每个 commit，也不需要微管理 Work。

------------------------------------------------------------------------

# 5. Specialist

专项对话用于隔离：

-   深知识；
-   Debug；
-   复杂分析；
-   局部设计。

可以：

``` text
分析
→ 形成方案
→ `TASK_BRIEF.md`
→ Work
```

最终重要结论回到 Supervisor。



### Knowledge Specialist 是 Specialist 的一种用法，不是新角色

当专项主要是知识断点时：

``` text
Supervisor / Human
→ Specialist Brief 或 Learning Request
→ Specialist Dialogue
   + Knowledge Playbook
   + Relevant Learning State / Asset State
→ Specialist Return / 回项目
```

Knowledge Layer 只改变“专项里怎么讲、怎么学、怎么保存”，不新增第二套组织拓扑。


------------------------------------------------------------------------

# 6. Work / Executor

Work 的定位：

> **负责真实仓库中的确定性执行，不负责项目方向。**

适合：

-   读仓库；
-   改代码；
-   编译；
-   测试；
-   查看 diff；
-   增加必要 instrumentation；
-   按确定方案完成 Delivery / Integration / Refactor。

通过：

`AGENTS.md`

初始化。

发现需要改变 Goal、Scope、重大架构、公共行为或安全边界：

> 停止自主扩张，触发 Human Gate。

------------------------------------------------------------------------

# 7. 什么时候开 Specialist

主对话继续讨论不会明显污染主线：

> 留在主对话。

如果问题需要：

-   大量知识；
-   长 Debug；
-   独立实验；
-   深入局部设计；

且会吞掉主线上下文：

> 开 Specialist。

------------------------------------------------------------------------

# 8. 什么时候直接 Work

只有当：

> **任务已经足够明确，而且下游可以用最小充分上下文完成。**

例如：

-   已确认的局部 Bug；
-   参数修改；
-   明确的日志 / 配置变化；
-   删除已确认无使用者的旧代码。

涉及核心架构、主链路、公共接口、安全或重大 trade-off：

> 不用"直接 Work"绕过判断。

------------------------------------------------------------------------

# 9. Handoff

通用交接规则：

`common/Handoff_Protocol.md`

RM 具体应用：

`shared/Handoff_Protocol.md`

核心：

> **冷启动传基线，热启动传差量。**

------------------------------------------------------------------------

# 10. Playbook

Playbook 是场景经验，不是启动协议。

由：

`PLAYBOOK_INDEX.md`

负责目录和路由。

------------------------------------------------------------------------

# 11. Context Continuity

所有长期角色都使用通用：

-   `common/Conversation_Continuity.md`
-   `common/Context_Health.md`
-   `common/Carry_Forward.md`

不要依赖完整聊天历史。

------------------------------------------------------------------------

# 12. 不要重新变成中央官僚系统

总监督不需要：

-   巨大任务树；
-   每个 Agent 的状态机；
-   复杂依赖图；
-   每个小问题的正式报告。

只要能可靠回答：

``` text
现在为什么做？
当前事实是什么？
最大问题是什么？
有哪些真正活跃的专项？
下一步决策是什么？
```

就够了。

------------------------------------------------------------------------

# 13. 与自动 Multi-Agent 的边界

本文件冻结的是：

> **Human + Main Supervisor + Specialist + Work 的人工协作拓扑。**

没有冻结：

-   自动 Supervisor Runtime；
-   自动任务路由；
-   多 Agent 权限系统；
-   自动跨 Agent 记忆同步。

这些仍属于 Future Exploration。


------------------------------------------------------------------------

# 14. 正式产物的用户操作入口

Operating Model 只定义角色关系，不负责让 AI 自己猜产物格式。

Checkpoint / Report / Snapshot / Brief / Return 的具体模板、生成指令和下一位使用者统一见 `USAGE_GUIDE.md`。
