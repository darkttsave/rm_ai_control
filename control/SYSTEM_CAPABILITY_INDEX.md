# System Capability Index — rm-ai-control_v1.2

> 功能导航表：回答“系统已经会什么、什么时候用、入口在哪里、当前是否可用”。
>
> Capability 是可执行的功能，不是文件清单。能力状态只使用 `Active`、`Planned`、`Experimental`、`Deprecated`。

## Authority and Maintenance

- 本索引是能力导航，不替代其 `Entry / Source` 指向的规则、状态或验证证据。
- Manager 负责 Capability Navigation 和 Gap Observation；Capability 定义变化由 rm-ai-control Maintainer 裁决、Repo Operator 确定性落盘。
- Manager 可以记录 Capability Gap；没有 Maintainer / Human 的明确授权与实现证据，不得自行把 Gap 登记成新 Capability。
- Core Protocol 的语义只能由正式 Protocol Release 改变。

## Capability Registry

| Capability | Category | Purpose | When to Use | Entry / Source | Owner | Status |
|---|---|---|---|---|---|---|
| RM staged operating model | Core Protocol | 以 P0 / P1 / P2 和 Supervisor / Specialist / Work 边界组织 RM 项目工作 | 进入项目、分阶段推进或判断角色职责时 | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/START_HERE.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/START_HERE.md) | rm-ai-control Maintainer | Active |
| Context health and minimum-sufficient handoff | Core Protocol | 在上下文退化、换角色或换对话时恢复关键锚点并传递最小充分信息 | Re-anchor、Checkpoint、Handoff、Carry Forward 时 | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Context_Health.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Context_Health.md), [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Handoff_Protocol.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Handoff_Protocol.md), [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Carry_Forward.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/common/Carry_Forward.md) | rm-ai-control Maintainer | Active |
| Verification levels and Human gates | Core Protocol | 区分验证强度并保护必须由人决定的边界 | 报告验证结果、进入高风险步骤或遇到用户所有权决策时 | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/shared/Verification_Levels.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/shared/Verification_Levels.md), [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/shared/Human_AI_Gates.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/shared/Human_AI_Gates.md) | rm-ai-control Maintainer / Human | Active |
| Knowledge learning and note lifecycle | Core Protocol | 支持知识学习、Learning State、知识资产导航和笔记生命周期 | 真实项目出现知识断点或需要形成、更新、合并笔记时 | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md) | rm-ai-control Maintainer / User | Active |
| Project AI self-maintenance | Universal Capability | 让具备项目职责的 AI 维护自己的 Goal、Verified Facts、Decisions、Unknowns、Current Work、Next Step | 关键事件、上下文转黄/红、交接或阶段报告时 | [`UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](UNIVERSAL_PROJECT_AI_BEHAVIOR.md) | Each project-role AI | Active |
| Persistent Authority / Long-lived Role Continuity | Universal Capability | 让长期正式角色通过 Canonical Role Anchor、可读取的 Runtime Delivery Copy、Recovery Gate 与 Promotion Gate 恢复稳定身份和权威边界 | 首次启动、上下文恢复、长时间中断、权限敏感操作、正式 Artifact 晋升或 Anchor 版本核对时 | [`UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](UNIVERSAL_PROJECT_AI_BEHAVIOR.md), [`templates/ROLE_ANCHOR_TEMPLATE.md`](templates/ROLE_ANCHOR_TEMPLATE.md), [`role-anchors/AUTO_AIM_CODE_FRAMEWORK_ANALYST_ROLE_ANCHOR.md`](role-anchors/AUTO_AIM_CODE_FRAMEWORK_ANALYST_ROLE_ANCHOR.md), [`templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md`](templates/PROJECT_AUTHORITY_RECOVERY_INSTRUCTIONS.md) | rm-ai-control Maintainer / Manager / each anchored role | Experimental |
| Repository hygiene | Universal Capability | 保护既有用户修改、Secret 和可恢复 Git 历史 | 在任何有仓库写入的任务开始、提交前与结束时 | [`UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](UNIVERSAL_PROJECT_AI_BEHAVIOR.md) | Each writing AI | Active |
| Project status navigation | Universal Capability | 从 Control Index 与权威产物恢复项目当前地图，区分事实与 Unknown | 用户询问当前状态、阻塞、活跃入口或 freshness 时 | [`../.agents/skills/rm-project-manager/SKILL.md`](../.agents/skills/rm-project-manager/SKILL.md), [`PROJECT_CONTROL_INDEX.md`](PROJECT_CONTROL_INDEX.md) | Manager | Active |
| Role and conversation routing | Universal Capability | 将任务导航到已有 Main Supervisor、Specialist、Knowledge Conversation 或 Work / Executor | 用户询问下一步应进入哪类工作入口时 | [`../MANAGER_CHARTER.md`](../MANAGER_CHARTER.md), [`../.agents/skills/rm-project-manager/SKILL.md`](../.agents/skills/rm-project-manager/SKILL.md) | Manager | Active |
| Authoritative state ingest | Universal Capability | 审查并持久化正式状态输入，同时保留来源并阻止未经授权的语义升级 | 收到 STATE_UPDATE、Checkpoint、Return、Project State 或正式报告时 | [`ARTIFACT_LIFECYCLE.md`](ARTIFACT_LIFECYCLE.md), [`templates/STATE_UPDATE_TEMPLATE.md`](templates/STATE_UPDATE_TEMPLATE.md) | Manager interprets / Memory Curator persists | Active |
| Minimum bootstrap assembly | Universal Capability | 根据 Target Execution Surface 和 Execution Contract，以 Overview + Relevant Detail 组装可执行、最小充分的上下文 | 新建/续接 Plain Conversation、Specialist、Knowledge Conversation 或 Work 时 | [`templates/BOOTSTRAP_PACKET_TEMPLATE.md`](templates/BOOTSTRAP_PACKET_TEMPLATE.md), [`../.agents/skills/rm-project-manager/SKILL.md`](../.agents/skills/rm-project-manager/SKILL.md) | Manager | Active |
| Protocol release intake | Universal Capability | 登记 Protocol Release、迁移要求和不变项，不把协议变化误写成项目状态 | 收到正式 PROTOCOL_RELEASE_PACKET 时 | [`templates/PROTOCOL_RELEASE_PACKET_TEMPLATE.md`](templates/PROTOCOL_RELEASE_PACKET_TEMPLATE.md), [`../.agents/skills/rm-project-manager/SKILL.md`](../.agents/skills/rm-project-manager/SKILL.md) | Manager / rm-ai-control Maintainer | Active |
| Capability navigation and gap observation | Universal Capability | 查询已有能力、定位入口，并把有证据的 Gap 交给 Maintainer 裁决 | 用户问“系统会什么/怎么用”，或观察到现有能力无法覆盖真实需求时 | 本文件、[`../MANAGER_CHARTER.md`](../MANAGER_CHARTER.md) | Manager | Active |
| Capability impact reporting | Universal Capability | 在长期功能发生变化时用统一小字段通知 Manager | Checkpoint、Task Report、Specialist Return、Stage Report 或 STATE_UPDATE 涉及能力变化时 | [`templates/CAPABILITY_IMPACT_TEMPLATE.md`](templates/CAPABILITY_IMPACT_TEMPLATE.md) | Reporting role / Manager | Active |
| Persistent memory and artifact curation | Universal Capability | 按 Artifact Lifecycle 接收、分类、持久化、索引和归档状态，同时表达 freshness 与 Pending Update | Returned Artifact、Confirmed State Delta、Consumed Artifact Event 或长期状态导航需要持久化时 | [`ARTIFACT_LIFECYCLE.md`](ARTIFACT_LIFECYCLE.md), [`templates/CURATOR_UPDATE_PACKET_TEMPLATE.md`](templates/CURATOR_UPDATE_PACKET_TEMPLATE.md), [`templates/CURATOR_RECEIPT_TEMPLATE.md`](templates/CURATOR_RECEIPT_TEMPLATE.md), [`MEMORY_INDEX.md`](MEMORY_INDEX.md), [`../MEMORY_CURATOR_CHARTER.md`](../MEMORY_CURATOR_CHARTER.md) | Memory Curator / Repo Operator | Experimental |
| DSH + DeepSeek Manager execution | Specialized Capability | 用固定版本 DSH 和配置化 Provider / Model 执行 Manager 五项核心意图 | 需要通过实际 DeepSeek Manager 操作控制仓库时 | [`../runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md`](../runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md) | Manager Runtime operator | Experimental |
| File-based Manager fallback | Specialized Capability | 在 DSH / DeepSeek 不可用时用同一套仓库状态恢复 Manager | Runtime、网络、额度或 Provider 不可用时 | [`../runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md#fallback`](../runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md#fallback) | Manager operator | Active |
| Guided Dart P0.5 state recovery | Project-specific Capability | 从当前权威 Checkpoint 恢复制导镖 P0.5 状态并导航下一工作入口 | 查询或续接 Guided Dart 当前工作时 | [`PROJECT_CONTROL_INDEX.md`](PROJECT_CONTROL_INDEX.md), [`../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`](../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md) | Manager / Guided Dart project roles | Active |

## Planned Capabilities

当前没有由权威产物登记为 `Planned` 的 Capability。

## Capability Gap Observations

Manager 仅记录有来源的缺口，不把缺口自动升级为能力。记录时使用：

- Observed Gap：
- Evidence / Source：
- Operational Impact：
- Existing Capability Checked：
- Decision Needed From：`rm-ai-control Maintainer / Human`

当前没有已登记的 Capability Gap。
