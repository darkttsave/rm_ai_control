# Design Evolution --- v2.1 → v2.2

> v2.2 是一次**项目生命周期前移 + 交接 / 连续性通用化**修订。 不改变
> v2.1 的 RM 四问、Human Gate、Verification、AI Contract
> 或基本工程纪律。

------------------------------------------------------------------------

## 1. v2.1 之后暴露的问题

### A. 项目还没出生时缺少正式入口

真实 RM 场景中经常出现：

> "我可能负责这个方向，但还没正式接任务。"

此时直接创建 Supervisor / Project State 会过早。

因此补齐：

``` text
P0 Domain Orientation
P1 Reality Acquisition
P2 Project Inception
```

------------------------------------------------------------------------

### B. Prelude 同样会遇到上下文限制

P0 / P1 / P2 可能持续很多轮，不能假设"普通对话"就天然连续。

因此将原有 Context Health / Conversation Continuity 提炼成通用层，并让
Prelude 直接复用：

``` text
Checkpoint
Report
Carry Forward
Re-anchor
Recoverability Test
```

------------------------------------------------------------------------

### C. 交接 Prompt 在真实使用中存在两个极端

过长：

> 把角色、协议、项目背景、全部历史都重新讲一遍。

过短：

> "帮我把这个改好。"

两者都会损害下游判断。

因此 v2.2 正式定义：

> **Minimum Sufficient Handoff**

并明确：

``` text
Cold Start → 传基线
Warm Start → 传差量
```

------------------------------------------------------------------------

### D. 总监督与 Work 的关系需要更贴近真实 Operating Model

v2.2 明确：

``` text
Supervisor → Specialist → Work
```

是默认主链。

总监督通常不直接微管理 Work。

------------------------------------------------------------------------

### E. “有模板”不等于“用户知道怎么生成”

首版 v2.2 的可用性检查暴露出：文档会写“生成 `DOMAIN_ORIENTATION_REPORT` / `Checkpoint`”，但没有在同一操作路径里告诉用户：何时生成、要把哪个 Template 给当前对话、应该发送什么指令、输出叫什么、下一步交给谁。

因此 v2.2 内部修订补齐统一 Artifact Generation Contract：

``` text
Trigger
→ Template
→ Generation Prompt
→ Output File
→ Next Consumer
```

同时把 P0 / P1 / P2、Supervisor、Specialist、Work 的正式产物重新接回 `templates/`，避免让 AI 临场发明格式。

------------------------------------------------------------------------

## 2. v2.2 新增

### Project Prelude

-   `project/Project_Prelude.md`
-   三个阶段 Report Template
-   `STAGE_CHECKPOINT_TEMPLATE`
-   `PROJECT_PRELUDE_PROMPT_CARDS`

### Human Usage Layer

-   `USAGE_GUIDE.md`
-   更新 `START_HERE.md`
-   更新 `PLAYBOOK_INDEX.md`

### Generic Collaboration Core

-   `common/Conversation_Continuity.md`
-   `common/Context_Health.md`
-   `common/Handoff_Protocol.md`
-   `common/Carry_Forward.md`

这些内容不依赖 RM，可在未来其他长期任务中复用。

### RM Handoff Application

-   `shared/Handoff_Protocol.md`

只描述通用 Handoff 在 RM 角色链中的具体应用。

------------------------------------------------------------------------

## 3. 没有改变的东西

v2.2 不改变：

-   RM 四问；
-   Safety 硬约束；
-   Human Gate；
-   Verification Levels；
-   Brownfield First；
-   AI Scope / Evidence / Convergence Discipline；
-   Playbook 按场景调用；
-   人工 Supervisor + Specialist + Work Operating Model；
-   Project State / Supervisor Snapshot 的事实 / 工作态边界。

------------------------------------------------------------------------

## 4. v2.2 的核心边界

Prelude 不是强制审批流。

通用 Continuity Core 也不是中央 Memory Database。

Handoff 不是"越短越好"。

总原则：

> **减少重新解释，不减少关键语义。**
