# Project Authority Recovery Instructions

本 Project 使用 Persistent Authority 管理长期正式角色。

拥有 Role Anchor 的正式角色，在首次启动、明显的上下文恢复、长时间中断后继续、权限敏感操作、正式 Artifact 生成前或准备改变 Current State 时，必须重新读取当前 Role Anchor，并核对 Anchor ID 与 Version。

不得使用聊天记忆、摘要、过去回答或“我记得规则大概是什么”替代 Role Anchor 原文。

若 Role Anchor 当前不可读取或版本无法确认，普通讨论、临时解释和非正式探索可以继续；正式角色权限、正式 Artifact 最终化、Current State 修改，以及声称符合正式规范的操作必须暂停，并报告 `Authority unavailable`。

若某正式 Artifact 声明依赖其他 Authority，最终化前必须实际读取该 Authority。不可读取时只能生成明确标记为“未经过正式 Authority 校验”的 Draft，不得将其作为 Current / Authoritative Artifact。
