# Delivery Card — Work Cloud

> 范围：ChatGPT Work Cloud，以及需要仓库执行时的 Codex Cloud。两者都不能直接读取你电脑上的本地路径。

## 1. 先判断是哪类云端工作

### ChatGPT Work Cloud

适合分析、研究、文档、表格、演示和其他明确交付物。材料通过以下方式提供：

- 上传或附件；
- ChatGPT Project Sources；
- 已授权连接应用；
- 可访问的网页或云端来源。

### Codex Cloud 仓库执行

适合在隔离云端环境中读取、修改、测试 Git 仓库。需要：

- 已连接 GitHub/GitLab 仓库；
- 指定可访问的 repository；
- 已创建并配置对应 cloud environment；
- 目标 branch/commit 已经 push；
- 依赖、工具、变量与允许的 Secret 已配置。

把仓库提交到 GitHub 只是第一步；还必须确认目标环境实际连接了正确仓库和版本。

## 2. 云端交付清单

- Repository / Project identity；
- Branch / Commit / Tag；
- 本次执行环境名称或来源集合；
- `AGENTS.md` 与必要 Authority/模板是否位于可访问版本中；
- Bootstrap / Checkpoint / Brief；
- 专用 Playbook 和源材料；
- build/test 命令与依赖；
- 网络、外部服务和 Secret 是否允许；
- Write / Commit / PR 权限；
- Expected Return 和下一位消费者。

## 3. 不能这样交付

- 只给本机绝对路径；
- 引用尚未 push 的本地提交；
- 假定本地 dirty state 已同步；
- 把 Token、密码或 `.env` 提交进仓库；
- 假定连接 GitHub 就自动拥有所有仓库、分支和写权限；
- 用 Project Instructions 代替当前 Task Brief。

## 4. 推荐同步方式

```text
本地形成稳定、可审查的 Git 状态
→ 将需迁移的未提交修改形成 commit，或显式导出 patch / 文件
→ push 明确 branch / commit
→ 云端选择正确 repository / environment
→ 提供 commit + Bootstrap + Brief + Required Playbook
→ 云端执行并返回 summary / diff / tests
→ Human review
→ PR / merge / Curator persistence（按任务分别处理）
```

没有进入已推送 commit 的本地 dirty state，不会自动出现在云端。若因权限或风险不能提交，必须把 patch 或文件作为独立任务材料交付，并明确其基线 commit。

若只是讨论而非仓库执行，可使用 Project Sources 的小型 Authority 闭包，不必上传整个控制仓库。

## 5. 结果恢复

要求云端返回可定位的 Artifact：文件、diff、commit、PR 或下载结果。不要让“聊天里说完成了”成为唯一状态来源。

官方产品边界：

- [Get started with ChatGPT Work](https://learn.chatgpt.com/docs/get-started-with-work)
- [Codex cloud](https://learn.chatgpt.com/docs/cloud)
