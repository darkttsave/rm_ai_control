# Design Evolution Summary

> 用途：保留 v1.0 为什么最终变成现在这样。  
> 这不是现行协议；现行规则以 Frozen Core 为准。

---

# 1. 历史来源

本次冻结主要基于三类材料：

1. `evolution(2).zip`
   - V0.1 总监督 / 分对话 / 单执行体
   - V0.2 Project State / Task Package / Task Report
   - V0.3 Human Semantic Gate / 成本分层
   - V0.4 Learning / Engineering 分离
   - V0.5 Folder-first
   - V0.6 Brownfield Overlay
   - V0.7 Open-source Bootstrap
   - V0.8 Engineering Control Ladder
   - V0.9 RM Project Assimilation

2. `evolution(3).zip`
   - Learning / Engineering 分离
   - Knowledge Organization
   - Human Memory / Gap
   - Bidirectional Bridge
   - Capability Routing
   - Legacy Knowledge
   - Scaffold Learning / Knowledge Debt
   - Learning Pipeline

3. 2026-09-03 本轮讨论
   - 校内 YOLO 工程冗余反思
   - 小步修改造成补丁堆积的反例
   - Knowledge Debt
   - RM 论坛 AI 开发经验
   - Human / AI 协议分层
   - C++ Runtime Observability 与 tools
   - Godot 分板块经验与 RM 螺旋式开发
   - RM 开源工程架构调研

---

# 2. 第一条演化线：从“多角色协作”到“薄协议”

最早的设计是：

```text
Human
→ Supervisor
→ Specialist Chat
→ Executor
```

它解决了一个真实问题：

> 一个对话不适合同时承担全局监督、专项深入和真实仓库执行。

随后发现用户逐渐变成“人工消息总线”，因此引入：

- Project State；
- Task Package；
- Task Report。

再随后发现：

> 信息传递可以自动化，但目标、语义、现实有效性和高代价决策不能全部自动化。

于是 Human Semantic Gate 形成。

### v1.0 最终取舍

保留：

- Human Gate；
- Project State 思想；
- Task Report；
- 分析与仓库执行职责不同。

降级到 Archive：

- 固定 Supervisor / Specialist / Executor 拓扑；
- 完整 Task Package Schema；
- 自动 Multi-Agent Runtime。

原因：

> 角色不是目的，行为边界才是目的。

---

# 3. 第二条演化线：从“共享文件夹”到 Brownfield First

历史上曾提出：

```text
AGENTS.md
PROJECT.md
STATE.md
EXTENSIONS.md
.rm-ai/
```

解决跨对话上下文丢失。

随后认识到真实 RM 项目多数不是空仓库，而是：

- 学长成熟工程；
- 开源工程；
- 已有自己的 README/docs/config。

因此形成 Brownfield Overlay：

> 先采用已有规则，只补缺失的 AI 协作上下文。

### v1.0 最终取舍

不冻结固定 `.rm-ai/` 目录。

只冻结：

> 原项目状态层不足时，增加轻量 PROJECT_STATE。

---

# 4. 第三条演化线：Learning 与 Engineering 分离

历史设计认识到：

```text
代码跑通 ≠ 学会
学懂 ≠ 工程验证
```

因此曾发展出：

- Learning Plane；
- Engineering Plane；
- Bridge Candidate；
- EKC；
- Learning Check。

随后又引入：

- Canonical；
- Legacy；
- Scaffold；
- Missing；
- Knowledge Debt。

### v1.0 最终取舍

核心保留：

- Learning / Engineering 不互相冒充完成；
- Minimum Viable Learning；
- Knowledge Debt；
- 按当前工程责任决定学习深度；
- 关键知识可压缩为工程约束。

降级 Archive：

- Candidate / EKC 完整生命周期；
- 自动 Knowledge Index；
- 自动 Learning Pipeline。

原因：

> 这些概念有潜力，但还没有真实 RM 工程证明维护成本值得。

---

# 5. 第四条演化线：Engineering Control Ladder

历史 V0.8 明确推翻了一个隐含前提：

> “必须先完整理解，才能进入工程。”

形成：

```text
Reproduce
Operate
Tune
Diagnose
Modify
Explain
Reconstruct
```

并提出：

> 当前任务要求哪一级能力，就先补足哪一级。

### v1.0 最终取舍

这一思想进入：

- Project Assimilation；
- Human Core；
- Learning / Knowledge Debt。

它解决了真实备赛中：

> 时间不允许每个知识都先系统学完。

---

# 6. 第五条演化线：RM Project Assimilation

V0.9 进一步提出：

- Clone Code 之外还可以按需 Clone Evidence；
- Issues / PR / History 可充当“虚拟学长”；
- 无本地传承方向需要 Reference Triangulation；
- Unknown Unknowns 最终必须通过实验产生自己的 Local Provenance。

### v1.0 最终取舍

核心保留：

```text
Reproduce
→ Operate
→ Tune
→ Map
→ Diagnose
→ Modify
```

Evidence Mining / Reference Triangulation 作为项目接管的可选增强和 Future Exploration，不作为所有任务强制要求。

---

# 7. 本轮最重要的第一修正：过度设计

校内 YOLO 工程暴露：

> 开发者想到的每一种未来可能性都直接变成了运行时复杂度。

表现：

- 多种调参模式；
- 大量 if/else；
- fallback；
- 防御措施；
- 配置项。

于是形成：

> **未来不提前实现。**

想到风险可以记录，但没有真实证据时不自动进入生产代码。

---

# 8. 本轮最重要的第二修正：小步开发也会腐烂

最初建议：

> 一步一改，一步一验证。

随后用户指出真实反例：

- 队友模块未完成；
- 无法联调；
- 为了“最小改动”不断保留旧接口；
- 临时兼容层不断叠加；
- 最后大量时间用于清理历史代码。

于是重新定义：

> **最小修改 = 当前需求下的最小最终结构。**

而不是：

> 最少删除代码。

并形成：

> 已死亡的过去进入 Git，不进入 Production。

---

# 9. 本轮最重要的第三修正：Knowledge Debt

AI 可以让：

```text
代码增长速度 >> 人的理解速度
```

因此即使项目持续“前进”，开发者可能逐渐失去：

- 参数理解；
- 故障定位；
- 主链路；
- 修改判断。

于是 Knowledge Debt 从学习系统中的概念升级为工程核心风险。

v1.0 不要求每次代码修改后都完整学习，而是在：

- Tune；
- Diagnose；
- Modify；
- Robot Integration；

这些风险闸门前要求相应控制力。

---

# 10. RM 论坛经验带来的收敛

论坛文章强化了几个判断：

- 不给 AI 足够现实上下文，就是让 AI 赛博算命；
- Debug 的重点是下一次实验排除什么；
- 关键控制链路不能黑盒炼丹；
- 可直接验证的事实不要依赖 AI 猜；
- AI 会无限给出“下一步”，人必须知道何时停止。

这些内容最终不是作为口号进入 v1.0，而是分别转化成：

- Fact / Hypothesis / Unknown；
- Debug / Experiment Playbook；
- Human Gate；
- Verification Levels；
- Cognitive control；
- Architecture Backlog / Milestone。

---

# 11. C++ 架构讨论带来的新增

用户提出：

> 日志、视频、调试图片到底应该塞主程序，还是放 tools？

最终形成：

```text
需要观察正式运行现场
→ Runtime Observability

可独立完成调试任务
→ tools/
```

并进一步明确：

> YAML 主要控制 composition，而不是业务代码遍地 Debug if。

开源工程调研又补充：

- main/component 做 composition root；
- 业务 / module / I/O 边界；
- stable interfaces；
- runtime observability；
- Record → Replay；
- Config / Bringup。

这些进入 `CPP_Architecture.md`，而不是 Core Protocol。

---

# 12. Godot 经验带来的项目推进修正

游戏开发中的：

```text
Player Baseline
→ Bullet
→ 回来有限修改 Player
→ Enemy
→ 再集成
```

说明模块不需要“一次做完”。

RM 对此增加一个现实修正：

> 不能等所有模块完成以后才第一次真实联调。

最终形成：

```text
Walking Skeleton
→ Baseline
→ Integration
→ 暴露风险
→ 局部强化
→ 再 Integration
→ Harden
```

即风险驱动的螺旋增长。

---

# 13. 为什么最终按“谁遵守什么”拆协议

曾经尝试把：

- Investigation；
- Experiment；
- Delivery；
- Integration；
- Architecture；
- Project State；
- Knowledge Debt；
- Assimilation；

全部写入一份总 Framework。

最终发现：

> 这依然会让协议本身成为认知负担。

因此改成：

```text
Human Core
Human–AI Gates
AI Autonomous Contract
Project State
Playbooks
Archive
```

核心依据不是“系统有哪些概念”，而是：

> 谁需要知道？什么时候需要知道？

---

# 14. v1.0 真正冻结的是什么

冻结的是：

> **行为约束与决策边界。**

没有冻结：

- 固定 Agent 拓扑；
- 固定目录树；
- 固定自动化 Runtime；
- 完整 Knowledge Framework；
- 某支战队的 C++ 架构；
- 某种模型路由方式。

这使协议可以叠加在不同 RM 项目之上，而不要求先重构项目来适配协议。

---

# 15. 最后的冻结原则

历史两套 evolution 都在最后明确得出类似判断：

> 不应该继续增加概念，而应该形成当前快照并用真实任务验证。

v1.0 这次真正执行这一结论。

从现在开始：

> **Framework 不再推动 Framework 增长；真实项目的重复摩擦才有资格修改 Protocol。**
