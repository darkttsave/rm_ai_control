# USAGE GUIDE — v2.3 人类实际使用说明

> 这是 v2.3 最重要的操作文档。
>
> 它只回答：**我现在该开什么对话、给它什么、什么时候生成什么文件、按哪个模板生成、生成后交给谁。**
>
> 如果你只是想先判断自己处在哪个阶段，看 `START_HERE.md`。

------------------------------------------------------------------------

# 0. 先记住一条：正式产物不能让 AI 自己发明格式

本协议里凡是出现：

- `...CHECKPOINT.md`
- `...REPORT.md`
- `...SNAPSHOT.md`
- `...BRIEF.md`
- `...RETURN.md`

都不是一句“让 AI 总结一下”就结束。

每个正式产物必须明确五件事：

``` text
什么时候生成（Trigger）
→ 用哪个模板（Template）
→ 对 AI 说什么（Generation Prompt）
→ 输出叫什么（Output File）
→ 下一步交给谁（Next Consumer）
```

## 0.1 Conversation 看不到协议文件时怎么办

普通聊天**不能默认访问你电脑上的协议包**。

所以如果下面写着：

``` text
使用 templates/XXX_TEMPLATE.md
```

实际操作是：

1. 把这个模板文件上传给当前对话，或把模板内容粘贴进去；
2. 再发送对应的生成指令；
3. 要求 AI **严格按模板标题结构填写**，不要自行改成另一套格式。

如果当前对话已经能可靠访问该文件，则只需引用路径。

## 0.2 AI 填模板时的基本规则

- 没有证据支持的内容写 `Unknown`，不要补猜测；
- Fact / Judgment / Hypothesis / Unknown 按模板要求分开；
- 不复制完整聊天；
- 不为了“看起来完整”制造不存在的结论；
- `Carry Forward` 只写下一阶段真的必须带走的内容。

------------------------------------------------------------------------

# 1. 先判断你现在处在哪一层

``` text
只是可能进入一个陌生方向
→ P0 Domain Orientation

已经正式接手，但队伍现状不清楚
→ P1 Reality Acquisition

队伍现状基本清楚，但项目切入点不清楚
→ P2 Project Inception

First Milestone 已明确
→ Main Supervisor

正式项目中的一个深问题
→ Specialist

已经有明确方案，需要改仓库 / 构建 / 测试
→ Work / Executor
```

**不要求每个项目完整走完所有阶段。**

从最早仍存在关键未知的阶段进入。

------------------------------------------------------------------------

# 2. P0 Domain Orientation

## 2.1 开什么

开一个普通 ChatGPT 对话。

不用建立：

- Project Workspace；
- Main Supervisor；
- Project State。

## 2.2 第一次给什么

最方便的做法：打开

`templates/PROJECT_PRELUDE_PROMPT_CARDS.md`

复制其中的 **P0 — Domain Orientation 启动卡**，填完方括号内容后发送。

按需再提供：

- 官方规则；
- 官方技术资料；
- 论文 / 技术资料；
- 开源仓库；
- 自己已有笔记。

不要默认把整个队内仓库、整套协议或大量旧聊天塞进去。

## 2.3 P0 中途怎么继续

可以自然地：

``` text
先看规则
→ 看一个开源
→ 发现陌生知识
→ 补这个知识
→ 再看另一个开源
```

当前对话要持续区分：

- Verified External Fact / Rule；
- Current Understanding；
- Unknown；
- 必须等待 P1 才能确认的 Team Reality。

## 2.4 P0 对话太长：生成 Checkpoint

**Trigger：** P0 还没结束，但当前聊天准备换代。

**Template：** `templates/STAGE_CHECKPOINT_TEMPLATE.md`

**Output：** `DOMAIN_ORIENTATION_CHECKPOINT.md`

**怎么操作：**

1. 把 `STAGE_CHECKPOINT_TEMPLATE.md` 提供给当前 P0 对话；
2. 发送：

``` text
当前 P0 还没有结束，但这个对话需要交接。
请严格按照我提供的 STAGE_CHECKPOINT_TEMPLATE.md 生成：
DOMAIN_ORIENTATION_CHECKPOINT.md。

Current Stage 写 P0 Domain Orientation。
只记录当前对话和已提供资料能够支持的内容；
Verified Facts 与 Current Understanding / Hypotheses 分开；
保留下一轮继续所需的关键材料锚点；
不要写成完整聊天摘要；
不要提前替 P1 / P2 做项目决定。
```

**下一步交给谁：** 新开的 P0 对话。

新 P0 对话只带：

``` text
P0 启动卡
+
最新 DOMAIN_ORIENTATION_CHECKPOINT.md
+
Checkpoint 指定的必要材料
+
本轮新增资料
```

然后说：

``` text
这是上一轮 P0 的最新 Checkpoint。
请先恢复 Current Goal、Verified Facts、Decisions / Boundaries、Open Questions 和 Next Step，
然后从 Next Step 继续；不要重新从头整理已经完成的内容。
```

## 2.5 P0 真正完成：生成正式 Report

**Trigger：** 已达到“如果明天正式接手，我知道应该问谁、拿什么资料、确认什么”。

**Template：** `templates/DOMAIN_ORIENTATION_REPORT_TEMPLATE.md`

**Output：** `DOMAIN_ORIENTATION_REPORT.md`

**怎么操作：**

把模板提供给当前 P0 对话，然后发送：

``` text
我认为当前 P0 Domain Orientation 已经可以结束。
请严格按照我提供的 DOMAIN_ORIENTATION_REPORT_TEMPLATE.md 生成：
DOMAIN_ORIENTATION_REPORT.md。

只使用当前对话和已提供资料支持的内容；
区分外部事实、当前理解、Team Reality Unknown；
列出实际使用过的重要来源；
不虚构队伍现状；
不提前替真实项目决定正式架构或 Milestone；
Carry Forward 要能直接服务后续 P1 / P2。
```

**下一步交给谁：** P1 Reality Acquisition；如果 P1 已经被现实材料覆盖，也可以作为 P2 的背景输入。

------------------------------------------------------------------------

# 3. P1 Reality Acquisition

## 3.1 开什么

仍然可以只是普通对话。

## 3.2 第一次给什么

复制 `templates/PROJECT_PRELUDE_PROMPT_CARDS.md` 里的 **P1 — Reality Acquisition 启动卡**。

至少提供：

``` text
当前正式任务 / 责任边界
+
DOMAIN_ORIENTATION_REPORT.md（如果有）
+
目前已经知道的队内事实
+
目前最大的 Unknown
```

随后逐步提供现实材料，通常优先：

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

P1 第一职责是恢复现实，不是设计新系统。

## 3.3 P1 对话太长：生成 Checkpoint

**Trigger：** P1 还没结束，但当前聊天准备换代。

**Template：** `templates/STAGE_CHECKPOINT_TEMPLATE.md`

**Output：** `TEAM_REALITY_CHECKPOINT.md`

发送：

``` text
当前 P1 Reality Acquisition 还没有结束，但这个对话需要交接。
请严格按照我提供的 STAGE_CHECKPOINT_TEMPLATE.md 生成：
TEAM_REALITY_CHECKPOINT.md。

Current Stage 写 P1 Reality Acquisition。
Verified Fact、Team Judgment、Unknown 分开；
列出下一轮仍需访问的关键现实材料；
不把未核实的学长判断改写成事实；
不提前进入 P2 的正式路线收敛。
```

新 P1 对话带：

``` text
P1 启动卡
+
最新 TEAM_REALITY_CHECKPOINT.md
+
Checkpoint 指定的现实材料
+
新获得的交接材料
```

## 3.4 P1 完成：生成 Team Reality Report

**Trigger：** 已经能比较可信地说明“去年做到哪里、现在有什么、为什么如此、当前约束和 Unknown 是什么”。

**Template：** `templates/TEAM_REALITY_REPORT_TEMPLATE.md`

**Output：** `TEAM_REALITY_REPORT.md`

发送：

``` text
我认为当前 P1 Reality Acquisition 已经基本完成。
请严格按照我提供的 TEAM_REALITY_REPORT_TEMPLATE.md 生成：
TEAM_REALITY_REPORT.md。

只写有来源支持的队内现实；
Verified Fact 与 Team Experience / Judgment 分开；
明确代码、硬件、数据、经验资产；
明确当前约束、Blocker 和 Unknown；
不因为外部方案更先进就改写本队历史；
Carry Forward 要能直接服务 P2 Project Inception。
```

**下一步交给谁：** P2 Project Inception。

------------------------------------------------------------------------

# 4. P2 Project Inception

## 4.1 开什么

普通项目设计对话即可。

此时仍然不要求先建立 Main Supervisor。

## 4.2 第一次给什么

复制 `templates/PROJECT_PRELUDE_PROMPT_CARDS.md` 里的 **P2 — Project Inception 启动卡**。

必须提供：

``` text
TEAM_REALITY_REPORT.md
+
当前赛季正式目标 / 规则
+
已知硬约束
```

按需提供：

``` text
DOMAIN_ORIENTATION_REPORT.md
+
P1 Carry Forward 指定的关键原始证据
```

P2 只收敛：

1. Mission
2. System Map
3. Asset / Gap
4. Entry Strategy
5. First Milestone

## 4.3 P2 对话太长：生成 Checkpoint

**Template：** `templates/STAGE_CHECKPOINT_TEMPLATE.md`

**Output：** `PROJECT_INCEPTION_CHECKPOINT.md`

发送：

``` text
当前 P2 Project Inception 还没有结束，但这个对话需要交接。
请严格按照我提供的 STAGE_CHECKPOINT_TEMPLATE.md 生成：
PROJECT_INCEPTION_CHECKPOINT.md。

Current Stage 写 P2 Project Inception。
记录已经收敛的 Mission / System Boundary / Asset-Gap 判断；
把尚未决定的方案保持为 Open Question；
不把临时讨论写成 Locked Decision；
写清下一轮需要继续收敛的第一件事。
```

## 4.4 P2 完成：生成 Project Inception Report

**Trigger：** 已经能回答“现在做什么、为什么先做这个、First Milestone 是什么、如何验证”。

**Template：** `templates/PROJECT_INCEPTION_REPORT_TEMPLATE.md`

**Output：** `PROJECT_INCEPTION_REPORT.md`

发送：

``` text
我认为当前 P2 Project Inception 已经可以结束。
请严格按照我提供的 PROJECT_INCEPTION_REPORT_TEMPLATE.md 生成：
PROJECT_INCEPTION_REPORT.md。

基于已经提供的 Domain Orientation / Team Reality / 当前规则和约束；
First Milestone 必须有 Done Criteria 和 Required Verification Level；
区分 Locked Decisions 与 Explicitly Deferred；
不一次规划整个赛季；
不把仍未知的内容伪装成既定方案；
Carry Forward 要足以启动 Main Supervisor。
```

**下一步交给谁：** Main Supervisor。

------------------------------------------------------------------------

# 5. Prelude 三阶段到底交什么

| 从哪里 | 到哪里 | 必须带 | 按需带 | 不要默认带 |
|---|---|---|---|---|
| P0 → P0 新对话 | 同阶段继续 | P0 启动卡 + `DOMAIN_ORIENTATION_CHECKPOINT.md` | Checkpoint 指定资料、新资料 | P0 全聊天 |
| P0 → P1 | 现实交接 | `DOMAIN_ORIENTATION_REPORT.md` | 关键规则 / 开源原始材料 | P0 全聊天 |
| P1 → P1 新对话 | 同阶段继续 | P1 启动卡 + `TEAM_REALITY_CHECKPOINT.md` | 新交接材料 | 全部历史聊天 |
| P1 → P2 | 项目收敛 | `TEAM_REALITY_REPORT.md` | P0 Report、关键原始证据 | 全部学长聊天 / 整仓库 |
| P2 → Supervisor | 正式项目 | `PROJECT_INCEPTION_REPORT.md` | First Milestone 直接相关材料 | 完整 P0/P1/P2 历史 |

原则：

> **Report 是导航层；原始材料是证据层。**

下一阶段有疑问时，再回查证据层。

------------------------------------------------------------------------

# 6. Main Supervisor：第一次建立与换代

## 6.1 第一次建立 Supervisor

新对话至少提供：

1. `entries/Supervisor_Entry.md`
2. `PROJECT_INCEPTION_REPORT.md`
3. 当前项目事实来源 / `PROJECT_STATE.md`（如果已经存在）
4. First Milestone 直接相关材料

不要默认发送完整 P0 / P1 / P2 聊天。

## 6.2 Supervisor 对话太长：生成 Snapshot

**Trigger：** Main Supervisor 仍在同一项目主线中，但当前聊天准备换代。

**Template：** `templates/SUPERVISOR_SNAPSHOT_TEMPLATE.md`

**Output：** `SUPERVISOR_SNAPSHOT.md`

把模板提供给当前 Supervisor，然后发送：

``` text
当前项目仍在继续，但这个 Main Supervisor 对话需要交接。
请严格按照 SUPERVISOR_SNAPSHOT_TEMPLATE.md 生成：
SUPERVISOR_SNAPSHOT.md。

只保存当前主线工作态，不写完整历史；
只使用可靠的当前事实和已做出的决定；
列出活跃 Specialist、当前 Blocker、Verification Pending 和 Next Step；
不要把临时讨论写成 Project State。
```

新 Supervisor 提供：

``` text
entries/Supervisor_Entry.md
+
当前 Project State / 当前事实来源
+
最新 SUPERVISOR_SNAPSHOT.md
+
Snapshot 指定的必要材料
```

------------------------------------------------------------------------

# 7. Supervisor → Specialist：怎么生成 Brief

不要让用户手工重新写一大段项目背景。

**Trigger：** 主线出现一个需要独立深入分析 / 学习 / Debug / 局部设计的问题。

**Template：** `templates/SPECIALIST_BRIEF_TEMPLATE.md`

**Output：** `SPECIALIST_BRIEF.md`

向 Supervisor 发送：

``` text
这个问题需要开一个新的 Specialist 对话。
请严格按照 SPECIALIST_BRIEF_TEMPLATE.md 生成 SPECIALIST_BRIEF.md。

只携带改变专项判断所需的最小充分上下文；
必须写清 Parent Goal、Specialist Question、Known Facts、Scope、Locked Decisions、Need From Specialist、Required Evidence、Relevant Sources 和 Return Condition；
不要复制整个项目历史。
```

然后新开 Specialist，对它提供：

1. `entries/Specialist_Entry.md`
2. `SPECIALIST_BRIEF.md`
3. Brief 指定的文件 / 日志 / 数据
4. Brief 指定的 Playbook（如果有）

------------------------------------------------------------------------

# 8. Specialist：换对话与回主线

## 8.1 Specialist 太长，但专项还没结束

使用：`templates/STAGE_CHECKPOINT_TEMPLATE.md`

输出：`SPECIALIST_CHECKPOINT.md`

发送：

``` text
当前 Specialist 专项还没有结束，但这个对话需要交接。
请严格按照 STAGE_CHECKPOINT_TEMPLATE.md 生成 SPECIALIST_CHECKPOINT.md。

Current Stage 写 Specialist；
必须保留 Specialist Question、已确认事实、已经排除什么、当前 Hypothesis / Decision、Open Questions、必要材料和 Next Step；
不要写成完整聊天摘要。
```

新 Specialist 提供：

``` text
entries/Specialist_Entry.md
+
原 SPECIALIST_BRIEF.md
+
最新 SPECIALIST_CHECKPOINT.md
+
Checkpoint 指定材料
```

## 8.2 Specialist 已经得出影响主线的结论

**Template：** `templates/SPECIALIST_RETURN_TEMPLATE.md`

**Output：** `SPECIALIST_RETURN.md`

发送：

``` text
这个专项已经得到足以返回主线的结果。
请严格按照 SPECIALIST_RETURN_TEMPLATE.md 生成 SPECIALIST_RETURN.md。

只保留主线下一步需要的结论、证据、已排除项、仍未知、对主项目的影响和建议下一步；
不要复制完整推理过程；
如果需要 Human / Supervisor 决策，在 Decision Needed 中明确写出。
```

把 `SPECIALIST_RETURN.md` 交回 Main Supervisor。

普通 Side Question 如果不影响主线，不需要强制生成正式 Return。

------------------------------------------------------------------------

# 9. Specialist / Supervisor → Work：怎么生成 Task Brief

当实现方案已经足够明确时，才进入 Work。

**Template：** `templates/TASK_BRIEF_TEMPLATE.md`

**Output：** `TASK_BRIEF.md`

向负责收敛方案的 Specialist 或 Supervisor 发送：

``` text
这个任务已经足够明确，可以交给 Work / Executor。
请严格按照 TASK_BRIEF_TEMPLATE.md 生成 TASK_BRIEF.md。

只携带实现判断真正需要的上下文；
必须明确 Goal、Required Verification Level、Known Facts、Scope、Locked Decisions / Invariants、Expected Behavior、Verification 和 Stop / Human Gate Conditions；
不要把完整分析过程原样倾倒给 Work。
```

如果协议已经在 Workspace，Work 通常只需要：

``` text
TASK_BRIEF.md
+
TASK_BRIEF 指定的材料
```

根目录 `AGENTS.md` 负责读取协议和执行纪律。

## 9.1 Work 完成后

Work 应按：

`templates/TASK_REPORT_TEMPLATE.md`

输出人类可读 Task Report，并明确：

- 实际修改；
- 验证证据；
- Current Verification Level；
- Pending / Blocked；
- Debt / Temporary；
- 如果现在出问题第一步查哪里。

重要结果再交回 Specialist / Supervisor。

------------------------------------------------------------------------

# 10. 简单任务可以直接 Work

如果任务已经非常明确，例如：

> 删除一个确认无使用者的旧内部函数。

不必为了形式创建 Specialist。

可以：

``` text
Supervisor / Human
→ TASK_BRIEF.md
→ Work
```

核心判断不是角色数量，而是：

> **下游是否已经拥有完成任务所需的最小充分上下文。**

------------------------------------------------------------------------

# 11. PROJECT_STATE 什么时候才创建

不要因为协议里有模板就机械创建。

先看：`project/Project_State_Convention.md`

只有当原仓库的 README / docs / Issues / 当前记录已经不足以形成统一事实入口时，才考虑：

`templates/PROJECT_STATE_TEMPLATE.md`

生成 / 更新 `PROJECT_STATE.md`。

它保存**当前工程真相**，不是 Supervisor 的工作笔记，也不是历史日志。

------------------------------------------------------------------------

# 12. Context Health：什么时候该主动换对话

不要按“聊了多少条”机械切换。

### Green

还能可靠恢复：

- Current Goal；
- Verified Facts；
- Locked Decisions；
- Current Scope；
- Next Step。

→ 继续。

### Yellow

开始出现：

> “之前好像说过……”

或早期约定难定位、支线太多、准备进入高风险工作。

→ Re-anchor；必要时准备 Checkpoint / Snapshot。

### Red

已经不能可靠恢复 Goal / Facts / Decisions / Scope，或当前理解与持久化事实冲突。

→ 停止重大判断，先恢复 / 交接。

详见：`common/Context_Health.md`

------------------------------------------------------------------------

# 13. Playbook 到底谁决定

先看：`PLAYBOOK_INDEX.md`

最短判断：

``` text
陌生方向、还没正式接任务
→ Project Prelude

刚接手已有 RM / 开源仓库
→ Project Assimilation

不知道为什么出问题
→ Debug / Experiment

跨模块联调 / 上真机 / 安全
→ Integration / Safety

已经明确准备重构
→ Architecture / Refactor

陌生知识阻塞当前工程，不知道现在学多少才够
→ Learning / Knowledge Debt

已经决定真正学习 / 讲解 / 读源码 / 形成长期笔记
→ Knowledge Learning & Notes

讨论 C++ 工程组织
→ C++ Architecture

普通、明确的小实现
→ 通常不需要 Playbook
```

Conversation 无法访问某个 Playbook 时，Supervisor / Specialist 应明确告诉用户需要上传哪一份，而不是假装已经读过。

------------------------------------------------------------------------

# 14. 冷启动与热启动

### Cold Start

新角色完全没有可靠上下文：

``` text
Entry / Stage Prompt
+
Current Truth
+
当前任务
+
必要材料
```

### Warm Start

下游已经拥有可靠项目上下文：

``` text
当前任务 Delta
+
变化的事实
+
Locked Decisions
+
Verification Target
```

原则：

> **冷启动传基线，热启动传差量。**

------------------------------------------------------------------------

# 15. 最常见的四个错误

### 错误 1：只说“生成 XXX”

这会让 AI 自己发明格式。

正确：

``` text
Trigger
+ Template
+ Generation Prompt
+ Output File
+ Next Consumer
```

### 错误 2：把完整聊天当 Memory

正确使用：Checkpoint / Report / Snapshot / Brief / State。

### 错误 3：为了完整把所有文件都塞给下游

正确：只给改变当前判断所需的材料；其余保持可回查。

### 错误 4：为了短而删掉关键语义

“帮我把这个改好”不足以描述主干任务。

至少要让下游知道 Goal、Scope、关键事实 / Invariants、Verification、Stop Conditions。

------------------------------------------------------------------------

# 16. 一页速查：正式产物对应什么模板

| 产物 | 什么时候生成 | 模板 | 下一位使用者 |
|---|---|---|---|
| `DOMAIN_ORIENTATION_CHECKPOINT.md` | P0 未结束但换对话 | `STAGE_CHECKPOINT_TEMPLATE.md` | 新 P0 |
| `DOMAIN_ORIENTATION_REPORT.md` | P0 完成 | `DOMAIN_ORIENTATION_REPORT_TEMPLATE.md` | P1 / P2 |
| `TEAM_REALITY_CHECKPOINT.md` | P1 未结束但换对话 | `STAGE_CHECKPOINT_TEMPLATE.md` | 新 P1 |
| `TEAM_REALITY_REPORT.md` | P1 完成 | `TEAM_REALITY_REPORT_TEMPLATE.md` | P2 |
| `PROJECT_INCEPTION_CHECKPOINT.md` | P2 未结束但换对话 | `STAGE_CHECKPOINT_TEMPLATE.md` | 新 P2 |
| `PROJECT_INCEPTION_REPORT.md` | P2 完成 | `PROJECT_INCEPTION_REPORT_TEMPLATE.md` | Main Supervisor |
| `SUPERVISOR_SNAPSHOT.md` | Supervisor 换代 | `SUPERVISOR_SNAPSHOT_TEMPLATE.md` | 新 Supervisor |
| `SPECIALIST_BRIEF.md` | 新开专项 | `SPECIALIST_BRIEF_TEMPLATE.md` | Specialist |
| `SPECIALIST_CHECKPOINT.md` | Specialist 未结束但换代 | `STAGE_CHECKPOINT_TEMPLATE.md` | 新 Specialist |
| `SPECIALIST_RETURN.md` | 专项结论回主线 | `SPECIALIST_RETURN_TEMPLATE.md` | Supervisor |
| `TASK_BRIEF.md` | 方案明确，交给执行体 | `TASK_BRIEF_TEMPLATE.md` | Work / Executor |
| `Task Report` | Work 完成一轮执行 | `TASK_REPORT_TEMPLATE.md` | Human / Specialist / Supervisor |
| `PROJECT_STATE.md` | 项目缺统一当前事实入口 | `PROJECT_STATE_TEMPLATE.md` | 项目各角色 |
| `LEARNING_REQUEST.md`（可直接使用模板内容，不一定长期保存） | 新开知识学习对话 | `LEARNING_REQUEST_TEMPLATE.md` | 当前 Knowledge Conversation |
| `LEARNING_THREAD_STATE.md` | 同一知识主题换对话 / 长期暂停 | `LEARNING_THREAD_STATE_TEMPLATE.md` | 新 Knowledge Conversation |
| `Learning State Patch` | 出现长期认知变化 | `LEARNING_STATE_TEMPLATE.md` Patch Convention | 用户确认后更新 Learning State |
| `Knowledge Asset Index Patch` | 正式知识资产发生变化 | `KNOWLEDGE_ASSET_INDEX_TEMPLATE.md` | 后续知识对话 |

------------------------------------------------------------------------

# 17. Knowledge Layer：真正学习、讲解与笔记

这部分可以出现在 P0、P1、P2 或正式项目中的任何阶段。

## 17.0 第一次启用 v2.3

如果还没有 Learning State / Knowledge Asset Index：

> 不要先做全量知识库盘点。

使用：

- `templates/LEARNING_STATE_TEMPLATE.md`；
- `templates/KNOWLEDGE_ASSET_INDEX_TEMPLATE.md`；
- `templates/KNOWLEDGE_PROMPT_CARDS.md` 的 **Card 0**。

只建立当前 / 近期项目真正会复用的最小状态，后续增量维护。

Learning State 可以由 AI 起草，但最终状态由用户确认。

先区分：

``` text
不知道“现在需不需要学 / 学到什么程度”
→ playbooks/Learning_Knowledge_Debt.md

已经决定真正学习 / 讲解 / 读源码 / 整理长期笔记
→ playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md
```

## 17.1 新开知识学习对话

### Trigger

你需要真正理解一个知识，而不是只执行一个明确任务。

### Inputs

通常提供：

1. Knowledge Playbook（普通 Conversation 无法访问协议时）；
2. Learning State 的 Overview + 本轮相关 Detail；
3. Knowledge Asset Index 的 Overview + 本轮相关 Detail；
4. 按 `LEARNING_REQUEST_TEMPLATE.md` 填写的本轮真实需求；
5. 当前代码 / 文档 / 论文 / 截图 / 项目背景。

如果是普通独立 Conversation、无法访问协议，而且预计是长期 / 多会话学习，可按需额外提供 `common/Context_Health.md`；真正准备交接时再使用 `common/Handoff_Protocol.md`。

不要把完整学习历史和全部知识库一次性塞进去，也不要为了十分钟答疑机械加载整套 common。

### Prompt

直接使用：

`templates/KNOWLEDGE_PROMPT_CARDS.md` 的 **Card 1**。

### Result

正常学习对话。

默认**不生成**：

- Learning State Patch；
- Learning Thread State；
- 正式 Note；
- Asset Index Patch。

只有真实事件触发时才生成。

---

## 17.2 AI 怎么切换讲解方式

用户不负责操作 Mode。

AI 根据当前意图主动调整。

``` text
小范围补充
→ 静默完成

明显从“怎么用”进入“为什么”之类的新方向
→ 用 1～3 句说明原因 + 接下来大致路线，然后继续

继续深入会显著扩大范围 / 时间成本
→ 说明当前真正需要哪一层 + 深入后的范围，让用户决定
```

因此用户只需要继续正常提问。

---

## 17.3 同一知识主题换对话

### Trigger

- Context Health 进入 Yellow / Red；
- 当前聊天太长；
- 准备暂停很久；
- 一个阶段结束但主题未来还要继续。

### Template

`templates/LEARNING_THREAD_STATE_TEMPLATE.md`

### Generation Prompt

使用 `templates/KNOWLEDGE_PROMPT_CARDS.md` 的 **Card 2**。

### Output

`LEARNING_THREAD_STATE.md`

### Next Consumer

新的同主题学习对话。

不要复制完整聊天记录。

**项目 Specialist 例外：** 如果当前学习对话本身就是 Specialist，继续使用既有 `SPECIALIST_CHECKPOINT.md`，把 Learning Goal / Confirmed Understanding / Gap / Asset / Next Direction 写进其中；不要为了 Knowledge Layer 再维护第二份 Checkpoint。

---

## 17.4 Learning State 什么时候更新

AI 只在出现长期认知变化时建议 Patch，例如：

- 重要 Gap 被解决；
- 真实工程证明新的 Tune / Diagnose / Modify 能力；
- 原以为掌握但暴露出重大断点。

使用 `KNOWLEDGE_PROMPT_CARDS.md` 的 **Card 3**。

最终解释权属于用户。

> “刚刚讲过一次”不是升级依据。

---

## 17.5 顺手整理笔记

用户说“整理成笔记”时，AI 先看相关 Asset Index。

判断：

``` text
没有同职责资产
→ New

已有同职责主干，本轮只是补充
→ Update

两份同职责重复
→ Merge / Supersede

同主题但职责不同
→ 共存 + 建立关系

旧知识来源重构
→ Legacy Reconstruction
```

生成时使用：

- `playbooks/knowledge/notes/NOTE_CORE.md`
- `playbooks/knowledge/notes/NOTE_STYLE_STANDARD.md`
- `playbooks/knowledge/notes/NOTE_PROFILES_AND_OPERATIONS.md`

可复制指令：`KNOWLEDGE_PROMPT_CARDS.md` 的 **Card 4**。

如果会修改 / 合并已有 Canonical Asset，AI 必须先说明影响，不自行破坏现有知识资产。

---

## 17.6 Asset Index 什么时候更新

只有知识资产真正变化时：

- 新建长期资产；
- 重要 Update；
- Canonical / Superseded 状态变化；
- Merge；
- 新增影响导航的重要关系。

使用 `KNOWLEDGE_PROMPT_CARDS.md` 的 **Card 5**。

普通聊天不更新。

---

## 17.7 项目驱动的知识专项

如果知识断点来自正式项目：

``` text
Supervisor
→ Specialist Brief
→ Specialist + Knowledge Playbook + Relevant Learning / Asset State
→ Specialist Return
→ 回主线
```

Knowledge Layer 只负责“怎样帮助用户形成足够理解”。

它不接管 Debug、Architecture、Scope 或 Work。

------------------------------------------------------------------------

# 18. 最后仍然回到 RM 四问

1. 为什么造？
2. 造不造得出来？
3. 稳不稳定？
4. 出了问题会不会修？

安全是硬约束。
