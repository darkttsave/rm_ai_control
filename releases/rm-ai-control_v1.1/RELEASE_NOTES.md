# Release Notes — rm-ai-control_v1.1

- Release: `rm-ai-control_v1.1`
- Release date: 2026-09-16
- Core Protocol: `RM_AI_Development_Protocol_v2.3_Frozen`（unchanged）

## Added

- Memory Curator / Persistent State Custodian 角色。
- 五状态 Artifact Lifecycle：Draft、Pending、Current、Consumed、Archived。
- Artifact Header 约定。
- `MEMORY_INDEX.md` 与 `MEMORY_CHANGELOG.md`。
- `archive/returns/` 与 `archive/dispatches/`。
- `projects/` 稳定项目状态层。
- Persistent Memory / Artifact Curation Capability，初始状态 `Experimental`。

## Responsibility Change

Manager 保留用户接口、意图理解、status / route、Bootstrap、Capability Navigation 和 Capability Gap Observation。文件分类、持久化、归档、Memory Index / Changelog 与低风险生命周期 Git 维护转交 Memory Curator。

Memory Curator 不获得业务决策权；冲突语义保持 Pending Review 并交给相应 Human、Manager、Supervisor 或 rm-ai-control Maintainer。

## Lifecycle Activation

- `inbox/`：Pending 入站区，不是长期存储。
- `outbox/`：Pending Consumption 出站区，不是历史仓库。
- `archive/returns/`：已处理原始入站与证据。
- `archive/dispatches/`：有明确消费证据的正式出站。
- `temporary/`：被 Git 忽略的 Disposable Local Scratch Space。

## First Real Artifact Migration

- Knowledge Seed 从 `temporary/` 晋升到 `archive/returns/`，Current State 改用稳定来源指针。
- Guided Dart P0.5 Checkpoint 从仓库根目录迁入 `projects/guided-dart/`，内容语义保持不变。
- 现有 outbox Artifact 因没有明确消费证据全部保持 Pending。

## Experimental

Persistent Memory / Artifact Curation 已完成仓库规则、索引和角色基础，但尚未经过真实 DeepSeek Memory Curator 运行验证，因此保持 `Experimental`。

## Unchanged

- Core Protocol v2.3 Frozen 内容与语义。
- Guided Dart P0.5 阶段与 Checkpoint 语义。
- 已确认 Learning State 和 Knowledge Asset Index 内容。
- PID / Control 线程状态、用户知识掌握判断和现有项目技术路线。
