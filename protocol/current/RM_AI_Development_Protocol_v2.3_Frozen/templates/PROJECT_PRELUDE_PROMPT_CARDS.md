# Project Prelude Prompt Cards

> 给人类直接复制到普通对话使用。
>
> 这些 Prompt 只负责**启动 / 继续阶段**。正式 Checkpoint / Report 不允许让 AI 自己发明格式；生成时必须同时指定对应 Template。
>
> 如果当前对话无法访问协议包中的模板文件：**请把模板文件一起上传 / 粘贴给它。**

------------------------------------------------------------------------

# P0 — Domain Orientation 启动卡

``` text
你现在协助我进行 [方向] 的 P0 Domain Orientation。

背景：
我可能负责这个方向，但当前 [尚未正式确认 / 正在等待任务 / 对队伍现状不了解]。

目前已经知道：
[简述]

目前未知：
[简述]

本阶段目标：
帮助我建立足够的领域认识，使我未来正式接手时知道：
- 这个方向大概是什么；
- 主要系统 / 技术框架是什么；
- 有哪些值得了解的规则、资料和开源；
- 哪些知识需要补；
- 正式接手后应该向队伍确认什么。

允许：
规则、公开资料、开源 Landscape、系统地图、通识知识。

不要：
- 替尚未明确的真实项目定正式架构、路线或 Milestone；
- 把外部项目方案当成本队事实；
- 为了“完整”一次性展开所有知识。

请持续区分：
1. Verified External Fact / Rule
2. Current Understanding
3. Unknown
4. 必须等待 Team Reality 才能确认的问题
```

## P0 需要换对话时

同时提供：`templates/STAGE_CHECKPOINT_TEMPLATE.md`

复制：

``` text
当前 P0 还没有结束，但这个对话需要交接。
请严格按照我提供的 STAGE_CHECKPOINT_TEMPLATE.md 生成：

DOMAIN_ORIENTATION_CHECKPOINT.md

要求：
- Current Stage 写 P0 Domain Orientation；
- 只记录当前对话和已提供资料能够支持的内容；
- Verified Facts 与 Current Understanding / Hypotheses 分开；
- 保留下一轮继续所需的关键资料锚点；
- 不写成完整聊天摘要；
- 不提前替 P1 / P2 做项目决定。
```

## P0 完成时

同时提供：`templates/DOMAIN_ORIENTATION_REPORT_TEMPLATE.md`

复制：

``` text
我认为当前 P0 Domain Orientation 已经可以结束。
请严格按照我提供的 DOMAIN_ORIENTATION_REPORT_TEMPLATE.md 生成：

DOMAIN_ORIENTATION_REPORT.md

要求：
- 只使用当前对话和已提供资料支持的内容；
- 区分外部事实、当前理解、Team Reality Unknown；
- 列出实际看过的重要来源；
- 不虚构队伍现状；
- 不提前替真实项目决定正式架构或 Milestone；
- Carry Forward 要能直接服务后续 P1 / P2。
```

------------------------------------------------------------------------

# P1 — Reality Acquisition 启动卡

``` text
我已经正式开始接手 [方向]，现在进入 P1 Reality Acquisition。

当前正式任务 / 责任边界：
[如果已经明确]

P0 Domain Orientation Report：
[如有，附上]

目前已经知道的队内事实：
[简述]

目前最大的未知：
[简述]

接下来我会逐步提供：
学长交流、历史报告、代码、Git、机械 / 电控状态、实验数据等。

本阶段第一职责是恢复现实，不是设计新系统。
请持续区分：
1. Verified Fact
2. Team Experience / Judgment
3. Unknown
4. External Reference

重点帮助我回答：
- 去年做到哪里？
- 现在有什么？
- 为什么做到这里？
- 已知问题是什么？
- 当前约束是什么？
- 还缺什么信息？

不要因为外部开源更先进就提前推翻队内传承；
不要在 Reality 尚未恢复前擅自进入完整架构设计。
```

## P1 需要换对话时

同时提供：`templates/STAGE_CHECKPOINT_TEMPLATE.md`

复制：

``` text
当前 P1 Reality Acquisition 还没有结束，但这个对话需要交接。
请严格按照我提供的 STAGE_CHECKPOINT_TEMPLATE.md 生成：

TEAM_REALITY_CHECKPOINT.md

要求：
- Current Stage 写 P1 Reality Acquisition；
- Verified Fact、Team Judgment、Unknown 分开；
- 列出下一轮仍需访问的关键现实材料；
- 不把未核实的学长判断改写成事实；
- 不提前进入 P2 的正式路线收敛。
```

## P1 完成时

同时提供：`templates/TEAM_REALITY_REPORT_TEMPLATE.md`

复制：

``` text
我认为当前 P1 Reality Acquisition 已经基本完成。
请严格按照我提供的 TEAM_REALITY_REPORT_TEMPLATE.md 生成：

TEAM_REALITY_REPORT.md

要求：
- 只写有来源支持的队内现实；
- Verified Fact 与 Team Experience / Judgment 分开；
- 明确代码、硬件、数据、经验资产；
- 明确当前约束、Blocker 和 Unknown；
- 不因为外部方案更先进就改写本队历史；
- Carry Forward 要能直接服务 P2 Project Inception。
```

------------------------------------------------------------------------

# P2 — Project Inception 启动卡

``` text
我们已经基本完成 [方向] 的 Reality Acquisition。
现在进入 P2 Project Inception。

Domain Orientation Report：
[如有，附上]

Team Reality Report：
[必须提供]

当前正式目标 / 规则：
[提供]

已知硬约束：
[时间 / 硬件 / 人员 / 接口等]

请只帮助我收敛五件事：
1. Mission
2. System Map
3. Asset / Gap
4. Entry Strategy
5. First Milestone

不要一次规划整个赛季；
不要提前实现未来需求；
不要为了完整而建立复杂框架；
不要强行解决所有 Unknown。

最终我应该能够回答：
- 现在具体做什么？
- 为什么先做这个？
- First Milestone 是什么？
- 如何证明它完成？
- 下一步是什么？
```

## P2 需要换对话时

同时提供：`templates/STAGE_CHECKPOINT_TEMPLATE.md`

复制：

``` text
当前 P2 Project Inception 还没有结束，但这个对话需要交接。
请严格按照我提供的 STAGE_CHECKPOINT_TEMPLATE.md 生成：

PROJECT_INCEPTION_CHECKPOINT.md

要求：
- Current Stage 写 P2 Project Inception；
- 记录已经收敛的 Mission / System Boundary / Asset-Gap 判断；
- 把尚未决定的方案明确保持为 Open Question；
- 不把临时讨论写成 Locked Decision；
- 写清下一轮需要继续收敛的第一件事。
```

## P2 完成时

同时提供：`templates/PROJECT_INCEPTION_REPORT_TEMPLATE.md`

复制：

``` text
我认为当前 P2 Project Inception 已经可以结束。
请严格按照我提供的 PROJECT_INCEPTION_REPORT_TEMPLATE.md 生成：

PROJECT_INCEPTION_REPORT.md

要求：
- 基于已经提供的 Domain Orientation / Team Reality / 当前规则和约束；
- First Milestone 必须有 Done Criteria 和 Required Verification Level；
- 区分 Locked Decisions 与 Explicitly Deferred；
- 不一次规划整个赛季；
- 不把仍未知的内容伪装成既定方案；
- Carry Forward 要足以启动 Main Supervisor。
```

------------------------------------------------------------------------

# 同一阶段的新对话怎么继续

新对话提供：

``` text
对应阶段的启动 Prompt Card
+
最新 Checkpoint
+
Checkpoint 中 Required Materials（按需）
+
本轮新增材料
```

然后复制：

``` text
这是上一轮同阶段对话生成的最新 Checkpoint。
它代表当前阶段的工作现场，不代表阶段已经结束。
请先恢复其中的 Current Goal、Verified Facts、Decisions / Boundaries、Open Questions 和 Next Step，
然后从 Next Step 继续。
不要重新从头整理已经完成的内容。
```
