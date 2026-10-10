# rm-ai-control 最简化工作面

> 状态：Draft，供 Human 审核  
> 来源基线：`maintainer-cloud-migration` @ `5c4b0b9d94836fc429d3cdcbac222f7b03c5a68d`  
> 边界：本目录是从 Frozen Protocol 中提炼的日常参考，不替代、修改或删除原协议与历史控制面。

本目录只保留已经在真实使用中反复出现的能力：项目接管、任务续接、下游执行、执行体交接、技术讲解和笔记整理。

## 按任务读取

不要求任何对话或执行体一次读完全部文件。

| 当前任务 | 最小阅读 |
|---|---|
| 接手已有仓库 | [Project Assimilation](01_核心工程原则/Project_Assimilation.md) + [RM 工程四问](01_核心工程原则/RM_Core_Four_Questions.md) |
| 同一角色、同一任务换对话 | [Same Task Continuation](02_任务连续性与执行交接/SAME_TASK_CONTINUATION.md) |
| 给下游执行体下发任务 | [Executor Prompt](02_任务连续性与执行交接/EXECUTOR_PROMPT.md) + [Human–AI Gates](01_核心工程原则/Human_AI_Gates.md) |
| 项目不变但更换执行体 | [Executor Handoff](02_任务连续性与执行交接/EXECUTOR_HANDOFF.md) |
| 技术讲解 | [Knowledge Learning & Notes](03_知识讲解与笔记/KNOWLEDGE_LEARNING_AND_NOTES.md) + [`explanation/`](03_知识讲解与笔记/explanation/EXPLANATION_CORE.md) |
| 整理正式笔记 | [Knowledge Learning & Notes](03_知识讲解与笔记/KNOWLEDGE_LEARNING_AND_NOTES.md) + [`notes/`](03_知识讲解与笔记/notes/NOTE_CORE.md) |

## 三种交接不要混用

| 场景 | 传递什么 | 不做什么 |
|---|---|---|
| 换对话，不换角色和任务 | 当前任务状态 | 不重新介绍项目，不写完整聊天摘要 |
| 给下游派任务 | 执行目标、边界和验收 | 不把项目历史全部塞进提示词 |
| 项目不变，更换执行体 | 项目现场、落盘产物和下一步入口 | 不依赖上一执行体的聊天记忆 |

冷启动一个项目或总监督对话暂不在本目录设计，由各项目总监督负责。阶段进展优先使用项目已有的调参日志或任务日志，不再建立分对话向总监督汇报的通用模板。

## 使用原则

1. 真实问题优先，不为未来假想需求扩充流程。
2. 冷启动传最小基线；已有可靠上下文时只传变化。
3. 提示词负责索引和边界，项目文件负责保存事实与产物。
4. 事实、推测、决定和未知必须分开。
5. 缺失信息会改变目标、范围、外部行为、安全或验收时，触发 Human Gate。
6. 普通答疑不生成状态文件；只有确实需要续接或换执行体时才物化交接内容。
7. 原 Frozen Protocol、Control、Authority、Archive 和历史模板保持原样；本目录不要求维护 Manager、Curator、Capability 或 Artifact Lifecycle。

## 来源选择

- `Project_Assimilation.md` 取自 Frozen Protocol 的完整 Playbook，不采用 Human Template Guide 的二次任务卡。
- 任务连续性与执行交接部分吸收 `Context_Health`、`Conversation_Continuity`、`Handoff_Protocol`、`Carry_Forward`、`TASK_BRIEF_TEMPLATE` 和 `STAGE_CHECKPOINT_TEMPLATE` 的有效内容，按真实场景重组。
- 知识讲解与笔记文件由同名 Frozen 文档精简而来，删除未纳入本目录的角色和控制面依赖。
