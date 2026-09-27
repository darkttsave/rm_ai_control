# Recognition Card — Project Stages

> 判断对象：项目认识与里程碑是否进入下一阶段。

## P0 — Domain Orientation

**信号**：正在接触陌生方向，尚未形成可靠领域地图，主要问题是“这个领域由什么组成”。

**提供**

- 开始：`PROJECT_PRELUDE_PROMPT_CARDS.md` 的 P0 卡；
- 未完成但换对话：`STAGE_CHECKPOINT_TEMPLATE.md` → `DOMAIN_ORIENTATION_CHECKPOINT.md`；
- 已完成：`DOMAIN_ORIENTATION_REPORT_TEMPLATE.md` → `DOMAIN_ORIENTATION_REPORT.md`。

**不要**：把探索性讨论当成已确认的项目事实。

**离开信号**：领域地图已足以支持正式接手后的现实调查，或 Human 明确跳过 P0。

## P1 — Reality Acquisition

**信号**：已正式接手，但团队、代码、流程与约束的实际情况不清；主要问题是“现状到底是什么”。

**提供**

- 开始：`PROJECT_PRELUDE_PROMPT_CARDS.md` 的 P1 卡；
- 未完成但换对话：`STAGE_CHECKPOINT_TEMPLATE.md` → `TEAM_REALITY_CHECKPOINT.md`；
- 已完成：`TEAM_REALITY_REPORT_TEMPLATE.md` → `TEAM_REALITY_REPORT.md`。

**不要**：用理想流程代替真实现状；关键事实未明时不要锁定项目方案。

**离开信号**：现实、关键约束和主要未知项足以支持项目入口设计。

## P2 — Project Inception

**信号**：团队现实已经清楚，但项目边界、首个里程碑、验证方式或推进入口仍不清楚。

**提供**

- 开始：`PROJECT_PRELUDE_PROMPT_CARDS.md` 的 P2 卡；
- 未完成但换对话：`STAGE_CHECKPOINT_TEMPLATE.md` → `PROJECT_INCEPTION_CHECKPOINT.md`；
- 已完成：`PROJECT_INCEPTION_REPORT_TEMPLATE.md` → `PROJECT_INCEPTION_REPORT.md`。

**不要**：把“列出很多任务”误认为里程碑清楚；验收和边界未明时不要交给执行体。

**离开信号**：首个里程碑、当前事实、边界与验证方式已经清楚。

## Main Supervisor — Milestone Execution

**信号**：当前里程碑明确，需要持续拆分、分派、收回与验证；问题已从“项目是什么”转为“如何可靠推进”。

**提供**

- 首次启动：`entries/Supervisor_Entry.md` + `PROJECT_INCEPTION_REPORT.md` + 当前事实/状态 + 里程碑材料；
- Supervisor 更换：`SUPERVISOR_SNAPSHOT_TEMPLATE.md`；
- 独立深挖：转入 Specialist 工作流；
- 明确实现：转入 Executor 工作流。

**不要**

- 不要因为开启 Specialist/Executor 就重走 P0/P1/P2；
- 不要用 Supervisor Snapshot 代替阶段 Report；
- 现有材料仍能构成统一当前真相时，不要机械创建 `PROJECT_STATE.md`。

## 总判断

项目阶段看的是“对项目的认识和里程碑是否变化”，不是换了几次对话或几个 AI。

正式依据：[Protocol Usage Guide](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/USAGE_GUIDE.md)
