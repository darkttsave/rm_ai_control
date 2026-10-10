# Project Assimilation — 接手已有项目

> 来源：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/Project_Assimilation.md`  
> 目标：尽快获得工程控制力，而不是先读完全部源码或重构整个项目。

## 先继承，再改造

不要一接手就迁移目录、统一命名、重写配置或用新 Framework 覆盖原结构。先确认原基线是否可运行，以及原作者怎样使用它。

## Engineering Control Ladder

| Level | 能力 | 判断问题 |
|---|---|---|
| L0 Reproduce | 跑起来 | 能否构建、启动并复现预期结果？ |
| L1 Operate | 会使用 | 知道入口、输入输出、日志和正常现象吗？ |
| L2 Tune | 会调 | 知道关键参数的方向、范围、观测和回滚吗？ |
| L3 Diagnose | 会定位 | 能把异常缩小到合理模块或边界吗？ |
| L4 Modify | 会安全修改 | 理解约束、接口和验证方法吗？ |
| L5 Explain | 能解释 | 能说明原理、工程语义和取舍吗？ |
| L6 Reconstruct | 能重建 | 没有现成实现时能重新设计并验证吗？ |

不是所有模块都需要达到 L6。先明确当前责任要求达到哪一级。

## 推荐顺序

1. **Reproduce**：固定环境、依赖、配置、启动方式和预期输出；无法复现本身也是事实。
2. **Operate**：知道如何启动、停止、观察输入输出、日志和正常现象。
3. **Tune**：只整理赛场真正使用的关键参数、趋势、范围、观测与回滚。
4. **Map**：运行过系统后，再画简洁主链路：`Input → Main Modules → Critical State → Output`。
5. **Diagnose**：通过真实问题建立正常信号、异常入口、故障边界和第一批证据。
6. **Modify / Evolve**：明确范围和验证等级，保护外部 Contract，修改后重新建立基线。

## 没有本地传承时

按需比较多个开源项目、论文、Issue、PR 和 Git History，复现若干基线后再做最小原型。Evidence Mining 是按需手段，不是每个项目的固定流程。

## 不追求

- 完整理论学习；
- 读完所有源码；
- 完美新人文档；
- 一次统一所有命名；
- 接手即大规模重构；
- 一次解决全部历史问题。

目标是：能够安全使用、调节、定位，并知道下一步真正需要学什么或改什么。

