# Delivery Card — Chat

> 范围：普通 Chat，以及 ChatGPT Project 中的 Chat。二者都不是本机仓库执行环境。

## 1. 普通 Chat（不在 Project 中）

适合：一次性答疑、讨论、短分析、局部草稿。

交付方式：

- 在消息中内联最小规则；
- 上传或附加本轮需要的文件；
- 说明来源路径只能作为 provenance；
- 新接收者用 Bootstrap 装配必要材料；续接既有工作时，同时提供相应 Checkpoint、Snapshot 或 Report。

不要只发送 `C:\...\template.md` 或仓库相对路径并假定对方能打开。

## 2. ChatGPT Project 中的 Chat

Project 可以在其 Chats 间共享：

- 已上传的 Project Sources；
- Project Instructions；
- 已授权的连接来源。

它不会因为项目名称相同就直接获得本机文件夹访问。

### 适合放入 Project Instructions

- 稳定角色边界；
- 稳定恢复规则；
- 如何请求缺失依赖；
- 关键来源优先级；
- 不随单次任务变化的操作约定。

### 适合放入 Project Sources

- 当前 Role Anchor 的 Runtime Delivery Copy；
- 本项目长期需要的少量 Canonical 规则；
- 经确认的稳定参考资料。

### 每个 Chat 单独提供

- 本次 Bootstrap，以及需要续接时的 Checkpoint / Snapshot / Report；
- 当前任务 Brief；
- 当前 Relevant Detail；
- 本轮才需要的专用 Playbook和源材料；
- 期望 Return 和下一位消费者。

## 3. Token 与漂移控制

- 不把整个仓库上传为 Project Source；
- 不把当前任务写进长期 Project Instructions；
- 一个 Chat 对应一个清晰 Outcome；
- 对话健康时直接继续；Yellow 时重锚，Red 时暂停正式工作；
- 正式产物开始前、长时间中断后或 Authority 版本变化时重新核验。

## 4. 返回方式

Chat 默认返回文本、附件或候选 Artifact，不直接假定已经写入仓库。需要长期保存时，由 Human/Manager 把 Return 交给 Curator 或具备明确写权限的角色。

官方产品边界：[Projects and chats](https://learn.chatgpt.com/docs/projects)
