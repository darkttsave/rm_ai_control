# Specialized Task Card — Integration / Robot Safety

> 使用场景：模块开始接真实上下游、通信链路、硬件执行器或真实机器人。

## 触发信号

- 从 Stub/Simulation 转向真实接口；
- 视觉、电控、ROS 节点、相机 SDK 或执行器开始联调；
- 准备第一次上车、接线、调相机或下发控制；
- 任务要求 Integration Verified 或 Robot Verified。

## Human 最少提供

- 真实上游、下游与接口 Contract；
- 使用版本、配置与部署环境；
- 单位、方向、坐标系和输出限制；
- timeout、watchdog、断联与 stale command 行为；
- 急停与安全归零方式；
- 成功标准、允许风险和现场操作人员。

任何关键安全事实未知时，必须触发 Human Gate。

## 下游应先检查

```text
Units
Direction / Frame
Limits
Timing
Failure Behavior
Emergency Stop
```

第一次真机测试从低风险、小幅输出和单一主要链路开始。

## 验证边界

- Stub 或模拟验证不能写成 Integration Verified；
- 真实接口联调不自动等于 Robot Verified；
- 外部依赖未完成时，诚实停在 Locally Verified / Integration Pending。

## 应返回

- 真实上下游、配置、成功标准与观察结果；
- 当前 Verification Level；
- Pending、Blocker 与安全 Unknown；
- 联调后应删除的 Stub、Mock、临时兼容与测试参数。

正式依据：[Integration / Robot Safety Playbook](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/Integration_Safety.md)
