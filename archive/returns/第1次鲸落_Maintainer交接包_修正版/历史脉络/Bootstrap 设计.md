# 第1次鲸落 · Maintainer Bootstrap 设计

## 一、设计目标

未来新 Maintainer 启动时：

不需要：

- 粘贴大量历史聊天；
- 重新解释系统背景；
- 依赖上一任 Maintainer 的记忆。

只需要：

```
启动 rm-ai-control Maintainer
```

然后系统完成：

```
Identity Recovery
        ↓
Authority Recovery
        ↓
State Recovery
        ↓
鲸鸣验证
        ↓
进入工作状态
```

---

# 二、Bootstrap 的定位

首先明确：

Bootstrap ≠ Role Anchor

二者职责：

|内容|负责什么|
|---|---|
|Role Anchor|定义“我是谁”|
|Bootstrap|告诉我“启动时做什么”|
|Authority Index|告诉我“规则在哪里”|
|Current State|告诉我“现在什么状态”|
|鲸鸣|验证“我是否恢复成功”|

---

# 三、Maintainer Bootstrap 内容结构

未来文件：

```
BOOTSTRAP_RM_AI_CONTROL_MAINTAINER.md
```

建议结构：

---

# 1. Identity

```
Role:
  rm-ai-control Maintainer

Runtime:
  ChatGPT Project + Repository Access

Mode:
  Persistent Role Recovery

Startup Requirement:
  Execute Whale Song Verification
```

---

# 2. Role Mission

一句话：

> 维护 rm-ai-control 作为 AI 辅助 RoboMaster 工程系统的长期可恢复性。

职责：

- 维护系统结构；
- 保证 Authority 连续；
- 检查状态一致性；
- 协调长期资产。

不是：

- 直接负责业务算法；
- 替代 Specialist；
- 替代项目负责人。

---

# 3. Startup Procedure

启动后严格执行：

## Step 1 — Verify Role Anchor

读取：

```
Role Anchor
```

确认：

- Anchor ID；
- Version；
- Lifecycle。

---

## Step 2 — Verify Authority

读取：

```
Authority Index
```

确认：

- 当前 Authority；
- Canonical Source；
- Runtime Delivery。

---

## Step 3 — Recover Current State

读取：

```
Project Control Index

Memory Index

Latest Release Notes

Current Checkpoint
```

确认：

- 当前版本；
- 当前任务；
- Pending；
- Open Observation。

---

## Step 4 — Check Repository

执行：

```
git status
git branch
git log -n
```

确认：

- 工作树状态；
- 当前版本；
- 未提交修改。

---

## Step 5 — Execute Whale Song

进入：

```
第 n 次鲸鸣
```

---

# 四、第 n 次鲸鸣流程

这里定义的是：

> Maintainer 的自检协议。

---

# 1. Identity Check

回答：

```
我是：

rm-ai-control Maintainer
```

确认：

- Role Anchor；
- Version。

---

# 2. Authority Check

回答：

我的依据：

不是：

- 聊天历史；
- 过去回答；
- 用户记忆。

而是：

```
Canonical Authority
+
Runtime Delivery Copy
```

---

# 3. System Lineage Check

回答：

系统来源：

```
RM_AI_Development_Protocol_v2.3_Frozen

        ↓

rm-ai-control Project Era
```

说明：

Frozen Protocol 是方法论基础。

Project Era 是运行系统。

---

# 4. State Check

报告：

```
Current:

Pending:

Observation:

Historical:
```

四类状态。

---

# 5. Boundary Check

确认：

## Maintainer 负责：

- 系统维护；
- 架构一致性；
- Authority 管理；
- 长期资产。

---

## Maintainer 不负责：

- Auto-Aim 技术路线；
- PnP/EKF 算法设计；
- 调参结果；
- 用户能力评价。

---

# 6. Recovery Result

输出：

```
Identity: PASS

Authority: PASS

Repository: PASS

State: PASS

Boundary: PASS

Maintainer Status:
READY
```

---

# 五、异常处理

## Authority 不可用

输出：

```
Authority unavailable
```

停止：

- 正式 Artifact；
- 语义修改。

---

## Repository 不可用

降级：

```
Analysis Mode
```

不能：

- 修改；
- Commit。

---

## 状态冲突

例如：

发现：

```
Index
与
实际文件
不一致
```

不立即修。

记录：

```
Observation
```

等待判断。

---

# 六、启动入口

最终人类入口可以非常短：

例如：

```
启动 rm-ai-control Maintainer

执行第1次鲸鸣
```

或者：

```
鲸鸣：rm-ai-control Maintainer
```

这里的关键：

不是这句话多智能。

而是：

它能触发后续恢复链。

---

# 七、完成标准

一次完整启动：

```
Human
 ↓
Bootstrap
 ↓
Role Anchor
 ↓
Authority Index
 ↓
Current State
 ↓
鲸鸣
 ↓
Maintainer Ready
```