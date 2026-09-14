# Knowledge Layer — 使用入口

> v2.3 新增。用于真正发生“学习 / 讲解 / 笔记整理”时。
>
> 它不替代 `Learning_Knowledge_Debt.md`、Debug、Specialist 或 Work。

---

# 1. 先判断是不是这里的问题

```text
不知道现在值不值得学、要学到多深
→ ../Learning_Knowledge_Debt.md

已经决定要理解某个知识
→ KNOWLEDGE_LEARNING_AND_NOTES.md

原因未知、需要找 Bug 根因
→ ../Debug_Experiment.md

需要改仓库 / 构建 / 测试
→ Work / Executor
```

完整关系：

```text
Project / Development
        ↓
出现知识断点
        ↓
Learning / Knowledge Debt
判断当前任务需要什么 Engineering Control
        ↓
Knowledge Layer
建立足够理解
        ↓
达到 Knowledge Sufficiency
        ↓
回项目
```

---

# 2. Knowledge Layer 内部怎么分

```text
Knowledge Layer
│
├─ Explanation
│  └─ 目标：让用户理解
│
└─ Note Output
   └─ 目标：形成长期知识资产
```

两者解耦。

讲解时不为了笔记格式破坏对话；整理笔记时也不按聊天顺序抄写。

---

# 3. 新学习对话通常需要什么

## 长期状态

- `templates/LEARNING_STATE_TEMPLATE.md` 对应的当前 Learning State；
- `templates/KNOWLEDGE_ASSET_INDEX_TEMPLATE.md` 对应的当前 Asset Index；
- 只提供 Overview + 本轮 Relevant Detail，不要求全量上下文无限增长。

## 本轮输入

- `templates/LEARNING_REQUEST_TEMPLATE.md`；
- 当前源码 / 文档 / 论文 / 截图 / 项目背景。

## 如果是旧主题换对话继续

再提供：

- `templates/LEARNING_THREAD_STATE_TEMPLATE.md`。

具体可复制提示词见：

`templates/KNOWLEDGE_PROMPT_CARDS.md`

---

# 4. AI 不要求用户操作“学习模式”

用户只需要表达真实目的。

AI 根据：

- 当前 Learning Request；
- Learning State；
- 当前材料；
- 项目责任；
- 用户追问；

主动调整讲解方式。

小调整静默完成；明显方向变化只做简短提醒；只有明显扩大范围 / 时间成本时才询问用户。

---

# 5. 三个状态不要混

```text
Learning State
= 人当前知道什么、能支持什么工程行为

Knowledge Asset Index
= 知识库里有什么

Learning Thread State
= 这一次具体学到哪里（只在交接需要时物化）
```

最重要的边界：

> **有笔记 ≠ 用户已经掌握。**

---

# 6. 详细规则

讲解：

- `explanation/EXPLANATION_CORE.md`
- `explanation/EXPLANATION_PROFILES.md`

笔记：

- `notes/NOTE_CORE.md`
- `notes/NOTE_STYLE_STANDARD.md`
- `notes/NOTE_PROFILES_AND_OPERATIONS.md`

上下文与交接继续复用：

- `../../common/Context_Health.md`
- `../../common/Handoff_Protocol.md`
- `../../common/Conversation_Continuity.md`
- `../../common/Carry_Forward.md`
