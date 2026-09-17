# Bootstrap Packet

```yaml
Artifact Type: Bootstrap Packet (Knowledge Conversation Handoff)
Scope: Project / Guided Dart / Knowledge
Producer: Manager (rm-ai-control_v1.1 Navigator)
Created: 2026-09-16
Lifecycle: Pending
Semantic Authority: Mechanical (assembled from cited stable sources; asserts no new semantic state)
Authoritative Source:
  - control/knowledge/LEARNING_STATE.md
  - control/knowledge/KNOWLEDGE_ASSET_INDEX.md
  - projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md
  - control/PROJECT_CONTROL_INDEX.md
Supersedes: None
Next Consumer: Guided Dart PID / Control Knowledge Conversation
```

> Producer：Manager（`rm-ai-control_v1.1` Navigator）
>
> Consumer：新的 Guided Dart 知识对话（Knowledge Conversation）— PID / Control 接口基础
>
> 原则：**Minimum Sufficient Handoff + Overview + Relevant Detail。**
>
> 本包只组装上下文与指针，不产生新的项目事实、学习状态或验证结论。
>
> **Bootstrap 轮次**：2026-09-16 **首次真实 Bootstrap**（按 `rm-ai-control_v1.1` Artifact Lifecycle 更新版）。此前的同名登记为测试操作，未产生真实知识对话；承载旧「电控学习入口」的对话已被用户归档且当前无法定位。本包不依赖任何聊天记录——入口即本文件。
>
> **Lifecycle**：本包在 `outbox/` 中为 `Pending Consumption`，由 [`../control/MEMORY_INDEX.md`](../control/MEMORY_INDEX.md) 导航。它**不是**语义权威，下游不得把它当作权威来源引用。目标对话真正建立后，须提供消费证据，再由 Memory Curator 归入 `archive/dispatches/`。

## Target

- Target Role / Conversation Type: 独立知识对话（Knowledge Conversation）
- **Target Surface: `Plain Conversation`**（普通新对话：**无仓库访问、无文件读写、无 Git、无持久化能力**）
- New / Continue Existing: New
- Bootstrap Round: 1（首次真实交接；2026-09-16 按 v1.1 更新，替代同名测试版本）
- Suggested Name: `Guided Dart Knowledge — PID / Control 接口基础（P0.5）`

## Execution Contract

本包面向**没有仓库权限的普通对话**。以下为硬约束，下游必须遵守。

### 1. 能力边界

- 你**没有**本仓库（`rm-ai-control`）或任何本地目录的访问权限：无法读取、列出、搜索或打开本包提到的任何路径。
- 你**没有**文件写入权限：不得声称已创建、更新或保存任何文件。
- 你**没有** Git 权限：不得提交、暂存或改动版本历史。

### 2. 读取规则

- 本包中出现的所有路径（`control/…`、`projects/…`、`protocol/…`、`C:\Users\SHIN\Desktop\知识重构` 等）**仅为 provenance（来源指针）**，用于说明事实从何而来，**不代表你可以读取**。
- **不得假设**自己已读到任何文件，也不得凭路径名推测其内容。若某条规则或材料确实影响本轮判断，**请直接请用户上传或粘贴对应内容**。
- 本轮**必需的最小规则已在本包内联**（见 `Required Protocol / Entry Files`）。先以内联规则工作，不要为了"完整"而要求用户上传整个协议。

### 3. 写权限规则

- 下游**不得**直接维护或改写：Learning State、Knowledge Asset Index、Project Control Index、Memory Index、Memory Changelog、任何协议文件或 Git 历史。这些由 Manager → Memory Curator / Repo Operator 按 `ARTIFACT_LIFECYCLE.md` 处理。
- 讨论中提到的**「笔记目标落点」只表示最终归属**（这段知识最终想放在哪里），**不代表当前对话拥有该位置的写权限**。当前对话不向任何位置写入。
- 若本轮形成了值得长期保留的内容，**只能以提案形式提出**（Patch 建议 / Note 草稿文本），且**必须由用户确认**；是否落盘、落在哪里、由谁落盘，由用户与 Manager 决定。

### 4. 持久化路径（唯一允许的方式）

```text
本对话（Plain Conversation）
→ 产出 Return / Checkpoint Artifact（对话内文本）
→ 用户交给 Manager
→ Manager 提交 Memory Curator
→ Memory Curator 按 Artifact Lifecycle 持久化 / 索引 / 归档
```

- 在**对话结束或重要节点**，请生成 **Return 或 Checkpoint Artifact 文本**（供用户复制带回），而不是尝试写文件。
- 不要自行更新任何 Index；不要把本对话的结论当作已生效的持久状态。

## Goal

在 `P0.5` 通用基础探索范围内，围绕**用户已有的 PID 笔记与由此产生的疑问**展开讲解与讨论，建立制导镖语境下 `Control` 层接口所需的通用理解。

- 讲清楚：PID 的通用原理与直觉；P / I / D 各自作用及耦合；为什么 `算法算得快 ≠ 飞镖反应得快`（承接已学的延迟 / 响应时间 / 带宽 / 饱和）；PID 在制导镖链路中位于 `Control` 层、与 `Guidance` 分层的关系。
- 讨论形态：**以用户的既有笔记和疑问为主线**展开，而不是从零按教材顺序通讲。
- 节奏：先讲清楚 → 用户提问 → 确认理解后，再由用户决定是否形成 / 更新正式笔记。
- 不进入正式方案设计，不提前锁定下一赛季技术路线。

## Why This Route

- 这是知识断点延续，不是项目方向决策，也不是仓库实现任务，因此不进入 Main Supervisor / Human，也不进入 Work / Executor。
- `control/PROJECT_CONTROL_INDEX.md` §8 明确：继续 Guided Dart 知识缺口 → Specialist + Knowledge Playbook，或在合适时使用独立知识对话。
- `projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md` §4 已把 **`Control 接口基础`** 登记为算法成员当前最值得补的内容之一，因此 PID 主题与 P0.5 同阶段对齐。
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

- `control/PROJECT_CONTROL_INDEX.md`（Last Refreshed: 2026-09-16）
- `projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`（Control Index 登记的 Stage Source 与 Latest Project State；artifact 内未声明日期，文件系统时间戳 2026-09-13）

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

**已建立（Current）。** 首版最小 Learning State 于 2026-09-16 经用户确认落盘，但**只登记 C++ / OpenCV / ROS2**。

与本主题相关的部分：

- `C++`：**`L4 Modify`，限定于已完成的 OpenCV / ROS2 小型任务语境**。这是唯一与本主题有实质关系的已登记条目——PID / Control 的实现与阅读会落在 C++ 上。其 `Known Gaps` 明确包含类 / 对象 / 生命周期 / 所有权 / 多态 / 回调绑定仍可能造成阅读阻塞，且「有速查入口 ≠ 断点已消失」。**不得把该限定语境的 L4 当作全局 C++ 能力。**
- `OpenCV` / `ROS2`：已登记，但**与本主题无直接关系**，不构成本轮前置。
- **`PID / Control` 本身仍为 `Not Registered`**：本主题没有任何已登记的用户学习状态，因此下游**不得假设用户已具备 PID 前置**。

用户侧陈述（仍未登记）：

- 用户已知悉 / 接触过 PID 与卡尔曼滤波——此为**用户口头陈述**，未见于任何权威产物，不作为已登记学习状态。
- 「P0 阶段对话曾建议了解 PID 与卡尔曼滤波」同样**仅属用户陈述**，Manager 未把它写成项目决定。

**边界**：下游不得在讲解后自行宣布用户已掌握；任何 Learning State Patch 必须由用户确认。

### Learning State Source

- Current：[`../control/knowledge/LEARNING_STATE.md`](../control/knowledge/LEARNING_STATE.md)（Lifecycle `Current`；2026-09-16；来源为用户确认的知识重构执行体候选报告）
- 该文件的 `Not Registered` 一节显式保留：`Deep Learning`、`PnP`、`EKF`、`PID / Control`
- Patch 入口：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/LEARNING_STATE_TEMPLATE.md` 的 `Patch Convention`（只提最小 Patch，不重写全文）

## Relevant Knowledge Assets

**已建立（Current），但本主题无已登记资产。** 首版 Knowledge Asset Index 于 2026-09-16 落盘，共 **21 条**（C++ 5 / OpenCV 11 / ROS2 5），全部位于外部工作区 `C:\Users\SHIN\Desktop\知识重构`。

- **没有任何一条资产属于 PID / Control 主题**：seed 报告明确只在 C++ / OpenCV / ROS2 范围内提取，未检索、也未登记 PID / Control 相关材料。
- 与本主题可能相邻的是 C++ 的通用资产（知识总目录、类专题、回调专题），但它们**不包含 PID 内容**，不能替代本主题的材料。

需要特别区分（防止把用户材料误当已登记资产）：

- 用户提到的**「笔记整理的项目」**现已可定位为上述外部工作区，但该工作区中**是否存在 PID / Control 笔记尚未确认**，也未登记为资产；Manager 不得假设。
- `projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md` §7 登记的用户侧材料是 `knowledge_note.md（迎角、攻角与俯仰角）` 与 `02(1).md`（笔记风格参考），**两者均为 AoA / 笔记风格相关，未涉及 PID**；不得把它们当作本主题的 PID 笔记。
- 用户另提到的**中科大电控教学视频**未登记为任何资产。

### Asset Source

- Current：[`../control/knowledge/KNOWLEDGE_ASSET_INDEX.md`](../control/knowledge/KNOWLEDGE_ASSET_INDEX.md)（Lifecycle `Current`；21 条；所有资产路径相对外部工作区 `C:\Users\SHIN\Desktop\知识重构`）
- 该索引只覆盖 seed 范围（C++ / OpenCV / ROS2）；PID / Control 属未登记范围

## Required Protocol / Entry Files

**本对话无法读取这些文件。** 下列路径仅供 provenance 与用户取用；**不要假设你能打开其中任何一个**，也不要凭文件名复述其内容。本轮必需的最小规则已在本节内联。

### 已内联的最小规则（直接按此执行）

- **Sufficiency 优先**：学习不默认追求"学完"。先用 Engineering Control Ladder 对齐当前真正需要的层级，达到即可收住：
  `L0 Reproduce / L1 Operate / L2 Tune / L3 Diagnose / L4 Modify / L5 Explain / L6 Reconstruct`
- **Explanation ≠ Note Output**：第一次讲解 ≠ 最终笔记。正式笔记需按知识依赖重新组织，不是聊天顺序的摘要。
- **不默认生成笔记**：只在知识主线闭合、重要误区稳定解决、或已有 Canonical 笔记很适合更新时，**简短提醒**用户是否值得保存；是否生成由用户决定。
- **讲解方式自适应**：小范围调整（术语 / 符号 / 参数）静默完成；讲法实质变化（如"怎么调用"→"为什么成立"）用 1–3 句说明后继续；继续深入会显著扩大范围时，先说明当前真正需要哪一层，再让用户决定。
- **不得制造虚假掌握**：不使用百分比；"有笔记 / 资产存在"不等于用户已掌握；不得在讲解后宣布用户已掌握。

### Provenance 指针（不可读取）

- 知识层主路由（Sufficiency、Explanation / Note 分离）：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md`
- 讲解规则：`playbooks/knowledge/explanation/EXPLANATION_CORE.md`、`explanation/EXPLANATION_PROFILES.md`
- 笔记规则（**仅在真正开始整理笔记时才需要**，且属用户决定之后）：`playbooks/knowledge/notes/NOTE_CORE.md`、`notes/NOTE_STYLE_STANDARD.md`、`notes/NOTE_PROFILES_AND_OPERATIONS.md`
- 可复制启动 / 续接指令：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/KNOWLEDGE_PROMPT_CARDS.md`
- 交接与 Carry Forward：`common/Handoff_Protocol.md`、`common/Carry_Forward.md`
- 上下文健康：`common/Context_Health.md`

如上述任一文件的原文确实影响本轮判断，**请用户粘贴对应段落**。不要因为“可能有用”要求用户上传整个协议。

## Task-specific Materials

分为两类，**两类都不要假设本对话能直接读取**：

### A. 必须由用户提供（本轮讨论主线）

- **用户的 PID 笔记** —— 本轮主线。必须由用户**粘贴内容**；**只给文件名或路径无用**。
- **中科大电控教学视频** —— 用户疑问的来源材料。请用户提供**链接、标题或摘录要点**；若本对话无法访问链接，请用户粘贴要点或截图说明。该材料**未登记于任何权威产物**。
- **用户的 PID 疑问清单** —— 见 `User Input Still Needed`。

### B. 仅作 provenance 的本地路径（**不可读取**）

- `projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md` §3（延迟 / 响应时间 / 带宽 / 饱和；姿态、速度方向、轨迹角、攻角）、§4（`Control 接口基础` 定位、分层认识）、§5（笔记组织方式、Do Not 边界）、§7（材料锚点）。
  - 若其中某段内容确实影响本轮讲解，**请用户粘贴该段**。
- §7 登记的 `大连理工大学凌BUG 2026 飞镖技术报告` —— 「状态估计、MPC + PID」参考锚点；**仅作定位参考，且按 §5 不深入该校源码**。
- 用户既有笔记风格参考：`02(1).md`（已登记的「图优先、依赖顺序、短标题、细节后置」结构）—— 该结构已内联于本包 `Relevant Decisions / Invariants`，无需读取原文件。

**访问能力说明**：以上路径全部位于本控制仓库或用户的外部工作区，**本对话一概无法访问**。真正需要阅读的内容必须由用户上传 / 粘贴；不得以"文件里应该有"为前提继续讨论。

## Current Unknowns / Gaps

- **本主题无权威来源**：用户的 PID 笔记、笔记整理项目的结构与位置、中科大视频材料，全部未提供、未核实、未登记。
- 用户 PID 疑问的**具体清单未知**（用户仅说明“产生了一些 PID 相关疑问”）。
- 本轮期望达到的 Sufficiency 等级未知（L1–L3 区间内的具体级别属用户决定）。
- 是否同时处理卡尔曼滤波未知。**Manager 建议单独立项**：PID 属 `Control` 层、卡尔曼滤波属 `Estimation` 层，混入同一对话会削弱 Checkpoint 已确立的分层认识；如按此建议，卡尔曼滤波另开一条线程。
- 本主题是否已有用户既有笔记、是否要更新已有笔记还是新建，未知。
- 项目侧长期 Unknown 一并保留：下一赛季正式规则；用户最终是否正式负责制导镖算法方向；队内遗产（发射架 / 镖体 / 电控板 / 传感器 / 场地 / 历史日志 / 学长经验）；算法侧最终负责边界（是否涉及部分 `Control`）；队内实际机械方案、执行机构、舵机动态能力与可量化控制能力；是否存在可用飞行数据记录 / 回放系统；Main Supervisor 与活跃角色 / 对话状态未登记。

## User Input Still Needed

Manager 不能替用户决定，以下保持留空待用户给出：

- **用户 PID 笔记的内容**：请**直接粘贴**（本对话无法读取本地文件）；可附文件名便于用户自己归档。笔记较长时可先粘贴与本轮疑问相关的部分。也可简述该笔记整理项目的组织结构，**作为背景说明，不需要提供可访问路径**。
- **本轮的具体疑问清单**：用户看视频后产生的 PID 疑问到底有哪些，优先解决哪一条。
- **中科大电控教学视频的材料**：链接、标题，或用户摘录的要点 / 截图说明（若本对话无法访问链接，请给要点）。
- **Sufficiency 目标**：本轮只要求「读懂接口与参数含义」（L1–L2），还是要到「能诊断参数导致的异常」（L3）；是否需要在讲解后形成可复习笔记。
- **笔记归属（仅表示最终落点）**：若之后决定形成 / 更新笔记，它最终归到用户既有笔记整理项目，还是飞镖笔记体系；文件名与位置。**这只是"最终想放哪里"，不代表本对话有写入权限**——落盘由用户与 Manager → Memory Curator 处理。
- **卡尔曼滤波**：是否接受 Manager 建议另开独立线程，或本次必须一并覆盖。
- **配图**：笔记中图片位置是否继续留空、由用户后续放入。
- **范围确认**：是否只讲通用 PID 原理与制导镖 `Control` 接口定位，不引入具体公开方案的 PID 实现细节。

## Suggested Opening Prompt

> 这是一个独立的 Guided Dart `P0.5` 知识对话，主题是「PID / Control 接口基础」。当前阶段为 `P0.5 — 内容方向探索`，不进入正式方案设计，不提前锁定下一赛季技术路线，也不深入三回路 / 伪攻角控制公式与高级飞控设计。我会提供自己的 PID 笔记和我看中科大电控教学视频后产生的疑问，请围绕我的笔记和疑问展开讨论，而不是按教材顺序通讲；先讲清楚，我提问确认理解后，再由我决定是否整理成正式笔记。请同时说明 PID 在制导镖链路中处于 `Control` 层、与 `Guidance` 分层的关系。

## Verification / Expected Return

**在对话结束或重要节点，生成一份 Return / Checkpoint Artifact 文本**（供用户复制带回给 Manager），内容包含下列各项。**不要写文件、不要更新任何 Index。**

- 用户能否用自己的话说明 PID 三项各自作用、为什么 `算法算得快 ≠ 飞镖反应得快`，以及 PID 在链路中位于哪一层。
- 用户本轮的具体 PID 疑问是否被逐条回答；哪些仍未解决。
- **是否形成笔记提案**（Note 草稿文本 / Patch 建议）；若有，说明建议的**最终落点**，并明确标注"尚未落盘，需由用户与 Manager 决定"。**不得声称已写入任何位置。**（若未形成，说明原因。）
- 本次新出现的 Unknown 与暴露出的前置基础断点。
- 是否出现需要回到 Manager 的状态变化（例如主题切换、建议 Checkpoint / State Update、建议登记新的 Knowledge Asset）；按 `common/Carry_Forward.md` 的形式给出，**由 Manager 转交 Memory Curator**。
- 明确声明：本对话不产生项目阶段、技术路线或掌握度结论；如需登记 Learning State Patch，必须由用户确认。

**生命周期提醒（给用户，不是给下游执行）**：目标对话真正建立后，请向 Manager 确认（例如"新对话已建立并开始使用本包"），以便 Memory Curator 把本包从 `outbox/`（`Pending Consumption`）归入 `archive/dispatches/`。**不得仅凭时间或文件名推断已消费。**

## Freshness / Confidence

- Latest source date: `control/PROJECT_CONTROL_INDEX.md` 与 `control/MEMORY_INDEX.md` 均为 2026-09-16；`control/knowledge/LEARNING_STATE.md` 与 `control/knowledge/KNOWLEDGE_ASSET_INDEX.md` 为 2026-09-16（`Current`）；`projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md` artifact 内未声明日期（文件系统时间戳 2026-09-13）。
- Possibly stale items: Control Index §2 记录 Guided Dart P0.5 对话活动状态为 Unknown；上游对话的实际进展可能晚于该索引，若与 Checkpoint 冲突以新权威 Artifact 为准。
- Missing authoritative source: 本主题（PID / Control）**无 Learning State 登记、无 Knowledge Asset 登记**——长期状态文件虽已存在，但两者都不覆盖本主题；本主题用户笔记与视频材料未提供；Main Supervisor 未登记。承载旧「电控学习入口」的对话已被用户归档且未定位——该对话从未登记为权威产物，其丢失不影响本包（本包不引用任何聊天记录）。
- Known pending action: 本包是 `outbox/` 中的 `Pending Consumption`；目标对话建立后需提供消费证据，供 Memory Curator 归入 `archive/dispatches/`。另：`LEARNING_STATE.md` 记录的是**全局**知识状态，其更新不会由本主题对话自动触发。

## Carry Forward

下游必须保留：

- Current Goal：围绕用户的既有 PID 笔记与疑问，建立制导镖 `Control` 接口层所需的通用理解；不进入正式方案设计，不提前锁定下一赛季技术路线。
- Verified Facts：P0 系统地图已完成；`Guidance / Control / Actuator` 分层；`Measurement ≠ State`；姿态 ≠ 速度方向；`算法算得快 ≠ 飞镖反应得快`；2026 规则仅历史基线；`Control` 属接口知识区、不要求飞控 / 机械专家深度。另：C++ / OpenCV / ROS2 已建立首版 `Current` Learning State（C++ 为限定语境的 `L4 Modify`），但 **`PID / Control` 本身仍为 `Not Registered`**；Knowledge Asset Index 的 21 条资产中**不含** PID / Control。
- Locked Decisions：当前 Stage 为 `P0.5 — 内容方向探索`；不进入 Project Inception；不提前锁定技术路线；不深入三回路 / 伪攻角控制公式、ISMCG 推导、完整飞行动力学推导、CFD、高级飞控设计；不深入单一学校源码。
- Active Constraints：笔记组织沿用已登记结构（图优先、依赖顺序、短标题、细节后置、图片留空）；讲解与笔记产出解耦；有笔记 ≠ 用户已掌握。
- **Execution Contract**：本对话为 `Plain Conversation`——**无仓库访问、无文件读写、无 Git、无持久化**；所有本地路径仅作 provenance；真正需要阅读的内容由用户上传 / 粘贴；不得维护 Learning State / Knowledge Asset Index / Control Index / Memory Index；**"笔记目标落点"只表示最终归属，不代表写权限**；对话结束或重要节点只产出 Return / Checkpoint Artifact，经 Manager → Memory Curator 进入持久状态。
- Open Questions：用户 PID 疑问清单；Sufficiency 目标等级；笔记归属与落点；卡尔曼滤波是否另开线程；中科大视频材料；项目侧长期 Unknown（下一赛季规则、队内遗产、人员分工、实际控制 / 机械能力）。
- Required Materials：**必须由用户提供**——PID 笔记正文（粘贴）、PID 疑问清单、中科大视频链接或要点。本包 `Task-specific Materials` 中的本地路径**仅为 provenance，不可读取**。
- First Next Step：由用户在开场提供 PID 笔记与疑问清单，随后按依赖顺序澄清 PID 三项作用及其与延迟 / 带宽 / 饱和的关系，并锚定 PID 在制导镖链路中的层级位置。
