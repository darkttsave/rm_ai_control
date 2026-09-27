# Specialized Task Card — Learning / Knowledge Debt

> 使用场景：陌生知识正在阻塞工程，但尚不清楚现在是否值得深入、需要学到什么程度。

## 触发信号

- 会运行，但不敢调参、诊断或修改；
- AI 已经改过多处关键代码，Human 尚未形成主链路理解；
- 当前责任需要理解某项知识，但完整学习会阻塞工程；
- 需要决定先做 Minimum Viable Learning，还是进入系统学习。

## Human 最少提供

- 当前工程任务与责任；
- 准备执行 Tune、Diagnose、Modify 还是 Robot Integration；
- 目前能够确认的理解与真实断点；
- 时间、风险和必须继续推进的工程边界；
- 当前源码、文档、论文或现场材料。

## 下游应判断

- 当前责任要求的 Engineering Control；
- 现在必须理解什么；
- 暂时可以不深入什么；
- 误解会造成什么风险；
- 何种事件必须回来偿还 Knowledge Debt。

Knowledge Debt 最少记录：

```text
Topic
Why deferred
Current safe assumption
Trigger to revisit
```

## 切换条件

- 最小理解已足够支持当前责任 → 返回工程主线；
- 已明确要真正学习、讲解或形成笔记 → Knowledge Learning & Notes；
- 知识问题其实是未知故障 → Debug / Experiment。

正式依据：[Learning / Knowledge Debt Playbook](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/Learning_Knowledge_Debt.md)
