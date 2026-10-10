# Executor Handoff — 更换执行体时的项目交接

> 重组来源：`Handoff_Protocol.md`、`Carry_Forward.md`、`STAGE_CHECKPOINT_TEMPLATE.md`

## 使用条件

项目和工作目标仍然存在，但接下来由另一个执行体继续。交接重点不是写一段完整历史，而是让新执行体从项目现场直接恢复工作。

## 项目中必须留下什么

1. **实际修改结果**：代码、配置和文档已经落盘。
2. **仓库状态**：分支、commit，以及尚未提交的修改。没有提交时不得假装已经提交。
3. **当前工作状态**：已完成、未完成、阻塞点和关键边界。
4. **验证状态**：运行过什么、通过什么、什么尚未验证。
5. **继续所需材料**：日志、测试数据、配置、文档和复现命令的路径。
6. **第一步入口**：下一执行体首先打开什么、运行什么或验证什么。

## 复用现有项目记录

已有调参日志或任务日志能够记录测试条件、参数变化、现象、结论和下一轮目标时，不再生成重复的阶段报告。

交接只补日志通常缺少的内容：Git/代码状态、实际落盘内容、尚未验证项和明确的第一步。现有日志已经覆盖全部必要字段时，直接引用最新条目即可。

## 模板

```markdown
# Executor Handoff

## Current Goal

## Repository State
- Branch：
- Commit：
- Uncommitted Changes：

## Completed

## Changed Files and Reasons

## Verification Completed

## Not Verified

## Known Problems / Blockers

## Locked Decisions / Boundaries

## Relevant Materials
- Logs：
- Test Data：
- Configuration：
- Documentation：
- Reproduction Commands：

## First Next Action

## Stop Conditions
```

## 验收

新执行体不依赖上一执行体的聊天记录，也能确认仓库现场、复现当前问题、判断哪些结果可信，并执行下一步。
