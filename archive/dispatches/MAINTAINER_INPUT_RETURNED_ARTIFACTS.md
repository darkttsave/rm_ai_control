```yaml
Artifact Type: Maintainer Input — Problem Report + Recommendation
Scope: Project-level repository structure and Artifact lifecycle
Producer: Manager (rm-ai-control_v1.0 Navigator)
Created: 2026-09-16
Lifecycle: Archived
Semantic Authority: Role Report
Authoritative Source: archive/dispatches/MAINTAINER_INPUT_RETURNED_ARTIFACTS.md（本文件即原始证据本体）
Supersedes: None
Next Consumer: None
```

> **Archive Record**（由 Memory Curator 添加的生命周期 metadata，非正文语义）：本 Artifact 已由 `outbox/` Pending Consumption 归档到 `archive/dispatches/`，Lifecycle 为 `Consumed → Archived`。消费证据：`rm-ai-control_v1.1` 已按其问题与建议实现（git commit `a6c032c969e81ff617e4e121cb8d3087596f1d8e`，`feat: establish memory curation in rm-ai-control v1.1`），并由 Human / Maintainer 确认。归档后的正文内容未改动。

# Maintainer Input — 下游返还产物的存放与生命周期

> From：Manager（`rm-ai-control_v1.0` Navigator）
>
> To：`rm-ai-control Maintainer` / Human（系统设计者）
>
> Date：2026-09-16
>
> Type：**问题报告 + 建议**（Problem Report + Recommendation），项目层方法与仓库结构
>
> Scope：**不涉及 Core Protocol**。本问题属项目层仓库管理，**不需要** Protocol Release。

## 0. 摘要

仓库目前有清晰的**出站**通道（`outbox/`）和**已 ingest 归档**通道（`archive/state-updates/`），但**没有"入站待处理"的实体位置**。结果是：真实发生的入站产物（下游返还的候选报告、Checkpoint、项目记忆报告）只能落在**未被 Git 跟踪**的 `temporary/`，并已经导致**权威文件的来源指针指向未跟踪路径**。

## 1. 既有机制核查（先确认没有现成的）

| 位置 | 现行语义 | 实际内容 |
|---|---|---|
| `outbox/` | Manager 生成、等待下游消费的输出 | 5 个文件（4 份交接包 + README） |
| `inbox/` | "尚待 ingest 的正式状态更新或 release packet" | **仅 README.md**，自仓库初始化以来从未被使用 |
| `archive/state-updates/` | 已 ingest 的 STATE_UPDATE | 4 份 |
| 仓库根目录 | （无明文定义） | 当时包含 Guided Dart P0.5 checkpoint；v1.1 后该文件位于 `projects/guided-dart/` |
| `temporary/` | **仅存在于对话约定** | 未跟踪；无 README；无根 `.gitignore`；未出现在 `README.md` 的 Repository Map |

**结论**：入站通道名义上存在（`inbox/`），但从未启用，且其定义范围**窄于**实际入站物品种类。

## 2. 问题

**P1 — 入站无实体位置，返还物只能落在未跟踪区。**
本轮角色 A 的种子报告 `KNOWLEDGE_STATE_SEED_CANDIDATE.md`（21 条资产、三主题状态候选的实际来源）就落在 `temporary/`，`git status` 显示为 `?? temporary/`。

**P2 — 由此产生来源链腐坏。**
`control/knowledge/LEARNING_STATE.md` 与 `archive/state-updates/STATE_UPDATE_KNOWLEDGE_STATE_INITIAL.md` 当时均指向一份位于 `temporary/` 的未跟踪 seed candidate。**权威状态文件的来源指针当时指向一个不受版本控制、且已被计划重构的目录。**

**P3 — 根目录承载项目产物，一次误移动即造成大范围链接断裂。**
Guided Dart P0.5 checkpoint 当时位于仓库根目录，被误移入 `temporary/` 后，实测引用面为：

```text
archive/state-updates/STATE_UPDATE_GUIDED_DART_P0_5_INITIAL.md   2 行
control/PROJECT_CONTROL_INDEX.md                                  6 行
control/SYSTEM_CAPABILITY_INDEX.md                                1 行
outbox/BOOTSTRAP_..._COORDINATE_FRAMES.md                         4 行
outbox/BOOTSTRAP_..._PID_CONTROL_INTERFACE.md                     7 行
outbox/BOOTSTRAP_KNOWLEDGE_STATE_FIRST_VERSION.md                 2 行
runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md                       1 行
──────────────────────────────────────────────────────────────────────
合计：7 个文件 / 23 行 / 31 处字符串引用
```

> **更正**：我在 2026-09-16 的口头汇报中曾说"15 处链接"，该数字**不准确**。原因是我当时只检索了 `control`、`README.md`、`AGENTS.md`、`outbox` 四个路径，未覆盖 `archive/` 与 `runtime/`。以上为完整实测值。本轮已用 blob 哈希逐字节校验还原（`899ef4f`）。

**P4 — `temporary/` 的语义只存在于对话中。**
它未被跟踪、无 README、未进入 Repository Map，其用途（"用户临时区／下游返还物暂存"）目前仅由对话约定支撑——这正是本仓库设计要消除的"状态活在对白里"。

**P5 — 产物类型已经分叉，层级没有分叉。**
已经可以清楚区分三类产物，但只有两个位置：

```text
Manager → 下游             outbox/
下游 → Manager（待处理）    （无）
已 ingest 的正式输入        archive/state-updates/   ← 仅覆盖 STATE_UPDATE 一种
```

## 3. 影响

- **可追溯性下降**：语义状态的来源链依赖非版本控制目录（P2）。
- **可恢复性下降**：新的 Manager Session 无法从仓库判断"有哪些返还物存在、哪些已被 ingest"（P1 / P5）——违反本仓库 "新 Manager 应能恢复导航能力" 的目标。
- **误操作被放大**：根目录与临时区边界不清，一次误移动即造成 31 处引用失效（P3）。
- **约定滞留于对话**：`temporary/` 语义无仓库内权威说明（P4）。

## 4. 设计约束（沿用仓库既有原则，请在裁决时保留）

1. **不改 `protocol/current/` Frozen 基线**；本问题属项目层，**不需要** Protocol Release。
2. **不新增平行报告体系**：优先复用已存在的 `inbox/`，而不是再开第四个目录。
3. **不制造额外维护工作**：避免"每个返还物都要登记"的重流程。
4. 保持 `Authoritative Artifact > Manager Control Index > Conversation Summary` 不变。

## 5. 建议方案

### 方案 1 — 最小改动

- 把 `inbox/` 明确为"**下游 → Manager 的入站待 ingest 区**"，返还物一律先落 `inbox/`；
- ingest 后移入 `archive/returns/`（沿用 `archive/state-updates/` 的既有先例）；
- `temporary/` 降级为**纯用户沙箱**，并写入根 `.gitignore`（或直接废弃）；
- 根目录不动。
- **成本**：1 处 README 语义更新 + 1 条 `.gitignore` + 1 个 archive 子目录；**不动现有链接**。
- **遗留**：P3（根目录承载项目产物）不解决。

### 方案 2 — 推荐

在方案 1 基础上，把**项目权威产物移出根目录**：

```text
projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md      ← 从根目录迁入
```

并一次性修正上表 7 文件 / 23 行 / 31 处引用，同步更新 `README.md` 的 Repository Map。

- **成本**：一次性迁移 + 索引更新（Manager 可执行，属机械编辑）。
- **收益**：根目录只保留仓库级文件；后续项目产物增长不再污染根目录，P3 从根上消除。

### 方案 3 — 维持现状（不推荐）

只补规则文本（"返还物放 `temporary/`，ingest 后复制进 `archive/`"），并把 `temporary/` 纳入 Git 跟踪。

- **问题**：把"临时"变成"跟踪"在语义上自相矛盾；P4 只能靠文档压制，`temporary/` 与 `inbox/` 的职责重叠也没解决。

### 建议的裁决顺序

先定 **问题 2（`temporary/` 的归属）**——它决定 P2 是否止血；再定 **问题 1 / 3**（入站区与 ingest 生命周期）；**问题 4**（`projects/` 层级）可作为独立后续单独裁决。

## 6. 需要 Designer / Human 裁决的具体问题

1. `inbox/` 是否升级为**通用入站区**（涵盖 State Update、返还报告、Checkpoint、项目记忆报告），并明确"待 ingest → 已 ingest"生命周期？
2. `temporary/` 最终归属三选一：**纳入跟踪** / **写入 `.gitignore` 作为临时沙箱** / **废弃**。
   **关键**：只要它仍承载来源链，它就不能是"未跟踪"的。
3. ingest 之后是**移动**（archive 成为唯一副本）还是**保留副本**？
4. 是否引入 `projects/<name>/` 层级，并把根目录的项目权威产物迁入？
5. 命名与细分：`archive/returns/` 是否足够，还是需要按 `checkpoints/`、`reports/` 细分？

**附加建议**：无论上述如何裁决，`README.md` 的 Repository Map 应登记 `temporary/`（若保留）。未登记的目录会持续制造"这是不是权威位置"的歧义。

## 7. Manager 在裁决前的临时做法

- `temporary/` 一律视为**用户临时区**：Manager 不提交、不删除、不移动其中任何文件。
- Manager 自己的输出继续落 `outbox/`（不自行新建入站目录）。
- 新的交接包**不得**把来源链接指向 `temporary/`；本轮已出现的 2 处（`LEARNING_STATE.md`、`STATE_UPDATE_KNOWLEDGE_STATE_INITIAL.md`）**待裁决后统一修正**，Manager 不提前动。
  - 风险有界：这两处指向的是 seed 报告本身；真正的持久来源是外部工作区 `C:\Users\SHIN\Desktop\知识重构` 的证据指针，已在两份状态文件中如实登记。

## 8. Capability Impact

`None`。

理由：系统**已经会**处理返还物——`Authoritative state ingest` 与 `Minimum bootstrap assembly` 两项 Active 能力已覆盖流程；缺失的是**存放位置与生命周期约定**，不是能力。因此本报告**不建议**登记为 Capability Gap。

若采纳方案 1 或 2，`control/SYSTEM_CAPABILITY_INDEX.md` 中相关能力的 `Entry / Source` 指针可能需要复核（由 Manager 在裁决后执行），但这**不构成新增或改变 Capability**。

## 9. 元说明

- 本报告是 **Manager 输出**，放在 `outbox/`，等待 Maintainer / Human 消费。
- 它**不是**新的报告体系。若 Designer 认为此类"Manager → Maintainer 输入"需要正式模板，请在裁决后由 Maintainer 建立；Manager 不自行发明模板。
- 本报告不改变任何项目或知识语义状态，不改变 Guided Dart P0.5，不改变 PID / Control 线程状态，不修改 Core Protocol。
- 本报告中的全部数字均为**实测值**（`git ls-files`、`git grep -c`、`git status`），可复核。
