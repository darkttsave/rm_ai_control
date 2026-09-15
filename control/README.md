# Control

[`PROJECT_CONTROL_INDEX.md`](PROJECT_CONTROL_INDEX.md) 是 Manager 的当前工作导航地图，不是业务事实的最高权威。重要语义条目必须指向来源并记录更新时间；没有权威来源时保持 Unknown 或不登记。

[`SYSTEM_CAPABILITY_INDEX.md`](SYSTEM_CAPABILITY_INDEX.md) 是功能导航，回答系统会什么、何时使用和入口在哪里；Capability 不是文件，索引也不替代实现与验证来源。

[`UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](UNIVERSAL_PROJECT_AI_BEHAVIOR.md) 是薄的项目级通用行为入口，复用现有 Context / Handoff / Reporting / State 机制并补齐 Git Hygiene。

`templates/` 保存 Manager 的正式输入、输出和索引模板，以及可附加到关键报告的 Capability Impact 字段。
