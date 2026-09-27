# Delivery Card — DSH and Other Executors

> 范围：DSH、其他 AI 产品、临时 Specialist、额度切换后的替代执行体，以及能力不明的 Runtime。

## 1. 先声明真实能力

不要按产品名猜测。至少确认：

```text
Can read local files?
Can read a repository?
Can write files?
Can run commands/tests?
Can use Git / commit / push / PR?
Can access network or connected sources?
Can persist state directly?
Can reread Role Anchor later?
```

能力未知时，按最弱表面处理：自足说明 + 实际附件 + 明确 Return，不依赖仓库路径。

## 2. DSH 当前边界

- DSH Manager 是初始化、导航和模板交付接口；
- DSH Curator 负责收到已确认事件后的持久化处理；
- Manager 和 Curator 都不是具体业务任务 Executor；
- 业务执行体可以换成 Codex、其他 AI 或 Human 指定工具；
- 替换执行体不改变 Supervisor、Human Gate 和 Authority 边界。

不要因为同一 DSH Runtime 能启动两个角色，就混合二者权限。

## 3. 自足交付包

目标执行体不能访问仓库时，至少提供：

- 角色与目标；
- 必要 Authority 的最小原文；
- Bootstrap / Checkpoint / Brief；
- 本次需要的模板与专用规则；
- 实际任务材料；
- 输出格式、验证要求和 Return 对象；
- 缺失依赖请求格式。

## 4. 因额度或工具限制更换执行体

交接至少包含：

- 当前 Goal 和 Allowed Scope；
- 已完成、未完成和 Unknown；
- 已验证事实与 Verification Level；
- 当前 branch/commit 与 dirty state；
- 临时文件、工具状态和无法迁移的环境条件；
- 下一步动作和停止条件；
- 原执行体的 Task Report / Checkpoint。

如果目标执行体不共享同一工作树，未提交修改必须先转换为对方可取得的载体：已推送 commit、明确 patch/diff、或实际文件附件。只写“存在 dirty state”不能迁移成果。

交接是增加新的执行接点，不自动弃用原对话。原 Supervisor、Human 决策链和已确认来源继续有效；不要把完整聊天记录当成交接包，也不要因换模型而重新定义任务。

## 5. 返回路径

执行体返回上游消费者；需要持久化时再由 Producer/Manager 形成 Curator Update Packet。外部 AI 不直接根据模糊指令改写 `rm-ai-control` Authority 或 Memory Index。
