# Playbook Index — 场景目录

> Playbook 是**按场景调用的经验手册**，不是每个对话 / 执行体进入项目时都要全文读取的核心协议。
>
> **“按需”不等于“用户必须自己猜”。**
>
> 人类通过本索引判断大方向；Supervisor / Specialist 可以明确指定；Workspace 中的 Work 可以自行路由。

---

# 1. 场景目录

| Playbook | 什么时候使用 | 典型问题 | 通常由谁路由 |
|---|---|---|---|
| `Project_Assimilation.md` | 第一次接手已有 RM / 开源仓库 | “学长把项目交给我了，怎么快速获得工程控制力？” | Supervisor / 人 |
| `Debug_Experiment.md` | 故障原因未知，需要调查与实验 | “Tracker 为什么偶发丢目标？” | Supervisor / Specialist |
| `Integration_Safety.md` | 跨模块联调、真机、硬件执行器 | “视觉要和电控第一次串口联调。” | Supervisor / Work |
| `Architecture_Refactor.md` | 已明确准备重构 / 收敛结构 | “旧接口很多，准备整理状态机架构。” | Supervisor / 人 |
| `Learning_Knowledge_Debt.md` | 陌生知识阻塞任务，还不知道是否值得深入、需要学到什么工程控制等级 | “这里用了 EKF，我现在要学到什么程度才能继续调？” | Supervisor / Specialist |
| `playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md` | 已决定真正学习 / 讲解某个知识，或把已经讲清楚的内容形成长期笔记 | “我想把这个 PnP 断点真正搞懂，并接回已有笔记。” | 人 / Specialist / AI 路由 |
| `CPP_Architecture.md` | 设计 / 审查 C++ 工程组织 | “日志、录像、Detector、Tools 和 Config 怎么摆？” | Supervisor / 人 / Work |

---

# 2. 快速路由

```text
可能负责陌生方向
→ Project Prelude

正式接手旧项目 / 开源仓库
→ Project Assimilation

原因未知 / 找 Bug 根因
→ Debug / Experiment

真实硬件、队友接口、联调、第一次上车
→ Integration / Safety

明确要重新整理代码结构
→ Architecture / Refactor

陌生知识阻塞当前工程，不知道“现在学多少才够”
→ Learning / Knowledge Debt

已经决定要真正理解某个知识 / 读源码 / 形成长期笔记
→ Knowledge Learning & Notes

讨论工程目录、模块边界、IO、Observability、Record/Replay、Config
→ C++ Architecture

明确的小功能 / Bug 修复 / 参数调整
→ 通常不需要 Playbook
```

知识断点经常是两步：

```text
Learning / Knowledge Debt
决定当前需要什么 Engineering Control
        ↓
Knowledge Learning & Notes
真正完成学习、讲解和必要的知识资产更新
        ↓
回工程
```

---

# 3. P0 / P1 / P2 不是 Playbook

不要混淆：

```text
Project Prelude
= 项目生命周期阶段

Playbook
= 某类工程问题的经验手册
```

例如：

```text
P1 Reality Acquisition
→ 发现去年有一个重要旧仓库
→ 使用 Project Assimilation
→ 结果写回 Team Reality
```

P0 / P1 / P2 中也可以按需使用 Knowledge Playbook，但它只负责当前学习问题，不接管 Prelude 阶段目标。

---

# 4. 怎么加载

### 普通 Conversation

如果当前对话不能访问 Playbook：

> 明确告诉用户需要提供哪一份。

不要假装已经读过。

### Specialist

在 Specialist Brief 中指定：

```text
Relevant Playbook:
- Debug_Experiment.md
- knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md   # 如确有需要
```

### Work

如果协议已经在 Workspace：

> 根据本 Index 自行读取真正相关的 Playbook。

Knowledge Playbook 只有在任务明确涉及知识解释 / 笔记维护时才加载；不要把普通执行任务自动变成课程。

---

# 5. 不要强行加载

如果任务已经明确：

> 不需要为了流程完整而加载 Playbook。

如果任务性质变化，例如：

```text
Delivery
→ 发现必须做重大 Refactor
```

重新路由。

不要偷偷扩大原任务。
