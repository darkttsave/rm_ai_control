# RM + AI Development Protocol v2.3

> 状态：**Frozen**
>
> v2.3 是 v2.2 的增量补丁，不推翻已有 Project Prelude、Supervisor / Specialist / Work、Context Continuity 或工程 Playbook。
>
> 本版本主要补齐：**Knowledge Learning & Note Lifecycle**。

v2.2 已经解决：

- P0 / P1 / P2 Project Prelude；
- Main Supervisor / Specialist / Work 协作；
- Minimum Sufficient Handoff；
- Context Health / Carry Forward；
- 正式产物的 Trigger → Template → Prompt → Artifact → Next Consumer。

v2.3 在此基础上增加：

- 用户长期 `Learning State`；
- `Knowledge Asset Index`；
- 事件驱动的 `Learning Thread State`；
- Explanation 与正式 Note Output 解耦；
- AI 根据用户意图主动调整讲解方式；
- Note 的 New / Update / Merge / Legacy Reconstruction；
- 新学习对话的可执行 Bootstrap。

---

## 0. 第一次使用先看什么

第一次使用：

`START_HERE.md`

已经知道自己在哪个阶段、想知道具体怎么操作：

`USAGE_GUIDE.md`

查场景对应 Playbook：

`PLAYBOOK_INDEX.md`

**USAGE_GUIDE 是主要的人类操作入口。**

如果文档要求生成正式产物，不要只对 AI 说“生成 XXX”。正式操作应明确：

```text
Trigger
→ Inputs / Template
→ Generation Prompt / Rule
→ Artifact / Action
→ Next Consumer
```

---

## 1. 项目生命周期仍然不变

```text
可能进入陌生方向
        ↓
P0 Domain Orientation
        ↓
正式接手 / 开始现实交接
        ↓
P1 Reality Acquisition
        ↓
P2 Project Inception
        ↓
First Milestone 明确
        ↓
Main Supervisor
        ↓
Specialist / 简单任务
        ↓
Work
```

这不是强制流水线。

> **从最早仍存在关键未知的阶段进入；已经明确的阶段可以跳过或缩短。**

Knowledge Layer 是横向能力，可以出现在 P0、P1、P2 或正式项目中的任何阶段，不是新的 P3。

---

## 2. 最高层仍然是 RM 四问

1. 为什么造？
2. 造不造得出来？
3. 稳不稳定？
4. 出了问题会不会修？

安全是硬约束。

Knowledge Layer 的价值主要体现在：

> 当陌生知识影响“造得出来 / 调得动 / 修得了”时，让人的理解至少达到当前工程责任所需的控制程度。

---

## 3. v2.3 的三层职责

### A. General Collaboration Core

`common/`：

- `Conversation_Continuity.md`
- `Context_Health.md`
- `Handoff_Protocol.md`
- `Carry_Forward.md`

解决：

> 长期任务如何跨对话、跨角色继续，而不依赖完整聊天历史。

### B. RM Development Protocol

包括：

- RM 四问；
- Project Prelude；
- Human–AI Gates；
- Verification Levels；
- AI Autonomous Contract；
- Supervisor / Specialist / Work；
- 工程 Playbooks。

### C. Knowledge Layer

入口：

`playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md`

解决：

```text
人已经知道什么
+
知识库已经有什么
+
这一次正在学什么
+
AI 应该怎样讲
+
理解后怎样保存
```

Knowledge Layer 复用 common，不再建立第二套 Context / Handoff Framework。

---

## 4. Knowledge Sufficiency，而不是“完全掌握”

v2.3 不试图判断：

> 用户是否完全意义上掌握某知识。

它只关心：

> 当前理解是否已经足够支持计划中的真实工程行为？

复用 Engineering Control Ladder：

```text
L0 Reproduce
L1 Operate
L2 Tune
L3 Diagnose
L4 Modify
L5 Explain
L6 Reconstruct
```

当前任务只需要 L2，就不因为知识体系“还不完整”而强迫进入 L5。

---

## 5. Learning State 与 Knowledge Asset 分开

```text
Learning State
= 人当前已经接触 / 理解什么，能支持什么工程行为，还有哪些 Gap

Knowledge Asset Index
= 知识库里有什么，每份资产承担什么职责
```

核心边界：

> **有笔记 ≠ 已经掌握。**

长期 Learning State 最终解释权属于用户；AI 可以根据真实证据提出 Patch，但不能因为“刚讲完”就自行宣布掌握。

---

## 6. Explanation 与 Note Output 分开

```text
Explanation
→ 目标：让用户理解

Note Output
→ 目标：形成长期知识资产
```

因此：

- 普通讲解不强制 Markdown / 标题 / 公式排版；
- 用户不需要操作“理论模式 / 代码模式 / Deep Study”；
- AI 根据 Learning Request 和追问主动调整讲法；
- 正式笔记重新组织知识依赖，而不是复制聊天记录。

详细规则：

- `playbooks/knowledge/explanation/`
- `playbooks/knowledge/notes/`

---

## 7. 新学习对话怎么启动

通常提供：

```text
Learning State Overview + Relevant Detail
+
Knowledge Asset Overview + Relevant Detail
+
Learning Request
+
当前材料
```

如果是换对话继续同一个知识主题，再加：

`LEARNING_THREAD_STATE.md`

模板与可复制提示词：

- `templates/LEARNING_REQUEST_TEMPLATE.md`
- `templates/LEARNING_STATE_TEMPLATE.md`
- `templates/KNOWLEDGE_ASSET_INDEX_TEMPLATE.md`
- `templates/LEARNING_THREAD_STATE_TEMPLATE.md`
- `templates/KNOWLEDGE_PROMPT_CARDS.md`

原则：

> **Overview + Relevant Detail，不允许初始化输入无限膨胀。**

---

## 8. Minimum Sufficient Handoff 继续有效

默认主链仍然是：

```text
Supervisor
    ↓ Specialist Brief
Specialist
    ↓ Task Brief（需要执行时）
Work
```

项目驱动的知识专项仍然使用 Specialist：

```text
Supervisor
→ Specialist Brief
→ Specialist + Knowledge Playbook + Relevant Learning / Asset State
→ Specialist Return
→ 回主线
```

Knowledge Playbook 不接管项目 Scope。

---

## 9. Context Continuity 继续复用 common

v2.3 不新增 Knowledge Context Manager。

仍然：

```text
Green
→ 继续

Yellow
→ Re-anchor

Red
→ 停止重大判断，恢复 / Handoff
```

Learning Thread State 只在需要跨对话恢复时物化，不是每次讲解后的 Checkpoint。

---

## 10. Playbook 路由

先看：

`PLAYBOOK_INDEX.md`

典型知识链：

```text
陌生知识阻塞项目，不知道现在学多少
→ Learning_Knowledge_Debt.md

已经决定真正学习 / 读源码 / 整理笔记
→ knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md
```

普通明确实现任务仍然不需要强行加载 Playbook。

---

## 11. Brownfield First

本协议仍然是覆盖层，不是第二套工程框架。

进入已有项目 / 知识库：

- 优先使用已有 README / docs / AGENTS / Git / 知识资产；
- 不为协议强行制造状态文件；
- Knowledge Asset Index 默认增量登记，不要求先扫描整个旧知识库；
- 不因为 AI 能生成复杂结构就扩大项目。

---

## 12. v2.3 明确不做什么

本版本不引入：

- 自动 Multi-Agent Runtime；
- 自动 Supervisor / Specialist Router；
- 独立通用 AI Framework 产品；
- 中央 Memory Database；
- 自动 Knowledge Graph；
- Learning State Manager；
- Thread Manager；
- 掌握度百分比；
- 自动扫描全部旧知识库；
- 自动创建大量笔记；
- Knowledge 专用第二套 Context / Handoff Framework。

这些只有真实使用摩擦证明有价值以后再考虑。

---

## 13. 冻结原则

> **Framework 不推动 Protocol 增长；真实项目证据才推动 Protocol 演化。**

v2.3 开始进入真实项目以后，如果出现：

- Learning State 维护成本过高；
- 初始化上下文仍然膨胀；
- AI 频繁误判用户理解程度；
- 模式切换提醒太频繁 / 太弱；
- 重复知识资产仍不断产生；
- Note 规则妨碍实际复习；
- Knowledge Layer 与 Specialist / Debug / common 职责冲突；

记录真实 `Protocol Friction`，再决定下一版是否修正。
