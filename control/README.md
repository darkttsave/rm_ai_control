# Control

`control/` 按职责分层。目录表示对象属于哪一层，不表示只有某一种角色可以读取；所有索引都只做导航，不替代其指向的权威来源。

## Human-first Dashboard

- [`dashboard/PROJECT_CONTROL_INDEX.md`](dashboard/PROJECT_CONTROL_INDEX.md)：当前项目、角色、阻塞与来源指针。
- [`dashboard/SYSTEM_CAPABILITY_INDEX.md`](dashboard/SYSTEM_CAPABILITY_INDEX.md)：系统已有能力、用途、入口、Owner 与状态。
- [`dashboard/human-template-guide/START_HERE.md`](dashboard/human-template-guide/START_HERE.md)：供 Human 判断当前阶段、所需专用材料与目标运行表面交付方式；它是导航，不替代 Canonical Template 或 Authority。

## AI Control Layer

- [`ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md`](ai/UNIVERSAL_PROJECT_AI_BEHAVIOR.md)：项目级通用行为、Authority Recovery、Artifact Return 与 Git Hygiene。
- [`ai/TEMPLATE_RESOLUTION_CATALOG.md`](ai/TEMPLATE_RESOLUTION_CATALOG.md)：供 Manager / Maintainer / Curator 按需解析模板、触发条件与交付表面；普通下游对话不读取整个 Catalog。

实际 DSH Manager / Curator 启动入口继续位于 [`../runtime/dsh-pilot/`](../runtime/dsh-pilot/)；`ai/` 保存控制规则，不保存运行程序。

## Authority

- [`authority/AUTHORITY_INDEX.md`](authority/AUTHORITY_INDEX.md)：Authority discovery / resolution 薄索引。
- [`authority/role-anchors/`](authority/role-anchors/)：长期正式角色的 Canonical Role Anchor，不保存当前任务或 Session 进度。

## Memory and Records

- [`memory/MEMORY_INDEX.md`](memory/MEMORY_INDEX.md)：当前持久状态、位置与 freshness。
- [`memory/MEMORY_CHANGELOG.md`](memory/MEMORY_CHANGELOG.md)：具有管理意义的状态变化记录，不替代 Git log。

## Governance and Reusable Material

- [`governance/ARTIFACT_LIFECYCLE.md`](governance/ARTIFACT_LIFECYCLE.md)：Draft / Pending / Current / Consumed / Archived 及稳定流转规则。
- [`templates/`](templates/)：正式 Artifact、索引、Role Anchor 与恢复指令模板。
- [`knowledge/`](knowledge/)：特化的长期学习状态与知识资产导航；不并入通用 Memory，也不替代知识来源材料。

历史 Archive / Release 正文可能保留重构前的字面路径，用于表达当时记录；当前入口与可点击链接以上述目录为准。
