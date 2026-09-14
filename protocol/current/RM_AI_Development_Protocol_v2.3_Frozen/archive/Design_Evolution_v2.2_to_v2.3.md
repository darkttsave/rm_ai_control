# Design Evolution — v2.2 → v2.3

> v2.3 定位：**Knowledge Learning & Note Lifecycle Patch**。
>
> 它不是新的通用 AI Framework，也不改变 v2.2 的项目运行拓扑。

---

# 1. 为什么需要 v2.3

真实学习中反复出现：

```text
工程出现知识断点
→ 开对话快速理解
→ 顺手整理笔记
→ 之后又决定系统学习
→ 换对话 / 换讲法
→ 已有笔记开始重复
```

旧的多代“讲解 Skill”已经积累出有价值的方法，但把：

- 讲解；
- 学习深度；
- 源码阅读；
- 正式笔记；
- 旧知识重构；

混在同一个角色规范里，导致适应性下降。

v2.3 将这些能力重新分层。

---

# 2. 核心变化

## 2.1 Knowledge Sufficiency

不试图判断“用户完全掌握了吗”。

目标改为：

> 当前理解是否已经足够支持项目所需的 Operate / Tune / Diagnose / Modify / Explain / Reconstruct？

复用既有 Engineering Control Ladder。

## 2.2 三种状态分离

```text
Learning State
= 人当前知道什么 / 能做什么

Knowledge Asset Index
= 库里有什么

Learning Thread State
= 本轮学到哪里，只在交接时物化
```

资产存在不等于用户掌握。

## 2.3 Explanation / Note 解耦

讲解只为理解负责。

正式 Note 负责长期知识资产。

笔记格式不再约束普通对话。

## 2.4 Intent-driven Adaptive Explanation

用户不操作内部 Mode。

AI 根据 Learning Request、长期状态和追问主动调整：

- Subject；
- Depth / Control Need；
- Teaching Strategy。

小调整静默，明显变化简短提示，大范围扩展才请求用户决定。

## 2.5 Overview + Relevant Detail

Learning State / Asset Index 不允许无限膨胀地全部输入新对话。

第一版仍可保持 Markdown 单文件，但语义上必须支持：

```text
Global Overview
+
Relevant Detail
```

---

# 3. 与 v2.2 的接轨

v2.3 不重做：

- Context Health；
- Handoff；
- Carry Forward；
- Specialist；
- Debug；
- Architecture；
- Project Assimilation；
- Human Gate。

Knowledge Layer 只补学习场景 Payload 和讲解 / 笔记方法。

项目驱动学习继续使用：

```text
Supervisor
→ Specialist
→ Knowledge Playbook
→ Specialist Return
```

---

# 4. 旧来源资产迁移

v2.3 参考并重构了：

- `讲解skill_v0.1.md`；
- `讲解skill_v1.md`；
- `讲解skill迭代V2_代码讲解扩展.md`；
- `TECHNICAL_NOTE_RECONSTRUCTION_SKILL_v1.md`；
- `knowledge-note-refactor`。

迁移原则：

```text
Keep / Move / Rewrite / Retire
```

旧 Skill 保留为历史来源，不原样成为正式规则。

---

# 5. 明确不做

v2.3 不新增：

- Learning State Manager；
- Thread Manager；
- 自动 Knowledge Graph；
- 掌握度百分比；
- 自动扫描整个旧知识库；
- 自动创建大量笔记；
- Knowledge 专用第二套 Context Framework。

这些需要未来真实 friction 才能重新获得设计资格。
