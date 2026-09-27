# Specialized Task Card — Debug / Experiment

> 使用场景：系统行为异常，但根因尚未确认；当前首要目标是获得证据。

## 触发信号

- 只有“效果不好”“偶发失败”等现象描述；
- 存在多个可能原因，尚无证据区分；
- 正在不断改参数或补 fallback，但判断没有收敛；
- 现场问题难复现，需要保存数据或增加最小 instrumentation。

## Human 最少提供

- 具体现象，而非模糊评价；
- 软件版本、配置、输入、硬件状态与时间信息；
- 正常路径和异常路径的已知差异；
- 可进行的实验范围、风险与现场条件；
- 期望获得的证据或要区分的假设。

## 下游应先形成

```text
Phenomenon
Facts
Unknowns
Limited Hypotheses
Evidence Needed
Next Highest-information Experiment
```

一次实验尽量围绕一个主要变量。现实无法隔离变量时，必须标记因果限制。

## 允许与禁止

允许：读代码、日志、数据，增加可撤销 instrumentation，写一次性诊断工具。

默认禁止：原因未明时大规模重构、同时加入多条永久 fallback、把偶然成功写成根因确认。

## 结束与返回

结束前至少说明：支持了什么、排除了什么、还不知道什么、根因证据强度、Chosen Fix 和 Verification。证据收敛后再切回 Development；涉及真实硬件时叠加 Integration Safety。

正式依据：[Debug / Experiment Playbook](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/Debug_Experiment.md)
