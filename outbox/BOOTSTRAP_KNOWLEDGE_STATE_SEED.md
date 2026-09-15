# Bootstrap / Hot Start Packet — Knowledge State Seed

> Producer：Manager（`rm-ai-control_v1.0` Navigator）
>
> Consumer：**已存在的知识重构执行体**（长期管理另一个知识整理工作目录）
>
> 原则：**Minimum Sufficient Handoff + Overview + Relevant Detail。**
>
> 交接类型：**Hot Start**。你已经在长期维护自己的知识重构成果；本任务**不初始化、不重构、不扫描**你的知识库。
>
> 本包只组装上下文与指针，不产生新的项目事实、学习状态或验证结论。

## Target

- Target Role / Conversation Type: 知识重构执行体（Knowledge Reconstruction Executor）——继续使用你**现有**的工作目录与会话
- New / Continue Existing: **Continue Existing（Hot Start）**
- 本任务性质: 只做 **Extraction（提取）**，不做 **Reconstruction（重构）**

## Goal

从你**已经维护**的知识重构成果、目录结构、记忆层与已有正式笔记中，提取 **C++ / OpenCV / ROS2** 三个主题的：

1. **Learning State Candidate** — 用户当前已被证据支持能做什么、还有什么 Gap；
2. **Knowledge Asset Candidate** — 知识库里已经存在哪些资产、各自承担什么职责。

产出 **`KNOWLEDGE_STATE_SEED_CANDIDATE.md`**（或你工作区内等价的候选报告），交给 Manager 做中游审查。

## Why This Route

- `rm-ai-control` 当前记录 `Learning State = Not Registered`、`Knowledge Asset Index = Not Registered`，所有新的知识对话都没有长期状态入口。
- 在 C++ / OpenCV / ROS2 上，**唯一可靠来源就是你的知识重构成果**；Manager 不能从文件名或标题推断用户学到了什么程度。
- 需要的是"最小可用"，不是全量建档：协议明确"不要先做一次全知识库建档工程"，Asset Index 采用 **Usage-driven Incremental Registration**。
- Manager 会把你报告中的 Learning State 候选压缩成**一次低负担的用户确认**（用户只需"采用推荐 / 我要调整"）。因此报告要**可被确认**，不要写成教材。

## Scope

本轮**只处理**：

- C++
- OpenCV
- ROS2

以下主题**保持 Not Registered，不需要你提供任何材料，也不要为它们做检索或补资料**：

- Deep Learning
- PnP
- EKF
- PID / Control（另有独立知识线程正在准备中）

## Required Workspace Declaration

报告开头必须先声明（Manager 用它建立来源链）：

- 你的工作区根目录（真实路径）；
- 记忆层 / 重构状态文件的实际位置；
- 你维护的知识资产主目录；
- 本次提取所依据的时间点 / 最新更新时间。

如果你**无法定位**自己的记忆层或重构成果，**不要**开始重建——直接返回"无法定位 〈具体位置〉"并停止。

## A. Learning State Candidate

对 C++ / OpenCV / ROS2 **分别**给出：

| 字段 | 要求 |
|---|---|
| Topic | C++ / OpenCV / ROS2 |
| Evidence | 支持该判断的真实来源（项目、调试、源码阅读、实验、你维护的重构记录） |
| Observed / Supported Capability | 用户**已被证据支持**能做什么 |
| Relevant Engineering Control Level | 证据足以判断时引用 Engineering Control Ladder；不足则写 `Unknown` |
| Known Gaps | 仍然存在、可能阻塞后续开发的认知断点 |
| Uncertain / Unsupported Claims | 看起来成立但**证据不足**的说法，显式列出 |
| Source Pointers | 指向你工作区内的具体文件 / 记录 |

复用 v2.3 的 Engineering Control Ladder（**不要另造评级体系**；下文已完整给出，你无需访问该协议仓库）：

```text
L0 Reproduce
L1 Operate
L2 Tune
L3 Diagnose
L4 Modify
L5 Explain
L6 Reconstruct
```

如需更细，可对齐 Learning State 模板字段：`Exposure / Known / Current Engineering Control / Gaps / Evidence & Experience / Project Relevance / Trigger to Revisit`。
但**不要为了本任务重构你自己的目录或文件结构**。

强制规则：

1. 只写**已有材料支持**的内容；没有证据就写 `Unknown`。
2. **「有笔记」≠「已掌握」**；资产存在不能推出用户会。
3. 可以说明"某知识曾支持过什么真实工程行为"，但必须给出经历来源。
4. **不使用百分比**，不制造虚假精确。
5. 引用 Ladder 时**必须同时写具体能力**，不能只写标签。例：`能够读取 solvePnP 输入输出，并定位 2D 点、3D 点、K、D 的来源；遇到位姿异常时知道先检查角点顺序、坐标系与输入尺度。`
6. **不替用户宣布 mastery**；最终解释权属于用户。
7. 疑点宁可放进 `Uncertain / Unsupported Claims`，不要升格成 Known。

## B. Knowledge Asset Candidate

对已有 C++ / OpenCV / ROS2 知识资产给出登记候选：

| 字段 | 要求 |
|---|---|
| Asset Name | 资产名称 |
| Location | 路径 / 文件（相对你的工作区） |
| Type | Theory / Concept、API / Code、System / Architecture、Engineering / Project、Source / Legacy |
| Coverage / Responsibility | 它主要**回答什么问题**、在知识体系里承担什么职责（不要只抄标题） |
| Status | Working / Canonical / Superseded / Source |
| Related Topic | C++ / OpenCV / ROS2 |
| Source / Maintenance Evidence | 来源与维护依据（何时形成、依据什么材料、谁在维护） |

规则：

1. **同主题不同职责的资产允许并存**（例：API 速查 + 理论主干）。
2. **不因为标题相似就合并。**
3. 原始旧资料按既有规则视为 **只读 Source 资产**，不要改写。
4. 关系（前置 / 后续 / 被谁引用）有明确依据时才写，不确定就留空，不要猜。
5. 只登记你**确实能指向位置**的资产；位置或身份不确定的，单独列在"未能确认身份的资产"小节。

## Do Not / 明确禁止

不要：

- 继续做新的知识重构，或新建知识模块；
- 为 Deep Learning / PnP / EKF 补资料或做定向检索；
- 扫描整个历史知识库（只取你已维护成果中与 C++ / OpenCV / ROS2 相关的部分）；
- 重写、合并、删除、迁移现有笔记；
- 修改 `rm-ai-control`（**只读**；本轮你不承担该仓库任何写权限）；
- 推测用户学习程度，或用"应该 / 大概 / 显然"填空；
- 为了让报告显得完整而扩写成通用知识教程。

## Stop Conditions

出现以下情况**立即停下来返回**，不要自行扩大工作：

- 无法定位自己的记忆层 / 重构成果；
- 现有资料**无法证明资产身份**（不知道是哪一份、在哪、谁维护）；
- 发现明显互相矛盾的证据（不要自行调和，标注冲突即可）；
- 必须改变现有知识重构项目的结构才能继续；
- 必须写入你原本不拥有的目录。

## Expected Return

返回**一份报告**，包含：

1. Workspace Declaration（见上）；
2. `A. Learning State Candidate`：C++ / OpenCV / ROS2 三节 + 一节"未覆盖主题确认"；
3. `B. Knowledge Asset Candidate`：含"未能确认身份的资产"小节；
4. 一段简短说明：你**没有**做哪些事（供 Manager 确认范围未被扩大）。

建议同时：

- 把报告存为你工作区内的 `KNOWLEDGE_STATE_SEED_CANDIDATE.md`；
- 并把**全文贴回给用户**（Manager 需要读到全文才能做中游审查）。

不需要：

- 生成 Learning State Patch（Manager 负责压缩成一次用户确认）；
- 修改任何 `rm-ai-control` 文件；
- 生成正式笔记或 Note Output。

## 边界与不变项

- 本任务**不得阻塞**正在准备的 `PID / Control` 知识线程。
- 本任务不改变 `Guided Dart P0.5` 阶段，也不改变任何项目 / 协议语义。
- 若本轮无法完成，返回已完成部分 + 明确缺口；**不要用估计补齐**。

## Freshness / Confidence

- Issued: 2026-09-15（Manager，`rm-ai-control`；与 `control/PROJECT_CONTROL_INDEX.md` 的 Last Refreshed 一致）
- 依据：`control/PROJECT_CONTROL_INDEX.md` §3 — `Learning State: Not Registered`、`Knowledge Asset Index: Not Registered`
- 你的报告必须自带来源时间点；Manager 不假设你的重构成果是最新的。
