# Project Prelude — 项目先导

> Project Prelude 解决：**一个项目还没有真正开始时，如何从“可能负责一个陌生方向”走到“知道项目为什么做、队伍现在是什么、第一步从哪里开始”。**
>
> Prelude 不是审批流，也不是所有项目必须完整执行的固定流水线。

原则：

> **从最早仍存在关键未知的阶段进入；已经明确的阶段可以跳过或缩短。**

具体“开什么对话、上传什么、复制哪段生成指令”统一见：`USAGE_GUIDE.md`。

------------------------------------------------------------------------

# 1. Prelude 总览

``` text
P0 Domain Orientation
        ↓
正式任务确认 / 开始交接
        ↓
P1 Reality Acquisition
        ↓
P2 Project Inception
        ↓
First Milestone
        ↓
正式项目运行
```

| 阶段 | 核心问题 |
|---|---|
| P0 Domain Orientation | 这个方向通常是什么？ |
| P1 Reality Acquisition | 我们队实际上有什么？ |
| P2 Project Inception | 基于现实，我们现在从哪里开始？ |

------------------------------------------------------------------------

# 2. P0 — Domain Orientation

## Purpose

建立最低限度的领域轮廓，使人未来正式接手时能够提出正确的问题。

## Entry Condition

典型情况：

- 可能负责一个方向，但尚未正式确认；
- 对领域陌生；
- 需要先理解规则、技术框架、开源 Landscape 或通识知识。

## Working Environment

默认：**普通对话。**

不需要 Main Supervisor、正式 Workspace、Project State 或 Specialist Entry。

## Inputs

优先使用：

- 官方规则 / 官方技术资料；
- 论文 / 技术资料；
- 开源项目；
- 通识知识；
- 已有个人笔记。

## Do

建立：

- 规则轮廓；
- 高层系统地图；
- 技术框架；
- 开源 Landscape；
- 必要知识地图；
- 未来需要向队伍确认的问题。

## Do Not

不要：

- 替尚未明确的真实项目定架构；
- 选择“我们一定应该用哪个仓库”；
- 制定正式赛季 Milestone；
- 开始大规模工程实现；
- 把外部项目方案当成本队事实。

## Exit Condition

> **如果明天正式接手，我知道应该问谁、拿什么资料、确认什么。**

## Artifact Contract

| Trigger | Template | Output | Next Consumer |
|---|---|---|---|
| P0 未结束但换对话 | `templates/STAGE_CHECKPOINT_TEMPLATE.md` | `DOMAIN_ORIENTATION_CHECKPOINT.md` | 新 P0 对话 |
| P0 达到 Exit Condition | `templates/DOMAIN_ORIENTATION_REPORT_TEMPLATE.md` | `DOMAIN_ORIENTATION_REPORT.md` | P1 / P2 |

不能只说“生成 Report”；具体可复制生成指令见 `USAGE_GUIDE.md` §2。

------------------------------------------------------------------------

# 3. P1 — Reality Acquisition

## Purpose

恢复本队真实的历史、资产、约束和经验。

## Entry Condition

- 方向已经正式确认；
- 或已经开始正式任务交接；
- 但对队内现状还缺乏可靠认识。

## Working Environment

默认仍可以是普通对话。若已有成熟工程入口，可以在仓库环境中辅助读取事实。

## Inputs

现实来源优先级通常：

``` text
学长 / 上届负责人
↓
队内代码 / Git
↓
机械 / 电控现状
↓
实验数据
↓
历史总结 / 比赛记录
↓
外部开源
```

## Do

恢复：

- 去年做到哪里；
- 已有代码 / 硬件 / 数据资产；
- 为什么做到这里；
- 已知失败与限制；
- 当前真实约束；
- 当前 Unknown。

持续区分：

``` text
Verified Fact
Team Experience / Judgment
Unknown
External Reference
```

## Do Not

不要因为看到更漂亮的外部方案就自动推翻传承、立即重构、重新设计整个系统，或把“可能更好”写成“当前必须改”。

## Working Loop

``` text
获取一批现实信息
→ 更新事实
→ 暴露新的 Unknown
→ 再获取信息
→ 更新 Reality
```

## Exit Condition

能够比较可信地描述：

- 去年做到哪里；
- 当前有什么；
- 为什么如此；
- 当前主要问题；
- 当前约束；
- 哪些事情仍未知。

## Artifact Contract

| Trigger | Template | Output | Next Consumer |
|---|---|---|---|
| P1 未结束但换对话 | `templates/STAGE_CHECKPOINT_TEMPLATE.md` | `TEAM_REALITY_CHECKPOINT.md` | 新 P1 对话 |
| P1 达到 Exit Condition | `templates/TEAM_REALITY_REPORT_TEMPLATE.md` | `TEAM_REALITY_REPORT.md` | P2 |

具体生成指令见 `USAGE_GUIDE.md` §3。

------------------------------------------------------------------------

# 4. P2 — Project Inception

## Purpose

把：

``` text
Domain Orientation
+
Team Reality
+
当前正式目标
```

收敛成一个真正可开始的项目入口。

## Entry Condition

至少：

- 任务目标足够明确；
- 队内现实基本恢复；
- 已经有足够信息判断第一步。

## Working Environment

默认是普通项目设计对话，不要求一开始就建立 Main Supervisor。

## Inputs

- `DOMAIN_ORIENTATION_REPORT.md`（如有）；
- `TEAM_REALITY_REPORT.md`；
- 当前赛季正式目标 / 规则；
- 已知时间、硬件、人员、接口等约束。

## Do

只收敛五项：

1. **Mission** — 今年到底解决什么现实问题？
2. **System Map** — 实际面对什么系统边界？
3. **Asset / Gap** — 已有什么，缺什么？
4. **Entry Strategy** — 从既有代码、开源、知识、Experiment、Replay 等哪里切入？
5. **First Milestone** — 第一个真正可验证的里程碑。

## Do Not

不要：

- 一次规划整个赛季；
- 实现大量未来需求；
- 为“以后可能有用”提前建立复杂框架；
- 强行解决所有 Unknown。

## Exit Condition

能够回答：

``` text
现在具体做什么？
为什么先做这个？
First Milestone 是什么？
如何证明它完成？
下一步是什么？
```

## Artifact Contract

| Trigger | Template | Output | Next Consumer |
|---|---|---|---|
| P2 未结束但换对话 | `templates/STAGE_CHECKPOINT_TEMPLATE.md` | `PROJECT_INCEPTION_CHECKPOINT.md` | 新 P2 对话 |
| P2 达到 Exit Condition | `templates/PROJECT_INCEPTION_REPORT_TEMPLATE.md` | `PROJECT_INCEPTION_REPORT.md` | Main Supervisor |

P2 完成后，才考虑建立正式 Project Workspace、建立 / 恢复 Project State、创建 Main Supervisor。

具体生成指令见 `USAGE_GUIDE.md` §4。

------------------------------------------------------------------------

# 5. Prelude 的跳阶段规则

不要机械执行 `P0 → P1 → P2`。

- 陌生新方向：通常 `P0 → P1 → P2`。
- 已经知道方向，但刚接手旧项目：可直接 `P1 → P2`。
- 学长已经把成熟项目、目标、边界和第一步都说清楚：P1 / P2 可以很短。
- 只是接一个非常明确的小模块：可能完全不需要完整 Prelude。

------------------------------------------------------------------------

# 6. Prelude 与 Project Assimilation 的边界

**Reality Acquisition** 问：

> 我们队现在有什么？

对象包括人、历史、代码、机械、电控、数据、经验、已知失败。

**Project Assimilation** 问：

> 一个已经确定需要接管的工程 / 仓库，我怎么快速获得工程控制力？

所以 P1 中可以出现：

``` text
发现重要旧仓库
→ 调用 Project Assimilation
→ 理解仓库
→ 把结果写回 Reality
```

Project Assimilation 是 Playbook；P1 是生命周期阶段。

------------------------------------------------------------------------

# 7. Prelude 的连续性

P0 / P1 / P2 都可能跨多个对话，但不要为三个阶段各建一套记忆系统。

统一使用：

``` text
Context Health
Checkpoint
Carry Forward
Report
```

阶段未结束：Checkpoint → 新同阶段对话。

阶段结束：Report → 下一阶段。

Checkpoint / Report 必须按模板生成，不让 AI 临场发明格式。

详见：

- `common/Conversation_Continuity.md`
- `common/Context_Health.md`
- `USAGE_GUIDE.md`
