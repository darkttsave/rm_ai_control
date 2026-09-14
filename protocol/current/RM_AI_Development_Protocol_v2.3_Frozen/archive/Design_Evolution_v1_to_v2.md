# Design Evolution — v1.0 → v2.0

> 本文件记录为什么 v2.0 需要出现。它不是新的待办清单。

---

# 1. v1.0 已经解决的问题

v1.0 完成了：

- Human Core；
- Human–AI Gates；
- AI Autonomous Contract；
- Verification Levels；
- Brownfield First；
- Project State；
- Human-readable Task Report；
- 项目接管、Debug、Integration、Refactor、Learning、C++ Architecture Playbooks。

它解决的是：

> **AI 参与 RM 工程时，如何避免过度设计、补丁堆积、认知债务、验证撒谎和执行体越权。**

---

# 2. v1.0 之后暴露的第一个缺口：协议有规则，但缺少最高判断标准

连续讨论后逐渐收敛出：

1. 为什么造？
2. 造不造得出来？
3. 稳不稳定？
4. 出了问题会不会修？

这四问比“Investigation / Delivery / Architecture”等流程更高一层。

它们把原来分散的规则重新挂载到：

- 方向；
- 交付；
- 稳定；
- 工程控制力。

安全被保留为所有四问下面的硬约束，而不是第五个并列目标。

---

# 3. 为什么保留“为什么造”

在传承优秀的队伍中，学长交付的方向通常高度可靠。

但 v2.0 仍保留第 0 问，因为目标不是鼓励新人无依据挑战传承，而是防止：

> 接受任务 = 停止思考。

开发者应该从“先依赖成熟判断”逐步成长到“理解判断、识别前提变化、最终能产生下一代判断”。

---

# 4. 第二个缺口：真实开发不会只有 IDE / Work

实际模式仍然长期需要：

- 一个守住项目主线的总监督对话；
- 若干隔离深上下文的专项对话；
- 一个真正读仓库、改代码、编译和测试的 Work / 执行体。

过去曾探索 Supervisor / Specialist / Executor，但将其自动化为完整 Multi-Agent Framework 会产生额外协调成本。

v2.0 因此做出区分：

> **人工的“总监督 + 分对话 + 执行体”成为默认 Operating Model；自动多 Agent Runtime 仍留在 Archive。**

---

# 5. 第三个缺口：对话必然需要交接

执行体可以从仓库规则恢复行为，但主对话和专项对话会耗尽上下文。

v2.0 不建立中央 Memory Framework，而是把不同信息放到不同位置：

- 项目事实 → Project State / Code / Git；
- 当前主线 → Supervisor Snapshot；
- 专项输入 → Specialist Brief；
- 专项结果 → Specialist Return Note；
- 执行任务 → Task Brief；
- 一次修改给人看的结果 → Task Report。

核心原则：

> **交接传递最小当前状态，不传递完整聊天历史。**

---

# 6. v2.0 的最终变化

v2.0 不增加更复杂的 Framework，而是减少认知层级：

```text
RM 四问
   ↓
Human / AI / Shared Contracts
   ↓
Default Operating Model
   ↓
按需 Playbooks
   ↓
真实仓库与实验
```

协议是否继续演化，由真实 RM 项目摩擦决定。
