# Specialized Task Card — Project Assimilation

> 使用场景：第一次接手学长工程、校队已有仓库或重要开源项目，需要尽快获得工程控制力。

## 触发信号

- 能看到代码，但不知道如何可靠构建、运行和停止；
- 不知道输入输出、日志、配置与正常现象；
- 需要承担调参、诊断或修改责任；
- 想先整体重构，因为当前项目“不像自己的结构”。

## Human 最少提供

- 真实仓库和当前可用分支/版本；
- 原 README、构建脚本、配置与已有文档；
- 可获得的硬件、数据与运行环境；
- 当前真正需要达到的 Engineering Control Level；
- 已知正常基线，以及无法复现时允许做到哪里。

## 推荐推进顺序

```text
Reproduce → Operate → Tune → Map → Diagnose → Modify / Evolve
```

不是所有模块都需要达到能够重建的最高等级。

## 下游应返回

- 当前实际达到的控制等级；
- 可复现/不可复现的证据；
- 主数据链、关键入口与关键参数；
- 已知失败域与第一批诊断入口；
- 仍缺少的材料、硬件或知识；
- 是否已经适合进入明确开发任务。

## 不要做

- 接手即迁移目录、统一命名或重写配置系统；
- 未跑通原 baseline 就先修改并假设原系统正常；
- 追求读完所有源码、补完所有理论或重构整个项目。

## 切换条件

- 出现未知故障 → Debug / Experiment；
- 已确认要修改 → Development Execution；
- 接入真实上下游 → Integration Safety；
- 知识不足阻塞责任 → Learning / Knowledge Debt。

正式依据：[Project Assimilation Playbook](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/Project_Assimilation.md)
