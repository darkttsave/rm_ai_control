# Memory Index — rm-ai-control_v1.2

> 回答“当前有哪些重要持久状态、在哪里、是否新鲜”。本索引不是状态本体。
>
> `Authoritative Artifact > Memory / Control Index > Conversation Summary`

## Current Persistent State

| Scope | Memory / State | Current Source | Status | Last Updated | Owner | Pending Update |
|---|---|---|---|---|---|---|
| System | Core Protocol / Stable Baseline | [`../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/`](../protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/) | Current | 2026-09-14 | rm-ai-control Maintainer | Real RM long-term validation remains incomplete |
| System | Project version / Release record — `rm-ai-control_v1.2` | [`../releases/rm-ai-control_v1.2/RELEASE_NOTES.md`](../releases/rm-ai-control_v1.2/RELEASE_NOTES.md) | Current | 2026-09-19 | rm-ai-control Maintainer | Core Protocol baseline remains `v2.3 Frozen`; v1.2 is a project-layer release |
| System | System Capability Index | [`SYSTEM_CAPABILITY_INDEX.md`](SYSTEM_CAPABILITY_INDEX.md) | Current | 2026-09-21 | rm-ai-control Maintainer / Repo Operator | `Persistent Authority / Long-lived Role Continuity` now `Active` (Human Confirmed, 2026-09-21); `Persistent Memory / Artifact Curation` remains `Experimental` |
| System | Artifact Lifecycle | [`ARTIFACT_LIFECYCLE.md`](ARTIFACT_LIFECYCLE.md) | Current | 2026-09-19 | rm-ai-control Maintainer / Memory Curator | None registered |
| System | Authority Index — Authority discovery / resolution | [`AUTHORITY_INDEX.md`](AUTHORITY_INDEX.md) | Current | 2026-09-19 | rm-ai-control Maintainer / Memory Curator | Thin index of currently used Authorities only; an unresolved Authority ID must be reported, never guessed from a filename |
| Control | Project Control Index | [`PROJECT_CONTROL_INDEX.md`](PROJECT_CONTROL_INDEX.md) | Current | 2026-09-22 | Memory Curator; Manager is navigation consumer | Apply only authority-backed state deltas |
| Role / Auto-Aim | Persistent Role Anchor — `auto-aim-code-framework-analyst` | [`role-anchors/AUTO_AIM_CODE_FRAMEWORK_ANALYST_ROLE_ANCHOR.md`](role-anchors/AUTO_AIM_CODE_FRAMEWORK_ANALYST_ROLE_ANCHOR.md) | Current — Canonical Version `1.1` | 2026-09-19 | rm-ai-control Maintainer / anchored role | Runtime Delivery Copy `1.1` re-read and verified (`PASS`); the old `1.0` Runtime Copy is `stale` and must not be used as current Authority |
| Project / Auto-Aim | P1 Current Stage + `M1`（Current Primary Project） | [`../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md`](../archive/dispatches/CURATOR_UPDATE_PACKET_AUTO_AIM_P1_STAGE_AND_SUPERVISOR.md)（阶段语义，Human Confirmed；稳定项目状态位置尚未建立） | Current | 2026-09-17 consume | Human（阶段语义）；Memory Curator maintains pointer | `M1` 仅部分有证据；stable Auto-Aim project state location pending Repo Operator |
| Project / Auto-Aim | Upstream repository identity + verified revision | [`../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md`](../archive/returns/AUTO_AIM_CODE_FRAMEWORK_ANALYST_CHECKPOINT.md)（`Role Report`，只读调查；源码级细节见 [`../archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md`](../archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md) Thread A） | Current | 2026-09-20 verified；2026-09-22 ingest | Code Framework Analyst / Code Segment Analyst（Role Report）；Memory Curator maintains pointer | branch / 许可证 / 获取方式未登记；`M1` 的 environment / 完整 build / launch / runtime evidence 仍无证据；八项源码疑点待实车验证 |
| Project / Guided Dart | P0.5 Current Checkpoint — secondary / historical line | [`../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md`](../projects/guided-dart/GUIDED_DART_P0_5_CHECKPOINT.md) | Current | Source date not stated; relocated 2026-09-16; priority position updated 2026-09-17 | Guided Dart project roles / Human | Next-season rules, ownership boundaries and real system capability remain unknown |
| Knowledge | Learning State — C++ / OpenCV / ROS2 | [`knowledge/LEARNING_STATE.md`](knowledge/LEARNING_STATE.md) | Current | 2026-09-16 | User; Memory Curator maintains pointer | Deep Learning / PnP / EKF / PID / Control remain Not Registered |
| Knowledge | Knowledge Asset Index — 21 registered assets | [`knowledge/KNOWLEDGE_ASSET_INDEX.md`](knowledge/KNOWLEDGE_ASSET_INDEX.md) | Current | 2026-09-16 | User / Knowledge roles; Memory Curator maintains pointer | Incremental updates only when asset lifecycle changes |
| Runtime | DSH Manager MVP status | [`../runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md`](../runtime/dsh-pilot/MANAGER_RUNTIME_STATUS.md) | Current | 2026-09-14 | Manager Runtime operator | Web UI, session resume and remote hosting remain unverified in the recorded status |

## Pending Artifact Overview

### Inbox

No Pending inbound Artifact is registered.

### Outbox — Pending Consumption

没有明确消费证据，因此以下文件保持 `Pending`，未移入 `archive/dispatches/`：

以下 outbox 指针只用于临时 Lifecycle Navigation，不作为任何 Current 语义的 Authoritative Source；消费后必须移入稳定 archive 路径或删除该 Pending 指针。

| Artifact | Intended Consumer / Purpose | Pending Update |
|---|---|---|
| [`../outbox/BOOTSTRAP_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_ENGINEERING_TASK_COORDINATOR.md) | Auto-Aim Engineering Task Coordinator 对话（`Repo-capable Role`，默认 `no-write`；Supporting Conversation，无 Role Anchor） | Await explicit consumption evidence — 会话尚未建立；实际读取能力未验证；写权限已决定暂不授予 |
| [`../outbox/BOOTSTRAP_CPP_QUICK_KNOWLEDGE_CONVERSATION.md`](../outbox/BOOTSTRAP_CPP_QUICK_KNOWLEDGE_CONVERSATION.md) | C++ Quick Knowledge Conversation（`Plain Conversation`；Supporting Conversation，无 Role Anchor） | Await explicit consumption evidence — 会话尚未建立 |
| [`../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_MAIN_SUPERVISOR.md) | Auto-Aim Main Supervisor 对话（`Plain Conversation`） | Await explicit consumption evidence — 会话尚未建立；角色存在不等于已产生进度判断 |
| [`../outbox/BOOTSTRAP_AUTO_AIM_CODE_FRAMEWORK_ANALYST.md`](../outbox/BOOTSTRAP_AUTO_AIM_CODE_FRAMEWORK_ANALYST.md) | Auto-Aim Code Framework Analyst（`Repo-capable Role` 目标面） | Await explicit consumption evidence —— Bootstrap Packet 本身仍未被消费；角色已在 ChatGPT Project Runtime 运行、以 Role Anchor `1.1` 通过 Authority 验证并产出正式 Checkpoint，但**运行与 Return 不等于本 Packet 已消费** |
| [`../outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md`](../outbox/BOOTSTRAP_AUTO_AIM_ENVIRONMENT_INSTRUCTOR.md) | Auto-Aim Environment Configuration Instructor（`Executor with repo write` 目标面，限环境范围） | Await explicit consumption evidence — 会话尚未建立；含 upstream baseline 硬规则 |
| [`../outbox/REPOSITORY_CHANGE_REQUEST_AUTO_AIM_PROJECT_STATE.md`](../outbox/REPOSITORY_CHANGE_REQUEST_AUTO_AIM_PROJECT_STATE.md) | Repo Operator —— Auto-Aim 稳定项目状态位置（结构变化） | Await Repo Operator 裁决与落盘；非语义冲突，不阻塞现有导航 |
| [`../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_COORDINATE_FRAMES.md`](../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_COORDINATE_FRAMES.md) | Guided Dart Knowledge Conversation | Await explicit consumption evidence |
| [`../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md`](../outbox/BOOTSTRAP_GUIDED_DART_KNOWLEDGE_PID_CONTROL_INTERFACE.md) | Guided Dart PID / Control Knowledge Conversation（`Plain Conversation` 目标；2026-09-16 按 `rm-ai-control_v1.1` Plain Conversation Execution Contract 刷新） | Still `Pending Consumption` — 真实新对话尚未建立，无消费证据；PID / Control Learning State remains Not Registered |
| [`../outbox/BOOTSTRAP_KNOWLEDGE_STATE_FIRST_VERSION.md`](../outbox/BOOTSTRAP_KNOWLEDGE_STATE_FIRST_VERSION.md) | Existing rm-ai-control initialization executor | Await explicit consumption evidence |
| [`../outbox/BOOTSTRAP_KNOWLEDGE_STATE_SEED.md`](../outbox/BOOTSTRAP_KNOWLEDGE_STATE_SEED.md) | Knowledge-reconstruction executor | Await explicit consumption evidence |

## Freshness Rule

当 Pending Return 可能改变 Current State 时，同时报告 Current persisted state 和 Pending return；在 ingest 前不把 Pending 内容写成 Current Fact。
