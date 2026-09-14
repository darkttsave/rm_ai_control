# START HERE — RM + AI Development Protocol v2.3

> 第一次使用先看这里。
>
> 如果你已经知道自己在哪个阶段，并且想知道“具体该上传什么、复制哪段指令、按哪个模板生成什么文件”，直接看：`USAGE_GUIDE.md`。

------------------------------------------------------------------------

# 1. 先判断你在哪

### 还没有正式接手，只是可能进入一个陌生方向

→ **P0 Domain Orientation**

开普通对话。

提供：

- 为什么可能进入这个方向；
- 当前已知 / 未知；
- 规则、公开资料、开源、学习材料。

不要建立正式 Supervisor / Project State。

启动 Prompt：`templates/PROJECT_PRELUDE_PROMPT_CARDS.md` 的 P0 卡。

如果对话太长，用 `STAGE_CHECKPOINT_TEMPLATE.md` 生成 `DOMAIN_ORIENTATION_CHECKPOINT.md`；P0 完成时，用 `DOMAIN_ORIENTATION_REPORT_TEMPLATE.md` 生成 `DOMAIN_ORIENTATION_REPORT.md`。

具体生成指令见 `USAGE_GUIDE.md` §2。

------------------------------------------------------------------------

### 已经正式接手，但不知道队伍过去做了什么

→ **P1 Reality Acquisition**

重点提供：

- 学长 / 上届负责人交流；
- 历史报告；
- 队内代码 / Git；
- 机械 / 电控现状；
- 实验数据；
- 当前已知的队内事实。

启动 Prompt：`PROJECT_PRELUDE_PROMPT_CARDS.md` 的 P1 卡。

P1 完成时按 `TEAM_REALITY_REPORT_TEMPLATE.md` 生成 `TEAM_REALITY_REPORT.md`。

具体操作见 `USAGE_GUIDE.md` §3。

------------------------------------------------------------------------

### 已经知道队伍现状，但还不知道项目从哪里开始

→ **P2 Project Inception**

至少提供：

- `TEAM_REALITY_REPORT.md`；
- 当前赛季正式目标 / 规则；
- 已知硬约束；
- `DOMAIN_ORIENTATION_REPORT.md`（如有）。

目标只收敛：

- Mission；
- System Map；
- Asset / Gap；
- Entry Strategy；
- First Milestone。

P2 完成时按 `PROJECT_INCEPTION_REPORT_TEMPLATE.md` 生成 `PROJECT_INCEPTION_REPORT.md`。

具体操作见 `USAGE_GUIDE.md` §4。

------------------------------------------------------------------------

### First Milestone 已经明确

→ **Main Supervisor**

新开总监督时提供：

1. `entries/Supervisor_Entry.md`
2. `PROJECT_INCEPTION_REPORT.md`
3. 当前 Project State / 当前事实来源（如有）
4. First Milestone 直接相关材料

Supervisor 换对话时，不复制完整聊天；按 `SUPERVISOR_SNAPSHOT_TEMPLATE.md` 生成 `SUPERVISOR_SNAPSHOT.md`。

具体操作见 `USAGE_GUIDE.md` §6。

------------------------------------------------------------------------

### 主线里出现一个需要深入分析的问题

→ **Specialist**

先让 Supervisor 按 `SPECIALIST_BRIEF_TEMPLATE.md` 生成 `SPECIALIST_BRIEF.md`。

然后新专项对话提供：

1. `entries/Specialist_Entry.md`
2. `SPECIALIST_BRIEF.md`
3. Brief 指定的文件 / 日志 / 数据
4. Brief 指定的 Playbook（如果有）

具体操作见 `USAGE_GUIDE.md` §7–8。


------------------------------------------------------------------------

### 工程中出现知识断点，或想真正学懂 / 整理成长期笔记

先判断：

``` text
还不知道现在值不值得深入、要学到什么工程控制等级
→ playbooks/Learning_Knowledge_Debt.md

已经决定真正学习 / 讲解 / 读源码 / 整理笔记
→ playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md
```

如果第一次启用 v2.3、还没有 Learning State / Asset Index，先用 `templates/KNOWLEDGE_PROMPT_CARDS.md` 的 Card 0 建立最小版本；不要全量盘点旧知识库。

新学习对话通常提供：

1. Learning State 的 Overview + 本轮相关 Detail；
2. Knowledge Asset Index 的 Overview + 本轮相关 Detail；
3. 按 `templates/LEARNING_REQUEST_TEMPLATE.md` 填写的本轮需求；
4. 当前源码 / 文档 / 论文 / 截图等材料。

如果是在换对话继续同一个学习主题，再提供 `LEARNING_THREAD_STATE.md`。

可直接复制提示词见：`templates/KNOWLEDGE_PROMPT_CARDS.md`。

用户不需要手动选择“代码模式 / 理论模式 / Deep Study”。AI 应根据当前意图主动调整讲法。

------------------------------------------------------------------------

### 方案已经明确，需要修改仓库 / 构建 / 测试

→ **Work / Executor**

先按 `TASK_BRIEF_TEMPLATE.md` 形成 `TASK_BRIEF.md`。

如果协议已经放在 Workspace：

- 根目录 `AGENTS.md` 负责初始化；
- Work 自行读取真实仓库、必要 Project State 和相关 Playbook；
- 用户不需要重复发送完整协议。

具体操作见 `USAGE_GUIDE.md` §9。

------------------------------------------------------------------------

# 2. 一个特别重要的使用规则

协议里出现“生成 XXX”时，**不要只把这四个字丢给 AI。**

正式产物必须同时知道：

``` text
Trigger
+ Template
+ Generation Prompt
+ Output File
+ Next Consumer
```

如果普通 Conversation 无法访问协议包中的 Template，就把模板文件一起上传 / 粘贴给它。

所有正式产物的映射表和可直接复制指令都在：

`USAGE_GUIDE.md`

------------------------------------------------------------------------

# 3. 不知道该用哪个 Playbook

看：`PLAYBOOK_INDEX.md`

``` text
陌生方向 / 项目还没正式开始
→ Project Prelude

接管已有 RM / 开源项目
→ Project Assimilation

不知道为什么出问题
→ Debug / Experiment

跨模块联调 / 上真机 / 安全
→ Integration / Safety

已经明确要重构
→ Architecture / Refactor

陌生知识阻塞当前工程，不知道现在学多少才够
→ Learning / Knowledge Debt

已经决定真正学习 / 读源码 / 整理知识笔记
→ Knowledge Learning & Notes

C++ 工程组织
→ C++ Architecture

普通、明确的小实现
→ 通常不需要 Playbook
```

------------------------------------------------------------------------

# 4. 对话太长时不要复制完整聊天

判断：

``` text
同一阶段还没结束
→ Checkpoint

阶段已经完成
→ Report

Supervisor 换代
→ Snapshot

专项问题下发
→ Specialist Brief

普通 Knowledge Conversation 同主题换对话
→ Learning Thread State

知识型 Specialist 换对话
→ Specialist Checkpoint（携带 Learning Payload，不重复生成 Thread State）

执行任务下发
→ Task Brief
```

详见：

- `common/Context_Health.md`
- `common/Conversation_Continuity.md`
- `USAGE_GUIDE.md`

------------------------------------------------------------------------

# 5. 最后仍然回到 RM 四问

1. 为什么造？
2. 造不造得出来？
3. 稳不稳定？
4. 出了问题会不会修？

安全是硬约束。
