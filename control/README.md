# Control

[`PROJECT_CONTROL_INDEX.md`](PROJECT_CONTROL_INDEX.md) 是 Manager 的当前工作导航地图，不是业务事实的最高权威。重要语义条目必须指向来源并记录更新时间；没有权威来源时保持 Unknown 或不登记。

[`SYSTEM_CAPABILITY_INDEX.md`](SYSTEM_CAPABILITY_INDEX.md) 是功能导航，回答系统会什么、何时使用和入口在哪里；Capability 不是文件，索引也不替代实现与验证来源。

[`UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](UNIVERSAL_PROJECT_AI_BEHAVIOR.md) 是薄的项目级通用行为入口，复用现有 Context / Handoff / Reporting / State 机制并补齐 Git Hygiene。

[`knowledge/`](knowledge/) 保存长期知识状态：[`LEARNING_STATE.md`](knowledge/LEARNING_STATE.md) 记录用户已确认的学习状态，[`KNOWLEDGE_ASSET_INDEX.md`](knowledge/KNOWLEDGE_ASSET_INDEX.md) 记录知识资产的身份与职责；两者都是状态与指针，不替代其来源材料。

`templates/` 保存 Manager 的正式输入、输出和索引模板，以及可附加到关键报告的 Capability Impact 字段。
