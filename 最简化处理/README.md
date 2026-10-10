# rm-ai-control 最简化工作面

> 状态：Draft，供 Human 审核  
> 来源基线：`maintainer-cloud-migration` @ `5c4b0b9d94836fc429d3cdcbac222f7b03c5a68d`  
> 边界：本目录是从 Frozen Protocol 中提炼的日常参考，不替代、修改或删除原协议与历史控制面。

本目录只保留已经在真实使用中反复出现的能力：项目接管、任务下发、上下文健康、对话续接、交接、技术讲解和笔记整理。

## 按任务读取

不要求任何对话或执行体一次读完全部文件。

| 当前任务 | 最小阅读 |
|---|---|
| 接手已有仓库 | [Project Assimilation](01_核心工程原则/Project_Assimilation.md) + [RM 工程四问](01_核心工程原则/RM_Core_Four_Questions.md) |
| 给执行体下发任务 | [Task Brief](03_任务模板/TASK_BRIEF_TEMPLATE.md) + [Human–AI Gates](01_核心工程原则/Human_AI_Gates.md) |
| 判断长对话是否还能继续 | [Context Health](02_上下文与交接/Context_Health.md) |
| 同一工作换对话 | [Conversation Continuity](02_上下文与交接/Conversation_Continuity.md) + [Stage Checkpoint](03_任务模板/STAGE_CHECKPOINT_TEMPLATE.md) |
| 向另一对话或执行体交接 | [Handoff Protocol](02_上下文与交接/Handoff_Protocol.md) + [Carry Forward](02_上下文与交接/Carry_Forward.md) |
| 技术讲解 | [Knowledge Learning & Notes](04_知识讲解与笔记/KNOWLEDGE_LEARNING_AND_NOTES.md) + [`explanation/`](04_知识讲解与笔记/explanation/EXPLANATION_CORE.md) |
| 整理正式笔记 | [Knowledge Learning & Notes](04_知识讲解与笔记/KNOWLEDGE_LEARNING_AND_NOTES.md) + [`notes/`](04_知识讲解与笔记/notes/NOTE_CORE.md) |

## 四个连续性文件分别负责什么

```text
Context Health
= 什么时候需要处理上下文

Conversation Continuity
= 长期任务依靠哪些最小对象继续

Handoff Protocol
= 怎样把完成下一步所需的信息交给接收者

Carry Forward
= 到底有哪些内容必须带走
```

## 使用原则

1. 真实问题优先，不为未来假想需求扩充流程。
2. 冷启动传基线，已经拥有可靠上下文时只传变化。
3. 事实、推测、决定和未知必须分开。
4. 缺失信息会改变目标、范围、外部行为、安全或验收时，触发 Human Gate。
5. 普通答疑不生成状态文件；只有换对话、长期暂停或正式交接时才物化 Checkpoint。
6. 原 Frozen Protocol、Control、Authority、Archive 和历史模板保持原样；本目录不要求维护 Manager、Curator、Capability 或 Artifact Lifecycle。

## 来源选择

- `Project_Assimilation.md` 取自 Frozen Protocol 的完整 Playbook，不采用 Human Template Guide 的二次任务卡。
- `Handoff_Protocol.md` 取自 `common/` 版本，不采用 `shared/` 中的旧副本。
- 其余文件均由同名 Frozen 文档精简而来，删除未纳入本目录的模板、角色和控制面依赖。

