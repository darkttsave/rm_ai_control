# Handoff Protocol — 最小充分交接

> 来源：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Handoff_Protocol.md`

## 核心原则

最小充分不是最短。应压缩无关上下文，而不是机械压缩字数。

## 冷启动与热启动

### Cold Start

接收者没有可靠上下文时提供：

```text
职责或任务入口
当前事实和基线
目标
相关约束
决定方案所必需的材料
```

### Warm Start

接收者已有可靠上下文时只提供：

```text
本轮变化
新增事实
已锁定决定或约束
当前验证目标
```

原则：冷启动传基线，热启动传差量。

## 按影响裁剪

- **Local**：Goal、Scope、Verification。
- **Mainline**：再增加 Why、Known Facts、Locked Decisions 和 Evidence。
- **System / 真机**：再增加上下游、风险、取舍、验证边界和 Human Gate。

## 最小字段

按任务选择：Goal、Why、Current State、Scope、Locked Decisions、Expected Result、Verification、Stop Conditions、Relevant Sources、Expected Return。

## 访问能力

接收者能可靠读取仓库或文件时，引用路径并说明本任务关注点，不复制全文。访问能力不确定时，必须内联关键决策信息或要求提供材料；路径本身不等于可读。

## 停止条件

缺失信息会改变 Goal、Scope、外部行为、架构、安全或 Verification Target 时，不得猜测补齐，应指出缺失并触发 Human Gate。

## 交接验收

接收者应能回答：

1. 我要做什么？
2. 为什么现在做？
3. 哪些事实已经确定？
4. 哪些东西不能擅自改变？
5. 做完如何验证？
6. 什么情况下必须停下来问人？

