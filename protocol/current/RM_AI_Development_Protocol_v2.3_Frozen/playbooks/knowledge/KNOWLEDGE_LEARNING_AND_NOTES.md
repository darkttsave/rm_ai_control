# Playbook — Knowledge Learning & Notes

> v2.3 新增。
>
> 场景：已经决定要理解一个知识、阅读一段源码 / API / 系统，或者把已经讲清楚的内容形成长期笔记。
>
> 目标：**达到当前真实任务所需的 Knowledge Sufficiency，并让已有知识和知识资产能够被后续学习复用。**

---

# 1. 它不负责什么

本 Playbook 不负责：

- 判断项目为什么做；
- 代替 Debug 找根因；
- 代替 Work 修改代码；
- 代替 Architecture Playbook 做结构决策；
- 证明用户“完全掌握”；
- 为每次答疑生成笔记或 Checkpoint。

如果陌生知识正在阻塞工程，但还不知道是否值得深入、需要学到哪一级，先使用：

`../Learning_Knowledge_Debt.md`

---

# 2. 完成标准：Knowledge Sufficiency

学习不是默认追求“学完”。

先问：

> 当前责任真正要求用户能够做什么？

复用 `Project_Assimilation.md` 的 Engineering Control Ladder：

```text
L0 Reproduce
L1 Operate
L2 Tune
L3 Diagnose
L4 Modify
L5 Explain
L6 Reconstruct
```

例如：

```text
只需要调用 API
→ 可能到 L1 / L2 即可

要排查参数导致的异常
→ 至少需要 L3

要改算法 / 关键结构
→ 通常需要 L4，必要时 L5
```

达到当前任务要求后允许退出学习并回项目。

AI 在真正返回项目前应做轻量 Knowledge Sufficiency Check：优先利用自然对话 / 当前代码应用中的证据；只有证据不足且会影响下一步时，才补少量针对当前 Engineering Control 的检查问题。

不要把每次学习变成固定测验。

---

# 3. 新知识对话怎么启动

## 3.0 第一次使用 v2.3，还没有长期状态文件

不要先做一次“全知识库建档工程”。

只创建最小可用版本：

```text
Learning State
→ 用户当前主要背景 + 近期真正会复用的领域状态

Knowledge Asset Index
→ 当前真正重要 / 本轮相关的已有知识资产
```

可以由用户直接填写模板，也可以让 AI 根据用户明确提供的事实起草；Learning State 最终由用户确认。

Asset Index 采用 Usage-driven Incremental Registration，后续遇到哪个领域再补哪个领域。

可复制初始化指令见 `../../templates/KNOWLEDGE_PROMPT_CARDS.md` 的 Card 0。

## 3.1 长期状态

按需提供：

```text
Learning State Overview
+
本轮相关领域 Detail
+
Knowledge Asset Overview
+
本轮相关资产 Detail
```

不要为了“完整”把全部知识历史塞进新对话。

如果是在普通独立 Conversation、无法访问协议包，而且预计是长期 / 多会话 Deep Study：

- 可额外提供 `../../common/Context_Health.md`；
- 真正准备跨对话交接时再提供 / 使用 `../../common/Handoff_Protocol.md`。

不要求每个十分钟答疑都加载 common。主 Knowledge Playbook 已包含最小的事件驱动连续性规则。

## 3.2 本轮真实意图

使用：

`../../templates/LEARNING_REQUEST_TEMPLATE.md`

用户写清：

- 这次想解决什么；
- 为什么现在需要；
- 本轮大致期望；
- 当前材料。

用户不需要选择：

```text
Theory / Code
Engineering Use / Deep Study
```

这些由 AI 根据上下文主动路由。

## 3.3 旧主题换对话继续

再提供：

`../../templates/LEARNING_THREAD_STATE_TEMPLATE.md`

它只保存当前学习状态，不复制完整聊天。

可直接复制的启动 / 续接指令见：

`../../templates/KNOWLEDGE_PROMPT_CARDS.md`

---

# 4. Explanation 和 Note Output 分开

```text
Explanation
= 现在怎样让用户理解

Note Output
= 已经理解后怎样形成长期资产
```

因此：

> **第一次讲解 ≠ 最终笔记。**

讲解允许自然追问、类比、回退、局部展开。

正式笔记需要重新组织、压缩和建立知识依赖。

详细规则：

- `explanation/EXPLANATION_CORE.md`
- `notes/NOTE_CORE.md`

---

# 5. AI 主动适配讲解方式

AI 应持续判断：

- 用户真正卡在哪一层；
- 当前问题是理论、代码、API 还是系统；
- 当前项目只要求会用、要能诊断，还是要深入解释；
- 已有知识能否作为可靠前置；
- 是否暴露了新的基础断点。

变化分三类：

## Local Adjustment

临时补一个语言点、公式符号或 API 参数。

> 静默完成。

## Meaningful Shift

例如从“怎么调用”进入“为什么成立”。

> 用 1～3 句说明为什么讲法要改变、接下来大致走哪条链，然后直接继续。

## Scope Expansion

继续深入会显著扩大知识范围、时间或当前项目 Scope。

> 说明当前真正需要哪一层、深入后会进入什么，再让用户决定。

不要把内部 Mode 名字变成用户必须操作的状态机。

---

# 6. Learning State 怎么用

Learning State 描述的是：

> 用户当前已经接触 / 理解什么，能支持什么工程行为，还有什么真实 Gap。

**长期 Learning State 的最终解释权属于用户。** AI 负责观察、提供依据并提出 Patch。

核心边界：

```text
Asset Exists
≠
User Has Mastered It
```

AI 可以：

- 利用已知知识建立联系；
- 根据当前表现发现旧状态可能不准确；
- 在重要变化后提出 Patch。

AI 不应：

- 因为“刚讲完”就宣布用户已经掌握；
- 用百分比制造虚假的精确；
- 未经用户认可把长期学习状态当成既成事实。

模板：

`../../templates/LEARNING_STATE_TEMPLATE.md`

---

# 7. Knowledge Asset Index 怎么用

Asset Index 描述的是：

> 知识库里有什么，每份资产承担什么职责。

用户要求整理笔记时，AI 先判断：

```text
没有同职责资产
→ New

已有资产，本轮是补充
→ Update

两份同职责重复
→ Merge / Supersede

同主题但职责不同
→ 共存 + 建立关系
```

例如：

```text
solvePnP 工程速用
+
平面 PnP 与 IPPE 理论笔记
```

可以同时存在。

模板：

`../../templates/KNOWLEDGE_ASSET_INDEX_TEMPLATE.md`

---

# 8. AI 什么时候提示形成笔记

允许，但必须克制。

通常只在：

- 一条知识主线已经闭合；
- 一个重要误区已经稳定解决；
- 当前理解具有长期复用价值；
- 已有 Canonical Note 很适合更新；
- Deep Study 阶段准备结束；
- 不保存会影响后续连续性；

时简短提醒。

例如：

> 这一段已经形成完整的“平面 PnP 多解”主线，而且已有对应理论笔记，更适合更新原笔记，不必另建一篇。

是否真正生成，仍由用户决定。

---

# 9. 对话变长时怎么办

不为每次讲解创建 Checkpoint。

继续复用：

- `../../common/Context_Health.md`
- `../../common/Handoff_Protocol.md`
- `../../common/Conversation_Continuity.md`
- `../../common/Carry_Forward.md`

知识场景重点恢复：

```text
Current Learning Goal
Confirmed Understanding
Important Corrections
Current Gaps
Relevant Knowledge Assets
Next Direction
```

只有准备换对话 / 长期暂停 / 重要认知转折等事件发生时，才物化：

`LEARNING_THREAD_STATE.md`

但如果当前学习本身处于正式 Specialist 角色中：

> 优先使用既有 `SPECIALIST_CHECKPOINT.md` 承载上述 Knowledge Payload，不同时维护两份 Checkpoint。

只有学习主题要脱离 Specialist 独立继续时，再生成 `LEARNING_THREAD_STATE.md`。

---

# 10. 项目驱动学习怎么接回主线

如果知识断点来自正式项目：

```text
Supervisor
→ Specialist Brief
→ Specialist Conversation
   + Knowledge Playbook
   + Relevant Learning State / Assets
→ Specialist Return
→ 回主线
```

此时：

- Specialist Entry 管 Scope；
- 本 Playbook 管“怎么帮助用户理解”；
- Debug / Architecture / Work 仍由各自 Playbook / Role 管。

不要让知识对话接管整个项目。

---

# 11. 一次普通答疑什么时候什么都不做

如果只是十分钟局部问题，并且：

- 没有形成长期状态变化；
- 没有要保存的知识资产；
- 不需要换对话；

那么：

> **直接回答即可。**

不生成：

- Learning State Patch；
- Thread State；
- Asset Index Patch；
- 正式笔记。
