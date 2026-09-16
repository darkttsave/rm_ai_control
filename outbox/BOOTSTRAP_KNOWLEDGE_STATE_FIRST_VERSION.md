# Bootstrap / Hot Start Packet — First Minimal Knowledge State Landing

> Producer：Manager（`rm-ai-control_v1.0` Navigator）
>
> Consumer：**已存在的 `rm-ai-control` 初始化执行体**（与本仓库共享工作区）
>
> 原则：**Minimum Sufficient Handoff + Overview + Relevant Detail。**
>
> 交接类型：**Hot Start**。你参与过本仓库初始化，因此**不要重新初始化仓库、不要重新解释整个系统**；先按当前 [`../AGENTS.md`](../AGENTS.md) 恢复，然后只接收本轮 Delta。
>
> 本包是本轮唯一的授权来源。包外内容一律视为未确认。

## Target

- Target Role: `rm-ai-control` 初始化执行体（确定性落盘 + Git）
- New / Continue Existing: **Continue Existing（Hot Start）**
- 本任务性质: 确定性落盘（Deterministic Landing），不是设计任务

## Trigger

用户已确认建立**首版最小 Learning State**，状态应从 `Not Registered` 变为可定位的实际文件。

## Delta — 本轮唯一语义输入

### 1. 用户确认记录（authoritative user input）

- 日期：2026-09-16
- 用户原话选择：**「采用推荐（按候选报告落盘）」**
- 含义：以下内容已被用户确认为长期语义状态，**可以正式落盘**：
  - 登记主题：`C++`、`OpenCV`、`ROS2`
  - 三者的 Engineering Control 等级与能力描述，**保持候选报告中的原有作用域限定**（见 §3）
  - 三条证据边界（见 §4）
  - 其余主题保持 `Not Registered`：`Deep Learning`、`PnP`、`EKF`、`PID / Control`

### 2. 内容来源

- 候选报告：[`../archive/returns/KNOWLEDGE_STATE_SEED_CANDIDATE.md`](../archive/returns/KNOWLEDGE_STATE_SEED_CANDIDATE.md)
- 报告生产者：知识重构执行体；其工作区为 `C:\Users\SHIN\Desktop\知识重构`（**本仓库之外**）
- 报告内 `A. Learning State Candidate` 与 `B. Knowledge Asset Candidate` 是本轮落盘的内容主体

### 3. 不得改变的语义（落盘时必须原样保留）

| Topic | 必须保留的等级与作用域 |
|---|---|
| C++ | `L4 Modify`，**限定于「已完成的 OpenCV / ROS2 小型任务语境」**；不得升格为全局 C++ L4 |
| OpenCV | `L4 Modify`，**限定于已完成的经典视觉任务**，含部分 `L3 Diagnose` |
| ROS2 | `L4 Modify`，**限定于已完成的双节点 Humble 练习**，含部分 `L3 Diagnose` |

同时保留每个主题的 `Known Gaps`、`Uncertain / Unsupported Claims`，以及报告中所有「不能升级出的说法」。

### 4. 必须保留的三条证据边界

1. 「有速查入口」≠「断点已消失」（类 / 回调 / 执行器顺序仍是用户自述会遗忘处）；
2. 多数旧资料作者身份未逐篇确认 → 只作 `Source` 登记，不作为「用户能独立解释」的证据；
3. 作业 3-3 的示例是依笔记重建的教学骨架（非历史原源码）；ROS2 作业二重构示例未在当前环境重跑。

## Deliverables（本轮全部产物）

### 1. `control/knowledge/LEARNING_STATE.md`

- 依据：[`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/LEARNING_STATE_TEMPLATE.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/LEARNING_STATE_TEMPLATE.md) 的结构（`Overview` 表 + 每主题 `Relevant Detail` + `Patch Convention`）
- 文件开头必须声明：
  - 本文件状态来源 = 用户于 2026-09-16 确认的知识重构执行体候选报告；
  - 最终解释权属于用户；
  - 证据指针位于本仓库之外的工作区 `C:\Users\SHIN\Desktop\知识重构`（该工作区路径为外部来源，本仓库不复制其正文）。
- 每个主题必须包含：`Exposure`、`Known`、`Current Engineering Control`、`Gaps`、`Evidence / Experience`、`Source Pointers`、`Trigger to Revisit`。
- **来源未提供的字段**（例如 `Project Relevance`，除非报告中有明确依据）：写 `Unknown — not supplied by the seed`。**不得编造，也不得删除该字段**。
- `Current Engineering Control` 必须**同时写具体能力**，不能只写等级标签。
- 必须包含一节 **`Not Registered`**，显式保留：`Deep Learning`、`PnP`、`EKF`、`PID / Control`，并注明 PID / Control 另有独立知识线程、本文件不改变其状态。
- 不得出现百分比、掌握度评分或任何新的评级体系。

### 2. `control/knowledge/KNOWLEDGE_ASSET_INDEX.md`

- 依据：[`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/KNOWLEDGE_ASSET_INDEX_TEMPLATE.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/templates/KNOWLEDGE_ASSET_INDEX_TEMPLATE.md) 的结构（`Overview` 表 + 每资产 `Relevant Detail` + `Asset Update Convention`）
- 只登记候选报告 `B. Knowledge Asset Candidate` 中的 **21 条**资产（C++ 5 / OpenCV 11 / ROS2 5），**不做全库扫描、不新增资产**。
- 文件开头必须声明：**所有资产路径均相对于外部工作区 `C:\Users\SHIN\Desktop\知识重构`**，不是本仓库内路径。
- 每资产字段：`Path / Name`、`Type`、`Status`、`Coverage`、`Responsibility`、`Relations`、`Overlap`、`Source / Provenance`、`Maintenance Note`。
- **词表归一化（必须执行）**：
  - `Type` 只允许：`Theory / Concept`、`API / Code`、`System / Architecture`、`Engineering / Project`、`Source / Legacy`
  - `Status` 只允许：`Working`、`Canonical`、`Superseded`、`Source`（**每资产只能取一个值**）
  - 候选报告中的组合值按下述映射处理，**不得借此升级**：
    - `Source / Superseded`（C++ 基础目录中的待校对与旧稿）→ `Status: Working`，`Maintenance Note` 写明「目录中部分文件被 `00：知识总目录.md` 标为「待校对」或「旧稿」，旧稿不作 Canonical 使用」
    - `Canonical（任务内容）；总入口登记待维护`（ROS2 作业2）→ `Status: Canonical`，括号内容移入 `Maintenance Note`
    - 单独出现的 `Concept` → `Theory / Concept`
- **来源未提供的字段**（`Relations`、`Overlap` 等）：写 `Unknown — not supplied by the seed`，不得推测。
- 保持原报告的**分组**（C++ / OpenCV / ROS2）与「只读 `Source` 旧资料不与正式正文混同」的区分。

### 3. `archive/state-updates/STATE_UPDATE_KNOWLEDGE_STATE_INITIAL.md`

- 依据：[`../control/templates/STATE_UPDATE_TEMPLATE.md`](../control/templates/STATE_UPDATE_TEMPLATE.md) 的全部字段。
- 关键填写要求：
  - `Source` → Role / Conversation：Manager（知识状态首版落盘协调）；`Update Type`: Mixed
  - `Authoritative Artifact` → 指向上述两个新文件 + 候选报告
  - `Manager May Update` → 勾选 `Knowledge navigation summary`、`Latest artifact pointer`、`Last updated / freshness`
  - `Manager Must Not Infer` → 明确：不得由本 Update 推出新主题已学习、不得把资产存在当作掌握、不得改变 Guided Dart P0.5 阶段、不得改变 PID / Control 线程状态
  - `Capability Impact` → `None`（Learning State 与 Knowledge Asset Index 本身已是既有 Capability，本轮只是首次创建状态实例；不得据此新增 Capability）
- 该文件放在 `archive/state-updates/` 以沿用仓库既有约定（既有三份 STATE_UPDATE 均在此目录）。

### 4. `control/PROJECT_CONTROL_INDEX.md` —— 仅限以下机械编辑

**只做这三处，其余内容必须逐字节不变。**

(a) Metadata：

```text
- Last Refreshed: 2026-09-15
```
→
```text
- Last Refreshed: 2026-09-16
```

(b) §3 `Knowledge Navigation Overview`：把现有行的 `Relevant Assets / State` 单元格由

```text
Learning State: Not Registered; Knowledge Asset Index: Not Registered
```
改为
```text
Learning State: [`knowledge/LEARNING_STATE.md`](../control/knowledge/LEARNING_STATE.md) (only C++ / OpenCV / ROS2 registered; PnP, EKF, Deep Learning, PID / Control remain Not Registered); Knowledge Asset Index: [`knowledge/KNOWLEDGE_ASSET_INDEX.md`](../control/knowledge/KNOWLEDGE_ASSET_INDEX.md)
```

并在该表**新增一行**：

```text
| Cross-project knowledge state (C++ / OpenCV / ROS2) | First minimal long-term knowledge state seeded from the knowledge-reconstruction executor's report and confirmed by the user on 2026-09-16; asset identity boundaries preserved; no mastery claim beyond recorded evidence | Learning State: [`knowledge/LEARNING_STATE.md`](../control/knowledge/LEARNING_STATE.md); Knowledge Asset Index: [`knowledge/KNOWLEDGE_ASSET_INDEX.md`](../control/knowledge/KNOWLEDGE_ASSET_INDEX.md) | [`../archive/state-updates/STATE_UPDATE_KNOWLEDGE_STATE_INITIAL.md`](../archive/state-updates/STATE_UPDATE_KNOWLEDGE_STATE_INITIAL.md) | 2026-09-16 |
```

(c) §7 `Recent Significant Updates`：**追加**一行（不要改写既有行）：

```text
- 2026-09-16: Seeded the first minimal Learning State and Knowledge Asset Index for C++ / OpenCV / ROS2 from the knowledge-reconstruction executor's candidate report, after user confirmation; Deep Learning / PnP / EKF / PID / Control remain Not Registered. Ingested and archived [`../archive/state-updates/STATE_UPDATE_KNOWLEDGE_STATE_INITIAL.md`](../archive/state-updates/STATE_UPDATE_KNOWLEDGE_STATE_INITIAL.md).
```

### 5. `control/README.md` —— 追加一句

在 `UNIVERSAL_PROJECT_AI_BEHAVIOR.md` 段落之后追加：

```text
[`knowledge/`](../control/knowledge/) 保存长期知识状态：[`LEARNING_STATE.md`](../control/knowledge/LEARNING_STATE.md) 记录用户已确认的学习状态，[`KNOWLEDGE_ASSET_INDEX.md`](../control/knowledge/KNOWLEDGE_ASSET_INDEX.md) 记录知识资产的身份与职责；两者都是状态与指针，不替代其来源材料。
```

可选：如果 `control/knowledge/README.md` 能提供超出上述两个文件本身的导航价值，可建；否则不要建。

## Do Not / 明确禁止

不要：

- 重新初始化本仓库，或重写 `AGENTS.md` / `MANAGER_CHARTER.md` / `UNIVERSAL_PROJECT_AI_BEHAVIOR.md`；
- 修改 `protocol/current/` 下任何内容（Frozen 基线只读）；
- 修改 `control/SYSTEM_CAPABILITY_INDEX.md`（Capability Impact = `None`）；
- 修改 `projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`，或改动 Guided Dart P0.5 阶段；
- 改动 `control/PROJECT_CONTROL_INDEX.md` §2 中 PID 知识对话那一行（PID 线程语义不变）；
- 新增主题、升格等级、把 `Source` 资产升级为 `Canonical`、或合并同主题资产；
- 访问或写入 `C:\Users\SHIN\Desktop\知识重构`（不需要；只用报告里的指针文本）；
- 提交、删除或移动 `temporary/` 下的任何文件（那是用户临时区）；
- 生成正式笔记或 Note Output。

## Git 要求（遵守 [`../control/UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](../control/UNIVERSAL_PROJECT_AI_BEHAVIOR.md)）

1. 开始前执行 `git status --porcelain --untracked-files=all` 并记录。
   **当时预期**：工作树干净，只有一份位于 `temporary/` 的未跟踪 seed candidate（v1.1 已将其晋升到 `archive/returns/`）。
   - `temporary/` 是**用户临时区**：不得提交、不得删除、不得移动，也不得为"让状态干净"而处理它。
   - 如果看到**预期之外**的修改（例如 `projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md` 的删除）：**停下来报告，不要提交，也不要回滚**。
2. 只暂存本轮负责的 5 个文件（`control/knowledge/` 两个、`archive/state-updates/` 一个、`control/PROJECT_CONTROL_INDEX.md`、`control/README.md`）。
3. 提交前检查：`git diff --cached` 全文、相对链接可解析、无 Secret / Token / 运行缓存。
4. 建议 commit message（按实际 diff 决定）：`feat: seed initial knowledge state`
5. 完成后报告：**commit hash**、变更文件清单、Control Index 的**精确 diff**、**剩余 dirty state 及其归属**、以及任何偏离本 packet 的地方。

## Stop Conditions

出现以下情况停下来直接返回，不要自行决定：

- 预期之外的 Git 状态（见上）；
- 候选报告与上述字段要求无法对应（缺字段、结构不同）；
- 候选报告与 `control/PROJECT_CONTROL_INDEX.md` 现有条目冲突；
- 必须修改 Frozen Protocol 或必须新增 Capability 才能继续；
- 必须改变 `temporary/` 或外部工作区的结构。

路径、文件命名与格式的普通问题按仓库既有约定自行处理，并在报告中说明。

## Expected Return

- commit hash + 变更清单；
- `control/knowledge/LEARNING_STATE.md` 与 `KNOWLEDGE_ASSET_INDEX.md` 的落地确认（含 21 条资产的计数）；
- `Not Registered` 主题清单确认（`Deep Learning` / `PnP` / `EKF` / `PID / Control`）；
- Control Index 精确 diff；
- 剩余 dirty state 与归属；
- 与 packet 的任何偏离。

## Freshness / Confidence

- Issued: 2026-09-16（Manager，`rm-ai-control`）
- 依据：用户 2026-09-16 确认（"采用推荐"）+ 知识重构执行体候选报告
- 本包不重新定义任何协议机制；所有模板与词表均引自 Frozen v2.3 现有产物。
