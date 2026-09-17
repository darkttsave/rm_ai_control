# Maintainer Input — Bootstrap 缺少 Target Surface / Execution Contract

```yaml
Artifact Type: Maintainer Input (Rule Gap Report + Recommendation)
Scope: System / Function (Manager Bootstrap)
Producer: Manager (rm-ai-control_v1.1 Navigator)
Created: 2026-09-16
Lifecycle: Archived
Semantic Authority: Role Report (Manager observation, grounded in measured repository evidence; recommendation consumed by rm-ai-control Maintainer)
Authoritative Source:
  - control/templates/BOOTSTRAP_PACKET_TEMPLATE.md
  - .agents/skills/rm-project-manager/SKILL.md
  - control/ARTIFACT_LIFECYCLE.md
  - outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md
Supersedes: None
Next Consumer: None
```

> From：Manager（`rm-ai-control_v1.1` Navigator）
>
> To：`rm-ai-control Maintainer` / Human
>
> Type：**Manager Bootstrap 通用规则缺口** + 建议（等待 Maintainer 纳入当前活跃规则）
>
> Scope：项目层模板与方法。**不需要** Protocol Release。

## 0. 摘要

Manager 的 `bootstrap` 流程与 `BOOTSTRAP_PACKET_TEMPLATE.md` **没有 "目标环境能力" 这一维度**。因此 packet 会默认下游与 Manager 具备相同环境能力，把**路径**当成**可读取的内容**、把**落点**当成**可写入的目标**。本缺口由一次真实的 Plain Conversation packet 暴露。

## 1. Observed Gap

> Bootstrap 产物没有 `Target Surface` 声明，也没有 `Execution Contract`；模板与流程都隐含"下游能读仓库、能写文件"。

具体表现：

- 模板的 `## Target` 只有 `Target Role / Conversation Type`、`New / Continue Existing`、`Suggested Name` —— **不区分下游是仓库内角色还是仓库外普通对话**。
- 模板的 `## Required Protocol / Entry Files` 无任何读取能力限定；实际使用中它被写成"按需读取"。
- 模板与 SKILL 都没有要求声明：可读范围、可写范围、需要用户投喂什么、唯一允许的持久化路径。

## 2. Evidence / Source（实测）

| 证据 | 内容 |
|---|---|
| `control/templates/BOOTSTRAP_PACKET_TEMPLATE.md`（v1.1，95 行） | 字段清单中**不存在** Target Surface / Execution Contract / 权限声明；`## Required Protocol / Entry Files` 一节无读取限制说明 |
| `.agents/skills/rm-project-manager/SKILL.md` §4 `bootstrap`（8 步） | **没有**"先判定目标环境能力"这一步；step 6 仅规定"生成 BOOTSTRAP_PACKET 并放入 `outbox/`" |
| `outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md`（实例，2026-09-16 由用户发现） | 面向**普通新对话**，却列出 6 项协议入口要求"**按需读取**"；把 `projects/guided-dart/…` 的章节当作下游可查阅的材料；`User Input Still Needed` 中"笔记归属 / 落点"未声明"**落点 ≠ 写权限**" |
| `control/ARTIFACT_LIFECYCLE.md` | 已为**仓库内**角色的 Lifecycle、Stable Reference Rule 与写入边界做了完整定义，但入口默认 Artifact 在仓库内流转；**未覆盖仓库外 Plain Conversation 的执行契约** |
| `control/SYSTEM_CAPABILITY_INDEX.md` §Capability Gap Observations | 当前记录为"没有已登记的 Capability Gap" |

**缺口性质**：不是缺一个新 Capability，而是**既有 Capability（`Minimum bootstrap assembly`）的定义与模板字段缺口**。

## 3. Operational Impact

- **事实污染风险**：下游可能以为能读仓库，进而"假装读过"或以路径名推测内容——与 `Authoritative Artifact > Index > Conversation Summary` 及"不从摘要发明事实"直接冲突。
- **权限越界风险**：把"落点"误读为写权限，下游可能声称已写入 / 已更新 Learning State 或笔记；而 Learning State 的最终解释权属于用户，Index 与归档由 Memory Curator 维护。
- **每包重复劳动**：用户或 Manager 只能逐包手工补写权限说明；漏写即回归到错误假设（本实例正是如此）。
- **难以发现**：packet 本身不会报错，错误只在下游对话的行为里显现，通常在很晚才暴露。
- **破坏自足性**：packet 看起来"信息完整"，实际在 Plain Conversation 中**不可执行**。

## 4. Existing Capability Checked

- `Minimum bootstrap assembly`（Universal Capability，`Active`）——检查了模板与 SKILL §4：**未覆盖目标环境能力声明**。← 缺口的归属处
- `Persistent memory and artifact curation`（Universal Capability，`Experimental`）——定义了 Curator 侧 `Receive → Classify → Persist → Index → Archive`，但只覆盖**仓库内角色**，未定义仓库外 Plain Conversation 的 Return 通道。
- `ARTIFACT_LIFECYCLE.md`——定义了五个 Lifecycle 与 Stable Reference Rule；其 `Inbound and Outbound Flow` 假设 Artifact 由角色产生并进入 `inbox/` / `outbox/`，**未描述"对话只能产出文本、由用户搬运"的情形**。
- 结论：应通过**细化既有 Capability 的模板与流程**解决，**不建议**新增 Capability。

## 5. Recommendation（待 Maintainer 裁决）

1. **模板新增 `Target Surface` 字段**，至少枚举：
   `Plain Conversation`（无仓库访问）/ `Repo-capable Role`（可读不可写）/ `Executor with repo write`。
2. **模板新增 `Execution Contract` 一节**，固定四项：
   - 可读范围（哪些能读，其余仅 provenance）；
   - 可写范围（通常：无）；
   - 需要用户投喂的内容与形式（上传 / 粘贴）；
   - **唯一允许的持久化路径**（下游只产出 Return / Checkpoint Artifact → 用户 → Manager → Memory Curator）。
3. **SKILL §4 `bootstrap` 增加一步**：组装上下文**之前**先判定目标环境能力，并据此决定"内联规则"还是"引用路径"。目标为 `Plain Conversation` 时，**必须内联必需规则，禁止只给路径**。
4. **硬规则**：任何 packet 不得假设下游能读取本地路径；**路径只能作为 provenance**。真正需要阅读的内容必须内联，或明确要求用户上传 / 粘贴。
5. **硬规则**：**"目标落点 / 建议路径"永远不隐含写权限**；packet 必须写明"由谁落盘"。
6. **Plain Conversation 的 Return 通道写进模板**：只产出 Return / Checkpoint Artifact 文本，不写文件、不更新任何 Index（Learning State / Knowledge Asset Index / Control Index / Memory Index / Git）。
7. **可选：自足判据**——若移除 packet 中的所有路径后，下游无法独立完成本轮目标，则该 packet 不合格。

## 6. Decisions Needed

1. 是否在 `BOOTSTRAP_PACKET_TEMPLATE.md` 采纳 `Target Surface` + `Execution Contract`（建议 1–2）？
2. 是否在 SKILL §4 增加"先判定目标环境能力"步骤（建议 3）？
3. 上述两条硬规则（建议 4–5）放在模板、`ARTIFACT_LIFECYCLE.md`，还是两处都写？
4. Plain Conversation 的 Return 通道放在模板，还是进入 `ARTIFACT_LIFECYCLE.md` 的 Flow 一节（建议 6）？
5. 是否同时把本缺口登记到 `control/SYSTEM_CAPABILITY_INDEX.md` 的 `Capability Gap Observations`？—— 该文件属 Capability 定义范围，**Manager 不自行改写**，请 Maintainer 裁决并交 Repo Operator 落盘。

## 7. Manager 在裁决前的临时做法

- 新的 Bootstrap 一律**显式声明 Target Surface 并内联必需规则**（已在本实例执行，见 `outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md` 的 `Execution Contract`）。
- 不修改模板与 SKILL（属 Maintainer / Repo Operator 范围）。
- 不改写 `SYSTEM_CAPABILITY_INDEX.md`。

## 8. Capability Impact

`None`。

这一缺口通过**细化既有 Capability 的模板与流程**解决，不新增、不改变、不弃用任何 Capability。若 Maintainer 采纳，`Minimum bootstrap assembly` 的 `Entry / Source`（模板 + SKILL）内容会更新，但其定义与 `Active` 状态不变；该落盘由 Repo Operator 确定性执行。

## 9. 元说明

- 本报告是 Manager 提交给 Maintainer 的输入，Lifecycle `Pending`，消费后应由 Memory Curator 归入 `archive/dispatches/`。
- 本报告不改变任何项目语义状态：不改变 Guided Dart P0.5，不改变 Learning State / Knowledge Asset Index，不改变 PID / Control 的 `Not Registered`。
- 不需要 Protocol Release：属 `rm-ai-control` 项目层模板与方法。
- 本报告中的模板与 SKILL 事实均于 2026-09-16 实际读取核对（模板 95 行、SKILL §4 共 8 步）。

## 10. Consumption Record

- Consumed: 2026-09-17
- Consumer: rm-ai-control Maintainer
- Decision: 核心建议已采纳；交由 Repo Operator 确定性落盘。
- Lifecycle action: 从 `outbox/` 移入 `archive/dispatches/`；当前 Lifecycle 为 `Archived`。
