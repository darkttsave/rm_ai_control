# Bootstrap Packet

> Producer：Manager
>
> Consumer：新的 Guided Dart 知识对话（Knowledge Conversation）— PID / Control 接口基础
>
> 原则：**Minimum Sufficient Handoff + Overview + Relevant Detail。**
>
> 本包只组装上下文与指针，不产生新的项目事实、学习状态或验证结论。
>
> **Bootstrap 轮次**：2026-09-15 **首次真实 Bootstrap**。此前的同名登记为测试操作，未产生真实知识对话；承载旧「电控学习入口」的对话已被用户归档且当前无法定位。本包不依赖任何聊天记录——入口即本文件。

## Target

- Target Role / Conversation Type: 独立知识对话（Knowledge Conversation），消费 `playbooks/knowledge/` 知识层入口
- New / Continue Existing: New
- Bootstrap Round: 1（首次真实交接；2026-09-15 重生成，替代同名测试版本）
- Suggested Name: `Guided Dart Knowledge — PID / Control 接口基础（P0.5）`

## Goal

在 `P0.5` 通用基础探索范围内，围绕**用户已有的 PID 笔记与由此产生的疑问**展开讲解与讨论，建立制导镖语境下 `Control` 层接口所需的通用理解。

- 讲清楚：PID 的通用原理与直觉；P / I / D 各自作用及耦合；为什么 `算法算得快 ≠ 飞镖反应得快`（承接已学的延迟 / 响应时间 / 带宽 / 饱和）；PID 在制导镖链路中位于 `Control` 层、与 `Guidance` 分层的关系。
- 讨论形态：**以用户的既有笔记和疑问为主线**展开，而不是从零按教材顺序通讲。
- 节奏：先讲清楚 → 用户提问 → 确认理解后，再由用户决定是否形成 / 更新正式笔记。
- 不进入正式方案设计，不提前锁定下一赛季技术路线。

## Why This Route

- 这是知识断点延续，不是项目方向决策，也不是仓库实现任务，因此不进入 Main Supervisor / Human，也不进入 Work / Executor。
- `control/PROJECT_CONTROL_INDEX.md` §8 明确：继续 Guided Dart 知识缺口 → Specialist + Knowledge Playbook，或在合适时使用独立知识对话。
- `GUIDED_DART_P0_5_CHECKPOINT.md` §4 已把 **`Control 接口基础`** 登记为算法成员当前最值得补的内容之一，因此 PID 主题与 P0.5 同阶段对齐。
- 用户明确表示不希望由原 P0 阶段对话继续承担这部分讲解，因此另立独立知识对话，而**不是**替换或关闭原 P0.5 对话。
- 本入口不随聊天记录存亡：Manager 的状态恢复只依赖 `control/PROJECT_CONTROL_INDEX.md` 与权威产物，旧对话被归档不影响本包可用性。因此下游不需要、也无法回读任何既往聊天。
- 本轮以笔记与疑问为主线，属于知识层内部 `Explanation →（经用户确认）Note Output` 的正常流程；`playbooks/knowledge/README.md` §2 明确两者解耦，因此不需要在开场就承诺产出正式笔记。

## Current Project Context

只放会改变本任务判断的项目事实：

- 当前 Stage：`Other — P0.5` / 内容方向探索；P0 的领域定向与系统地图建立已基本完成。
- 当前不是 Project Inception，不做正式技术路线收敛。
- P0.5 当前目标：在正式接手项目、下一赛季规则与队内最终任务确定前，补齐跨方案通用的基础知识，并沉淀为可复习笔记。
- 与 `Control` 直接相关的既有认知：`Guidance / Control / Actuator 必须分层`；Guidance 输出不能直接等同于舵机角度；`Measurement ≠ State`；姿态 ≠ 速度方向。
- 已形成的协作定位：`横向知识要齐，纵向深度可以不同`；算法成员核心纵深为 `Vision → Estimation → Guidance`；**`Control`、`Actuator`、机械 / 气动被登记为「重要接口知识区」，不要求当前深入成为飞控 / 机械专家。**
- P0.5 已完成的前置通用内容（与本主题直接衔接）：响应时间 / 延迟 / 带宽 / 饱和，其中关键认识为 `算法算得快 ≠ 飞镖反应得快`；姿态、速度方向、轨迹角、攻角。
- 已登记的飞镖笔记组织方式：不强制拆篇；先给核心图 / 关系；概念按依赖顺序出现；核心公式紧跟核心图；细节与纠错后置；标题短；图片位置留空由用户后续放入。
- 2026 规则只作为历史基线，不得外推为下一赛季规则。

### Sources

- `control/PROJECT_CONTROL_INDEX.md`（Last Refreshed: 2026-09-15）
- `GUIDED_DART_P0_5_CHECKPOINT.md`（Control Index 登记的 Stage Source 与 Latest Project State；artifact 内未声明日期，文件系统时间戳 2026-09-13）

## Relevant Decisions / Invariants

以下来自 Checkpoint 的已记录决定 / 边界，下游不得自行更改：

- 阶段命名采用 `P0.5 — 内容方向探索`；P0 视为已基本完成，不重做“制导镖是什么 / 系统由哪些模块组成”的基础定向。
- 不进入正式 Project Inception。
- 不提前确定下一赛季最终技术路线；不选定最终主仓库 / 主开源方案；不大规模深入某一个学校的源码。
- 不把 2026 规则直接当成下一赛季规则。
- 暂不深入：ISMCG 数学推导、**三回路 / 伪攻角控制公式**、完整飞行动力学推导、CFD 细节、**高级飞控设计**。
- `Control` 属于接口知识区；不把算法成员训练成完整飞控 / 机械专家，当前目标是理解接口与系统边界。
- 飞镖预热保持低强度、持续进行，与 ROS2 / 深度学习长期基础主线并行，不吞掉主线。

### 本主题的 Sufficiency 方向（待用户确认，见 `User Input Still Needed`）

`playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md` §2 要求学习先对齐当前责任真正需要的 Engineering Control Ladder：

```text
L0 Reproduce / L1 Operate / L2 Tune / L3 Diagnose / L4 Modify / L5 Explain / L6 Reconstruct
```

结合上面已登记的「`Control` 属接口知识区、不要求飞控专家深度」，本轮合理目标区间大概率在 **L1–L3**（会读懂接口与参数含义、能理解参数导致的异常）。**具体取哪一级属用户决定，Manager 不代为设定。**

## Relevant Learning State

**Unknown / Not Registered。**

`control/PROJECT_CONTROL_INDEX.md` §3 明确记录 Guided Dart 跨方案基础方向的 `Learning State: Not Registered`。Checkpoint 中的“已学习 / 已明确”条目是**已记录的探索进度**，不是已登记的用户 Learning State，也不能作为掌握度结论使用。

具体到本主题：

- 用户已知悉 / 接触过 PID 与卡尔曼滤波——此为**用户本轮的口头陈述**，未见于任何权威产物，故不作为已登记学习状态。
- 「P0 阶段对话曾建议了解 PID 与卡尔曼滤波」同样**仅属用户陈述**，未登记于任何权威产物；Manager 不把它写成项目决定。
- 因此下游不得假设用户已具备 PID 前置，也不得在讲解后自行宣布用户已掌握。

### Learning State Source

- Unknown / Not Registered（无权威 Learning State Artifact 被登记）
- 可用的初始化入口：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/LEARNING_STATE_TEMPLATE.md` 与 `templates/KNOWLEDGE_PROMPT_CARDS.md` Card 0（最小可用版本即可，不做全知识库建档）

## Relevant Knowledge Assets

**Unknown / Not Registered。**

`control/PROJECT_CONTROL_INDEX.md` §3 明确记录 `Knowledge Asset Index: Not Registered`。

需要特别区分（防止把用户材料误当已登记资产）：

- 用户提到自己**做过一个「笔记整理的项目」**，本轮讨论将围绕这些笔记与疑问展开 —— 此信息为**用户本轮陈述，未经核实、未登记**。
- 该笔记整理项目的位置、结构、命名、覆盖范围，以及其中哪些内容涉及 PID / Control，**Manager 一概未知**，不得假设。
- `GUIDED_DART_P0_5_CHECKPOINT.md` §7 登记的用户侧材料是 `knowledge_note.md（迎角、攻角与俯仰角）` 与 `02(1).md`（笔记风格参考），**两者均为 AoA / 笔记风格相关，未涉及 PID**；不得把它们当作本主题的 PID 笔记。

### Asset Source

- Unknown / Not Registered（无 Knowledge Asset Index 被登记；用户侧笔记项目未登记）

## Required Protocol / Entry Files

只列本任务真正需要的入口，按需读取，不复制正文：

- `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md` — 知识层主路由；决定 Sufficiency 目标、Explanation / Note 分离、何时提示形成笔记。
- `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/explanation/EXPLANATION_CORE.md` 与 `explanation/EXPLANATION_PROFILES.md` — 讲解阶段的使用规则。
- `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/notes/NOTE_CORE.md`、`notes/NOTE_STYLE_STANDARD.md`、`notes/NOTE_PROFILES_AND_OPERATIONS.md` — **本轮笔记是主线之一，因此在真正开始整理 / 更新笔记时即需读取**。
- `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/KNOWLEDGE_PROMPT_CARDS.md` — 启动 / 续接的可复制指令。
- `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Handoff_Protocol.md` 与 `common/Carry_Forward.md` — 最小充分交接与本对话结束时必须带走什么。
- `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Context_Health.md` — 仅在长对话后上下文可靠性下降时读取。

不要因为“可能有用”把整个协议全部塞进来。

## Task-specific Materials

指针，不复制内容：

- `GUIDED_DART_P0_5_CHECKPOINT.md` §3（延迟 / 响应时间 / 带宽 / 饱和；姿态、速度方向、轨迹角、攻角）与 §4（`Control 接口基础` 定位、分层认识）。
- `GUIDED_DART_P0_5_CHECKPOINT.md` §5（笔记组织方式、Do Not 边界）与 §7（材料锚点）。
- `GUIDED_DART_P0_5_CHECKPOINT.md` §7 中的 `大连理工大学凌BUG 2026 飞镖技术报告` — 已登记为「状态估计、MPC + PID」参考锚点；**仅作定位参考，按 §5 不深入该校源码**。
- **用户的 PID 笔记（待用户提供）** — 本轮讨论主线。
- **中科大电控教学视频（待用户提供链接 / 要点）** — 用户疑问的来源材料；**未登记于 Checkpoint §7 的 Source Anchors**。
- 用户既有笔记风格参考：`02(1).md`（沿用登记过的「图优先、依赖顺序、短标题、细节后置」结构）。

访问能力说明：上述用户侧材料与用户笔记整理项目**不在本控制仓库内**，本包不假设下游对话能直接访问；如需要，必须由用户显式提供内容或确认可访问路径。

## Current Unknowns / Gaps

- **本主题无权威来源**：用户的 PID 笔记、笔记整理项目的结构与位置、中科大视频材料，全部未提供、未核实、未登记。
- 用户 PID 疑问的**具体清单未知**（用户仅说明“产生了一些 PID 相关疑问”）。
- 本轮期望达到的 Sufficiency 等级未知（L1–L3 区间内的具体级别属用户决定）。
- 是否同时处理卡尔曼滤波未知。**Manager 建议单独立项**：PID 属 `Control` 层、卡尔曼滤波属 `Estimation` 层，混入同一对话会削弱 Checkpoint 已确立的分层认识；如按此建议，卡尔曼滤波另开一条线程。
- 本主题是否已有用户既有笔记、是否要更新已有笔记还是新建，未知。
- 项目侧长期 Unknown 一并保留：下一赛季正式规则；用户最终是否正式负责制导镖算法方向；队内遗产（发射架 / 镖体 / 电控板 / 传感器 / 场地 / 历史日志 / 学长经验）；算法侧最终负责边界（是否涉及部分 `Control`）；队内实际机械方案、执行机构、舵机动态能力与可量化控制能力；是否存在可用飞行数据记录 / 回放系统；Main Supervisor 与活跃角色 / 对话状态未登记。

## User Input Still Needed

Manager 不能替用户决定，以下保持留空待用户给出：

- **用户 PID 笔记的提供方式**：文件名 / 路径 / 直接粘贴内容；以及该笔记整理项目的结构说明。
- **本轮的具体疑问清单**：用户看视频后产生的 PID 疑问到底有哪些，优先解决哪一条。
- **中科大电控教学视频的材料**：链接、标题或用户摘录的要点。
- **Sufficiency 目标**：本轮只要求「读懂接口与参数含义」（L1–L2），还是要到「能诊断参数导致的异常」（L3）；是否需要在讲解后形成可复习笔记。
- **笔记归属**：若形成 / 更新笔记，写到用户既有笔记整理项目里，还是写入飞镖笔记体系；文件名与落点；是否并入现有笔记。
- **卡尔曼滤波**：是否接受 Manager 建议另开独立线程，或本次必须一并覆盖。
- **配图**：笔记中图片位置是否继续留空、由用户后续放入。
- **范围确认**：是否只讲通用 PID 原理与制导镖 `Control` 接口定位，不引入具体公开方案的 PID 实现细节。

## Suggested Opening Prompt

> 这是一个独立的 Guided Dart `P0.5` 知识对话，主题是「PID / Control 接口基础」。当前阶段为 `P0.5 — 内容方向探索`，不进入正式方案设计，不提前锁定下一赛季技术路线，也不深入三回路 / 伪攻角控制公式与高级飞控设计。我会提供自己的 PID 笔记和我看中科大电控教学视频后产生的疑问，请围绕我的笔记和疑问展开讨论，而不是按教材顺序通讲；先讲清楚，我提问确认理解后，再由我决定是否整理成正式笔记。请同时说明 PID 在制导镖链路中处于 `Control` 层、与 `Guidance` 分层的关系。

## Verification / Expected Return

目标对话结束后，应该回什么：

- 用户能否用自己的话说明 PID 三项各自作用、为什么 `算法算得快 ≠ 飞镖反应得快`，以及 PID 在链路中位于哪一层。
- 用户本轮的具体 PID 疑问是否被逐条回答；哪些仍未解决。
- 是否产出或更新了笔记、落在哪里（若未产出，明确说明原因）。
- 本次新出现的 Unknown 与暴露出的前置基础断点。
- 是否出现需要回到 Manager 的状态变化（例如主题切换、需要 Checkpoint / State Update、需要登记新的 Knowledge Asset）；如有，按 `common/Carry_Forward.md` 形式返回。
- 明确声明：本对话不产生项目阶段、技术路线或掌握度结论；如需登记 Learning State Patch，必须由用户确认。

## Freshness / Confidence

- Latest source date: `control/PROJECT_CONTROL_INDEX.md` 为 2026-09-15（本次重生成刷新）；`GUIDED_DART_P0_5_CHECKPOINT.md` artifact 内未声明日期（文件系统时间戳 2026-09-13）。
- Possibly stale items: Control Index §2 记录 Guided Dart P0.5 对话活动状态为 Unknown；上游对话的实际进展可能晚于该索引，若与 Checkpoint 冲突以新权威 Artifact 为准。
- Missing authoritative source: 无被登记的 Learning State Artifact；无 Knowledge Asset Index；本主题用户笔记与视频材料未提供；Main Supervisor 未登记。承载旧「电控学习入口」的对话已被用户归档且未定位——该对话从未登记为权威产物，其丢失不影响本包（本包不引用任何聊天记录）。

## Carry Forward

下游必须保留：

- Current Goal：围绕用户的既有 PID 笔记与疑问，建立制导镖 `Control` 接口层所需的通用理解；不进入正式方案设计，不提前锁定下一赛季技术路线。
- Verified Facts：P0 系统地图已完成；`Guidance / Control / Actuator` 分层；`Measurement ≠ State`；姿态 ≠ 速度方向；`算法算得快 ≠ 飞镖反应得快`；2026 规则仅历史基线；`Control` 属接口知识区、不要求飞控 / 机械专家深度。
- Locked Decisions：当前 Stage 为 `P0.5 — 内容方向探索`；不进入 Project Inception；不提前锁定技术路线；不深入三回路 / 伪攻角控制公式、ISMCG 推导、完整飞行动力学推导、CFD、高级飞控设计；不深入单一学校源码。
- Active Constraints：笔记组织沿用已登记结构（图优先、依赖顺序、短标题、细节后置、图片留空）；讲解与笔记产出解耦；有笔记 ≠ 用户已掌握。
- Open Questions：用户 PID 疑问清单；Sufficiency 目标等级；笔记归属与落点；卡尔曼滤波是否另开线程；中科大视频材料；项目侧长期 Unknown（下一赛季规则、队内遗产、人员分工、实际控制 / 机械能力）。
- Required Materials：本包 `Task-specific Materials` 中列出的 Checkpoint 章节与用户侧 PID 笔记 / 视频材料（需用户提供或确认可访问）。
- First Next Step：由用户在开场提供 PID 笔记与疑问清单，随后按依赖顺序澄清 PID 三项作用及其与延迟 / 带宽 / 饱和的关系，并锚定 PID 在制导镖链路中的层级位置。
