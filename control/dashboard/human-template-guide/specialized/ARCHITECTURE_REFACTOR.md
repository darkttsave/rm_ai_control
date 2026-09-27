# Specialized Task Card — Architecture / Refactor

> 使用场景：已经明确进入结构收敛或重构，而不是普通 Delivery 中临时觉得结构“不够优雅”。

## 合理触发

- 当前结构阻塞新功能；
- 同一职责已有多份重复实现；
- 模块职责和接口长期混乱；
- 每个小功能都需要跨大量无关文件；
- 新旧路径、Temporary 或兼容层长期并存；
- 已稳定的里程碑需要集中收敛。

“以后可能需要”“成熟项目都这样”“AI 建议抽象”不足以触发。

## Human 最少提供

- 重构要减少的具体负担；
- 当前正常行为与基线；
- 关键测试、配置和外部 Contract；
- 允许改变与不得改变的边界；
- Required Verification Level；
- 公共行为变化或重大架构选择的 Human 决定。

## 下游应回答

- 当前复杂度的真实证据是什么；
- 新结构减少了哪些概念、重复、耦合或影响范围；
- 哪些旧 API、兼容层、Mode、Config 和 Helper 将被删除；
- 外部 Contract 是否变化；
- 如何重新建立 baseline。

## 完成条件

- 重新验证 baseline；
- 检查外部 Contract；
- 删除过渡代码；
- 报告验证等级与残留风险；
- 证明复杂度实际减少，而不是只增加新层。

正式依据：[Architecture / Refactor Playbook](../../../../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/Architecture_Refactor.md)
