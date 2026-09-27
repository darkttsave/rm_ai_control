# Specialized Task Card — C++ Architecture

> 使用场景：设计或审查 RM C++ 工程组织、模块边界、I/O、Observability、Record/Replay、Config 与 tools。

## 触发信号

- `main` 或 Component 同时承担算法、I/O 和业务流程；
- Camera、Detector、Tracker、Serial 等职责混在一起；
- Debug 功能通过大量业务 `if` 常驻；
- 离线工具、运行时观测和生产逻辑边界不清；
- Config 正在控制遍地业务分支；
- 出现 `utils/others/misc` 等垃圾桶目录；
- 需要稳定接口、可替换输入源或 Record → Replay。

## Human 最少提供

- 当前目录树与主数据/状态流；
- 真实构建目标和部署方式；
- 当前稳定接口与外部消费者；
- 日志、录像、调试工具和配置的真实使用方式；
- 当前问题的证据，而不是理想架构想象；
- 是否只审查，还是已授权结构修改。

## 下游应重点回答

- 组装与生命周期是否和业务处理分开；
- 业务流程、可复用模块和 I/O 边界是否清楚；
- 稳定 Interface 是否受到保护；
- Runtime Observability 是否污染业务主线；
- 独立工具是否应放在 `tools/`；
- 重要 Runtime Input 是否值得 Record/Replay；
- Config 是否控制组合，而非散布业务分支；
- 是否正在为尚不存在的需求制造 Framework。

## 与 Architecture / Refactor 的区别

C++ Architecture 提供领域内的组织判断；Architecture / Refactor 决定是否正式进入结构变更。只做审查时不自动获得重构授权。

## 应返回

- 当前主链路与职责图；
- 真实问题、证据和影响范围；
- 最小结构建议；
- 需要删除、保留或迁移的路径；
- 外部 Contract 和验证计划；
- 若需重大改变，明确触发 Human Gate。

正式依据：[RM C++ Architecture Playbook](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/CPP_Architecture.md)
