# Executor Prompt — 下游执行提示词

> 重组来源：`Handoff_Protocol.md`、`TASK_BRIEF_TEMPLATE.md`、`Carry_Forward.md`

提示词负责给下游执行体说明目标、边界和验收，不承担保存整个项目历史的职责。

## 冷启动还是热启动

判断依据不是是否开启了新对话，而是执行体是否拥有可靠上下文。

- **Cold Start**：不了解项目，或无法可靠读取已有任务状态。
- **Warm Start**：已经理解项目和当前任务，只需要接收本轮差量。
- 无法确认时按 Cold Start 处理。

## Cold Start

应包含：执行体职责、项目最小背景、本次目标、已确认事实、允许和禁止范围、相关材料、验证要求、停止条件、完成后返回内容。

长度建议：

- 正文 `800～1500` 个中文字符；
- 原则上不超过 `2000` 字；
- 大段代码、日志和项目说明放进文件，通过路径引用；
- 不复制整个 README、协议或聊天记录。

```markdown
# Cold Start Executor Prompt

## Responsibility

## Project Baseline
只写理解本任务所必需的项目背景。

## Goal

## Verified Facts

## Scope
- Allowed：
- Not in scope：

## Locked Decisions / Must Remain Unchanged

## Relevant Sources
列出路径或链接，并说明各自用途。

## Expected Observable Result

## Verification

## Stop / Human Gate Conditions

## Completion Return
Outcome、Changed、Verification、Not Verified、Risks / Unknowns、Next Step。
```

## Warm Start

只提供：已有任务指针、本轮变化、新增事实、本轮动作、发生变化的边界、验证目标和完成后返回内容。

长度建议：

- 正文 `300～800` 个中文字符；
- 原则上不超过 `1000` 字；
- 不重新介绍项目结构；
- 未变化的规则和约束只引用原任务或文件。

```markdown
# Warm Start Executor Prompt

## Existing Task Reference

## Changes Since Last Run

## New Verified Facts

## Action This Run

## Changed Boundaries

## Verification Target

## Completion Return
Outcome、Changed、Verification、Not Verified、Risks / Unknowns、Next Step。
```

## 完成回传

执行体只需在本次任务完成或受阻时返回一次结果，不要求持续生成面向总监督的阶段汇报。

```markdown
## Outcome
PASS / PARTIAL / FAILED

## Changed

## Verification

## Not Verified

## Risks / Unknowns

## Next Step
```

缺失信息会改变 Goal、Scope、外部行为、安全或 Verification 时，执行体必须停止猜测并请求 Human 决定。
