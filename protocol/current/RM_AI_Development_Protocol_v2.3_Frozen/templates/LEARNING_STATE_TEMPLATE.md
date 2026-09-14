# Learning State

> 用途：记录用户长期、可复用的学习状态。
>
> 最终解释权属于用户。AI 可以提出 Patch，但不要因为“讲过一次”就自行宣布已经掌握。
>
> 核心问题：**当前理解能支持哪些真实工程行为？还有什么会阻塞开发 / 调试的 Gap？**

---

# Overview

<!-- 只放跨领域启动真正有用的信息。保持轻量。 -->

| Area | Current Control / State | Key Known | Important Gap |
|---|---|---|---|
| 例：PnP | 可用于当前工程 / L3 前后 | 投影、K/D、solvePnP 输入输出 | 平面多解来源仍需深化 |

---

# Relevant Detail

## Topic / Area：

### Exposure

<!-- 是否接触过；通过什么场景接触。 -->

### Known

<!-- 已经形成、后续可以复用的稳定理解。 -->

### Current Engineering Control

<!-- 可引用 L0~L6，但必须写具体能力，不只写标签。 -->

例如：

```text
能够读取 solvePnP 输入输出，并定位 2D 点、3D 点、K、D 的来源；
遇到位姿异常时知道先检查角点顺序、坐标系和输入尺度。
```

### Gaps

<!-- 仍然存在、可能阻塞当前或未来项目的认知断点。 -->

### Evidence / Experience

<!-- 什么真实经历支持上面的判断：项目、调试、源码阅读、自己解释过、实验等。 -->

### Project Relevance

<!-- 为什么目前值得保留在长期状态里。 -->

### Trigger to Revisit

<!-- 出现什么任务 / 问题时需要继续补。 -->

---

# Patch Convention

AI 建议修改时，不重写整个文件，只给最小 Patch：

```text
Topic:
Reason:
Add / Update Known:
Add / Remove Gap:
Engineering Control change（如有）:
Evidence:
```

用户确认后，才把它视作长期状态。
