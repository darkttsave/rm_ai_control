# Delivery Card — Work Local

> 范围：ChatGPT Work Local、本地 Codex 或其他确实连接本机工作目录的执行环境。

## 1. 开始前确认

- 当前工作目录和 Primary Folder；
- 需要的其他文件夹是否已经附加；
- 沙箱读取与写入范围；
- 当前仓库、分支、HEAD 与 dirty state；
- 是否允许修改、提交、推送或创建 PR；
- 本机工具、依赖、应用和网络是否可用。

Local 不等于无限权限；路径存在也不等于当前沙箱可读。

## 2. 长期约定的实现位置

仓库执行约定优先放在：

- 根目录 `AGENTS.md`；
- 必要子目录的 `AGENTS.md`；
- 版本受控的项目文档；
- 已批准的 Role Anchor。

Primary Folder 是 Git 操作与 `AGENTS.md` 自动发现的主要入口。其他附加文件夹可以读取，但不要假定其中的启动规则会自动被发现。

## 3. 可以使用路径交付的条件

同时满足：

1. 文件位于已授权读取范围；
2. 执行体已经确认路径可读；
3. 目标版本/分支正确；
4. 文件没有被更高优先级 Authority 取代；
5. 任务所需内容不只存在于当前聊天记忆。

满足后，可只给最小路径列表，不必重复粘贴全文。

## 4. 推荐投放顺序

```text
AGENTS / Role Anchor
→ Bootstrap or current recovery artifact
→ Task Brief
→ Relevant Playbook / Template
→ Source files and verification target
→ Return Contract
```

执行体自行读取相关文件，但不得遍历整个控制仓库来猜任务。

## 5. 完成时

- 报告实际改动、验证等级和残留风险；
- 区分任务前 dirty state 与本次产生的修改；
- 只提交已授权、已验证且属于本任务的文件；
- 返回 commit/branch 或未提交 diff 的准确位置；
- 需要长期状态更新时另走 Curator 路径。

官方产品边界：[Projects and chats — local projects](https://learn.chatgpt.com/docs/projects)
