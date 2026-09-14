# Bootstrap Packet

> Producer：Manager
>
> Consumer：新的 Guided Dart 知识对话（Knowledge Conversation）
>
> 原则：**Minimum Sufficient Handoff + Overview + Relevant Detail。**
>
> 本包只组装上下文与指针，不产生新的项目事实、学习状态或验证结论。

## Target

- Target Role / Conversation Type: 独立知识对话（Knowledge Conversation），消费 `playbooks/knowledge/` 知识层入口
- New / Continue Existing: New
- Suggested Name: `Guided Dart Knowledge — 坐标系与时间（P0.5）`

## Goal

继续 `P0.5` 通用基础探索中的下一个主题：**坐标系与时间**。

- 讲清楚：机体系、惯性系、轨迹系、LOS 系，以及“同一个向右”在不同坐标系中的含义；
- 保持当前节奏：先讲清楚 → 用户提问 → 确认理解后再整理正式笔记；
- 不进入正式方案设计，不提前锁定下一赛季技术路线。

## Why This Route

- 这是知识断点延续，不是项目方向决策，也不是仓库实现任务，因此不进入 Main Supervisor / Human，也不进入 Work / Executor。
- `control/PROJECT_CONTROL_INDEX.md` §8 明确：继续 Guided Dart 知识缺口 → Specialist + Knowledge Playbook，或在合适时使用独立知识对话。
- `GUIDED_DART_P0_5_CHECKPOINT.md` §8 已把 `坐标系与时间` 登记为下一主题建议，§9 “First Next Step” 指向同一主题。
- 该主题与 P0.5 目标（跨方案通用基础 + 可复习笔记）同阶段对齐，适合续接而非新建项目线。

## Current Project Context

只放会改变本任务判断的项目事实：

- 当前 Stage：`Other — P0.5` / 内容方向探索；P0 的领域定向与系统地图建立已基本完成。
- 当前不是 Project Inception，不做正式技术路线收敛。
- P0.5 当前目标：在正式接手项目、下一赛季规则与队内最终任务确定前，补齐跨方案通用的基础知识，并沉淀为可复习笔记。
- P0 已建立且与本主题直接相关的既有认知：`Measurement ≠ State`；姿态 ≠ Pose；姿态方向 ≠ 速度方向；Guidance / Control / Actuator 必须分层。
- 已形成的协作原则：制导镖是机电算法强耦合项目；`横向知识要齐，纵向深度可以不同`；算法成员核心纵深为 Vision → Estimation → Guidance。
- P0.5 已完成的前置通用内容：响应时间 / 延迟 / 带宽 / 饱和；姿态、速度方向、轨迹角、攻角（含对 `knowledge_note.md` 中 AoA / Pitch / 安装角表述的纠偏）。
- 已登记的飞镖笔记组织方式：不强制拆篇；先给核心图 / 关系；概念按依赖顺序出现；核心公式紧跟核心图；细节与纠错后置；标题短；图片位置留空由用户后续放入。
- 2026 规则只作为历史基线，不得外推为下一赛季规则。

### Sources

- `control/PROJECT_CONTROL_INDEX.md`（Last Refreshed: 2026-09-14）
- `GUIDED_DART_P0_5_CHECKPOINT.md`（Control Index 登记的 Stage Source 与 Latest Project State；artifact 内未声明日期，文件系统时间戳 2026-09-13）

## Relevant Decisions / Invariants

以下来自 Checkpoint 的已记录决定 / 边界，下游不得自行更改：

- 阶段命名采用 `P0.5 — 内容方向探索`；P0 视为已基本完成，不重做“制导镖是什么 / 系统由哪些模块组成”的基础定向。
- 不进入正式 Project Inception。
- 不提前确定下一赛季最终技术路线；不选定最终主仓库 / 主开源方案；不大规模深入某一个学校的源码。
- 不把 2026 规则直接当成下一赛季规则。
- 暂不深入：ISMCG 数学推导、三回路 / 伪攻角控制公式、完整飞行动力学推导、CFD 细节、高级飞控设计。
- 不把算法成员训练成完整飞控 / 机械专家；当前目标是理解接口与系统边界。
- 飞镖预热保持低强度、持续进行，与 ROS2 / 深度学习长期基础主线并行，不吞掉主线。

## Relevant Learning State

**Unknown / Not Registered。**

`control/PROJECT_CONTROL_INDEX.md` §3 明确记录 Guided Dart 跨方案基础方向的 `Learning State: Not Registered`。Checkpoint 中的“已学习 / 已明确”条目是**已记录的探索进度**，不是已登记的用户 Learning State，也不能作为掌握度结论使用。

### Learning State Source

- Unknown / Not Registered（无权威 Learning State Artifact 被登记）

## Relevant Knowledge Assets

**Unknown / Not Registered。**

`control/PROJECT_CONTROL_INDEX.md` §3 明确记录 `Knowledge Asset Index: Not Registered`；本包不推断任何笔记文件已成为已登记知识资产。

### Asset Source

- Unknown / Not Registered（无 Knowledge Asset Index 被登记）

## Required Protocol / Entry Files

只列本任务真正需要的入口，按需读取，不复制正文：

- `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Handoff_Protocol.md` — 最小充分交接与停止条件。
- `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Carry_Forward.md` — 本对话结束时必须带走什么。
- `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md` — 知识层入口与路由，由它决定是否需要更细的 explanation / notes 文件。
- `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Context_Health.md` — 仅在长对话后上下文可靠性下降时读取。

进入“正式笔记整理”阶段时再读：

- `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/notes/NOTE_CORE.md`
- `protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/notes/NOTE_STYLE_STANDARD.md`

不要因为“可能有用”把整个协议全部塞进来。

## Task-specific Materials

指针，不复制内容：

- `GUIDED_DART_P0_5_CHECKPOINT.md` §8（Next Step：坐标系与时间主题建议）与 §5（笔记组织方式、暂不深入项）。
- 用户侧飞镖笔记：`knowledge_note.md（迎角、攻角与俯仰角）` — AoA / Pitch / 安装角概念参考，其中部分表述已被纠偏。
- 用户侧笔记风格参考：`02(1).md`。
- 用户当前飞镖笔记（由用户在本对话中提供）。

访问能力说明：上述 `knowledge_note.md` / `02(1).md` / 用户笔记是用户侧材料，本包不假设下游对话能直接访问工作区文件；如需要，必须由用户显式提供或确认可访问。

## Current Unknowns / Gaps

- 下一赛季正式规则仍未知；所有规则结论只能作为历史基线。
- 用户最终是否正式负责制导镖算法方向未知。
- 队内飞镖遗产未知：发射架、镖体结构、电控板、传感器、测试场地、历史日志 / 数据、学长经验。
- 正式项目中算法侧最终负责边界未知（Vision / Estimation / Guidance / 是否涉及部分 Control）。
- 队内实际机械方案、执行机构、舵机动态能力与可量化控制能力未知。
- 是否存在可用的飞行数据记录 / 回放系统未知。
- Main Supervisor 与活跃角色 / 对话状态未登记。
- 本主题尚无已登记的学习状态或知识资产索引；本主题是否已有用户既有笔记未知。

## User Input Still Needed

Manager 不能替用户决定，以下保持留空待用户给出：

- 本主题希望“只讲清楚并问答”，还是本次就要形成正式笔记。
- 若形成笔记：文件名、落点与是否并入现有飞镖笔记。
- 用户是否已有该主题的既有笔记 / 教材 / 课程材料要沿用或对照。
- 本主题是否需要引用具体公开方案中的坐标系与时间同步实现，还是保持纯通用基础。
- 本主题配图由用户后续提供（笔记中图片位置保持留空）。

## Suggested Opening Prompt

> 继续 Guided Dart `P0.5` 通用基础探索，本次主题是“坐标系与时间”：机体系、惯性系、轨迹系、LOS 系，以及“同一个向右”在不同坐标系中的含义。请先按依赖顺序讲清楚核心关系与核心图，我提问确认理解后再整理成可复习笔记。不进入正式方案设计，不提前锁定下一赛季技术路线。

## Verification / Expected Return

目标对话结束后，应该回什么：

- 用户能否用自己的话复述“同一个方向 / 位移在不同坐标系中的含义”，以及各坐标系各自的用途。
- 是否产出了笔记、落在哪里（若未产出，明确说明原因）。
- 本次仍未解决的问题与新出现的 Unknown。
- 是否出现需要回到 Manager 的状态变化（例如主题切换、阶段需要 Checkpoint / State Update）；如有，按 `common/Carry_Forward.md` 形式返回。
- 明确声明：本对话不产生项目阶段、技术路线或掌握度结论。

## Freshness / Confidence

- Latest source date: `control/PROJECT_CONTROL_INDEX.md` 为 2026-09-14；`GUIDED_DART_P0_5_CHECKPOINT.md` artifact 内未声明日期（文件系统时间戳 2026-09-13）。
- Possibly stale items: Control Index §2 记录 Guided Dart P0.5 对话活动状态为 Unknown；上游对话的实际进展可能晚于该索引，若与 Checkpoint 冲突以新权威 Artifact 为准。
- Missing authoritative source: 无被登记的 Learning State Artifact；无 Knowledge Asset Index；Main Supervisor 未登记。

## Carry Forward

下游必须保留：

- Current Goal：在不进入正式方案设计、不提前锁定下一赛季技术路线的前提下，讲清并（经用户确认后）整理“坐标系与时间”通用基础。
- Verified Facts：P0 系统地图已完成；`Measurement ≠ State`；姿态 ≠ Pose；姿态方向 ≠ 速度方向；Guidance / Control / Actuator 分层；2026 规则仅历史基线。
- Locked Decisions：当前 Stage 为 `P0.5 — 内容方向探索`；不进入 Project Inception；不提前锁定技术路线；不深入高级飞控公式；笔记采用图优先、顺序明确、标题短的结构。
- Active Constraints：暂不深入 ISMCG 推导、三回路 / 伪攻角控制公式、完整飞行动力学推导、CFD、高级飞控设计；不把算法成员训练成飞控 / 机械专家。
- Open Questions：下一赛季规则；队内遗产；最终人员分工；实际控制 / 机械能力；本主题是否已有用户既有笔记。
- Required Materials：本包 `Task-specific Materials` 中列出的 Checkpoint 相关章节与用户侧笔记材料（需用户提供或确认可访问）。
- First Next Step：讲清机体系 / 惯性系 / 轨迹系 / LOS 系的定义与相互关系，并用“同一个向右”的例子建立直观对照。
