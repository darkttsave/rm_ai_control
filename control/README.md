# Control

[`PROJECT_CONTROL_INDEX.md`](PROJECT_CONTROL_INDEX.md) 是 Manager 的当前工作导航地图，不是业务事实的最高权威。重要语义条目必须指向来源并记录更新时间；没有权威来源时保持 Unknown 或不登记。

[`SYSTEM_CAPABILITY_INDEX.md`](SYSTEM_CAPABILITY_INDEX.md) 是功能导航，回答系统会什么、何时使用和入口在哪里；Capability 不是文件，索引也不替代实现与验证来源。

[`AUTHORITY_INDEX.md`](AUTHORITY_INDEX.md) 是 Authority discovery / resolution 薄索引，把 Authority ID 或语义名称映射到 Canonical Source、Section / Locator 与 Runtime Delivery Artifact；它不是 Authority 正文或数据库。

[`TEMPLATE_RESOLUTION_CATALOG.md`](TEMPLATE_RESOLUTION_CATALOG.md) 是 Manager-facing 模板解析与交付导航：把模糊需求映射到 Artifact 类型、Canonical Template、角色触发条件和 Conversation / Cloud / Local 交付方式。它不替代模板正文或 Authority，也不要求普通下游对话读取整个 Catalog。

[`UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](UNIVERSAL_PROJECT_AI_BEHAVIOR.md) 是薄的项目级通用行为入口，复用现有 Context / Handoff / Reporting / State 机制并补齐 Git Hygiene。

[`role-anchors/`](role-anchors/) 保存长期正式角色的 Canonical Role Anchor；它们定义稳定身份与 Authority，不保存当前阶段、Milestone 或 Session 进度。

[`ARTIFACT_LIFECYCLE.md`](ARTIFACT_LIFECYCLE.md) 定义 Draft / Pending / Current / Consumed / Archived，以及 inbox / outbox / archive / temporary 的稳定引用规则。

[`MEMORY_INDEX.md`](MEMORY_INDEX.md) 回答当前有哪些持久状态、在哪里、是否新鲜；[`MEMORY_CHANGELOG.md`](MEMORY_CHANGELOG.md) 只记录管理意义上的状态变化。二者都不是状态本体。

[`knowledge/`](knowledge/) 保存长期知识状态：[`LEARNING_STATE.md`](knowledge/LEARNING_STATE.md) 记录用户已确认的学习状态，[`KNOWLEDGE_ASSET_INDEX.md`](knowledge/KNOWLEDGE_ASSET_INDEX.md) 记录知识资产的身份与职责；两者都是状态与指针，不替代其来源材料。

`templates/` 保存 Artifact Header、Manager 正式输入输出和索引模板，以及 Role Anchor、Project Authority Recovery Instructions 与可附加到关键报告的 Capability Impact 字段。
