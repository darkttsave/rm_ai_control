# Future Exploration Archive --- v2.2

> 保存值得未来研究、但没有资格进入 v2.1 Frozen Core 的方向。\
> **Archive
> 不是债务，不要求完成。只有真实项目出现对应摩擦时，这些方向才重新获得设计资格。**

------------------------------------------------------------------------

# 1. 自动 Multi-Agent Orchestration

v2.1 已冻结：

> Human + Main Supervisor Chat + Specialist Dialogues + Work / Executor
> 的人工 Operating Model。

尚未冻结：

-   自动 Supervisor Runtime；
-   自动 Specialist 调度；
-   自动依赖管理；
-   多 Agent 权限 / 状态机；
-   自动跨 Agent 记忆同步。

未来触发：人工协调本身长期成为项目瓶颈。

------------------------------------------------------------------------

# 2. Capability Routing / 模型自动路由

潜在方向：自动选择 Program、便宜模型、强模型、Coding Agent、Human Gate。

暂缓原因：人工路由目前足够；Router 自身可能制造新的 Framework 成本。

未来触发：模型选择、费用和上下文管理出现重复摩擦。

------------------------------------------------------------------------

# 3. Learning Bridge / Bridge Candidate / EKC

潜在价值：把完整学习资产压缩成"工程不能弄错的最小知识约束"。

v2.1 只保留：

``` text
关键知识
→ Constraint + Scope + Reason + Validation
→ 放到真正需要的位置
```

完整 Candidate / EKC 生命周期继续暂缓。

未来触发：PnP / EKF / TF2 等知识更新反复造成工程规则失效。

------------------------------------------------------------------------

# 4. RM C++ Architecture 深入调研

继续研究：

-   app / kernel / module / io / interface；
-   ROS2 Component / Bringup；
-   多车型共享；
-   build / run / deploy；
-   长期多人协作；
-   测试与部署结构。

当前已吸收六条基本原则，见 `playbooks/CPP_Architecture.md`。

总原则：

> **学习成熟工程的边界，不复制成熟工程的规模。**

------------------------------------------------------------------------

# 5. Record / Replay 工程化

潜在方向：

``` text
Robot Runtime
→ Session Recorder
→ Offline Player
→ Same Pipeline
```

可逐步包含视频、IMU、时间戳、状态、Serial、配置快照和 commit。

未来触发：现场问题反复难以离线复现。

------------------------------------------------------------------------

# 6. Observability 工程化

可能包括：

-   structured logging；
-   event logging；
-   metrics / trace；
-   failure snapshot；
-   debug image sink；
-   自动性能 / 调试报告。

未来触发：当前 Logger / Recorder 已不足以定位真实重复问题。

------------------------------------------------------------------------

# 7. Project Assimilation Automation

可能包括：

-   自动扫仓库；
-   找入口和 CMake target；
-   建主链路图；
-   找硬件接口；
-   Git History 定位重要决策；
-   自动生成新人接管地图。

未来触发：正式项目反复接管大型仓库，人工 Assimilation 明显成为瓶颈。

------------------------------------------------------------------------

# 8. Evidence Mining

从 Issues、PR、Git
History、Wiki、比赛报告、配置演化中恢复"为什么代码变成现在这样"。

尤其适合缺少本地传承的方向。

未来触发：关键设计原因无法从当前代码和学长传承得到解释。

------------------------------------------------------------------------

# 9. Knowledge / Project Index

潜在问题：随着项目和知识库扩大，可能需要回答：

-   哪个知识对应哪个模块；
-   哪些模块存在 Knowledge Debt；
-   哪些工程约束来自哪些知识；
-   哪些知识是新人默认入口。

未来触发：信息检索成本真实上升。

------------------------------------------------------------------------

# 10. Protocol Evaluation

真实赛季中记录 `Protocol Friction`：

-   Human Gate 是否太频繁；
-   Snapshot 是否难维护；
-   Task Report 是否过长；
-   Playbook 是否被持续绕过；
-   某条规则是否明显拖慢开发；
-   某条规则是否真正减少事故或返工。

赛季后再用证据决定 v2.1 / v3.0。

------------------------------------------------------------------------

# 11. 通用 AI 协作核心的独立产品化

v2.2 已将 Conversation Continuity / Context Health / Handoff / Carry
Forward 整理为 `common/` 通用层。

但没有进一步制作独立 Framework / Package。

未来触发：

-   其他长期项目已经稳定复用；
-   通用规则边界经过多项目验证；
-   独立维护成本明确低于继续内嵌。

在此之前：

> 保持为 RM Protocol 内部的通用层，不提前产品化。

------------------------------------------------------------------------

# v2.3 Knowledge Layer — Deferred

以下在 v2.3 明确不实现，只记录为未来探索：

- 自动 Knowledge Graph；
- Learning State / Asset Index 数据库；
- Learning State Manager；
- Learning Thread Registry / Manager；
- 掌握度百分比或自动评分；
- 自动全量扫描旧知识库并建档；
- 自动将每次讲解转成正式笔记；
- 基于模型自动决定知识资产删除 / 合并；
- Knowledge 专用 Agent Router；
- Knowledge 专用第二套 Context / Handoff Framework。

重新评估条件：

> 只有真实 RM / 学习使用中出现持续、可复现的维护摩擦，并且轻量 Markdown 方案无法解决时，再进入设计。
