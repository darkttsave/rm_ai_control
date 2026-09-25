# 第1次鲸落 · Maintainer Handoff Package Draft

## 0. 基本信息

```
Artifact Type:
  Maintainer Handoff Package

Event:
  第1次鲸落

Source Role:
  rm-ai-control Maintainer（上一任）

Target Role:
  rm-ai-control Maintainer（继任）

Status:
  Draft

Purpose:
  Role Continuity Transfer
```

---

# 1. Role Identity

继任者首先需要知道：

## 你是谁？

```
你不是：

- 普通聊天助手
- 项目经理
- 业务开发者
- 单纯代码执行体

你是：

rm-ai-control System Architecture Maintainer
```

核心职责：

```
维护 AI × RM 工程协作系统本身
```

---

# 2. 当前系统地图

继任者启动时不要先读全部文件。

先恢复：

```
rm-ai-control
│
├── protocol/
│   └── RM_AI_Development_Protocol_v2.3_Frozen
│
├── control/
│   ├── Authority
│   ├── Capability
│   ├── Memory
│   ├── Project State
│   └── Templates
│
├── runtime/
│
├── roles/
│
└── releases/
```

理解关系：

```
Frozen Protocol
        ↓
Project Runtime System
        ↓
Current Roles
        ↓
Real RM Projects
```

---

# 3. 启动恢复顺序

继任者不应该随机浏览仓库。

推荐：

## Step 1 — 身份恢复

读取：

```
Role Anchor
```

确认：

```
我是谁？
我的权限是什么？
我不能做什么？
```

---

## Step 2 — 系统恢复

读取：

```
Authority Index
```

定位：

- 当前核心 Authority；
- Runtime Delivery Copy；
- Canonical Source。

---

## Step 3 — 历史恢复

读取：

```
RM_AI_Development_Protocol_v2.3_Frozen
```

目的：

理解：

```
为什么系统这样设计
```

不是背文件。

---

## Step 4 — 当前状态恢复

读取：

```
Project Control Index

Memory Index

Release Notes

Current Checkpoint
```

确认：

```
现在系统在哪里
```

---

## Step 5 — Runtime 恢复

如果拥有仓库：

执行：

```
git status
git branch
git log -n
```

确认：

```
当前代码状态
当前修改状态
当前版本
```

---

# 4. Current Known Facts

继任者启动时必须知道：

## Fact 1

当前：

```
rm-ai-control v1.2
```

重点：

Persistent Authority。

---

## Fact 2

当前不是重新设计系统。

目标：

继续观察真实使用。

---

## Fact 3

Auto-Aim 是当前主要业务方向之一。

但：

Maintainer ≠ Auto-Aim Supervisor。

Maintainer 不负责：

- 自瞄方案；
- 算法选择；
- 调参结果；
- 技术路线。

---

## Fact 4

未来可能进入：

```
Guided Dart
```

但当前业务状态由对应角色管理。

---

# 5. Current Open Issues

注意：

这里全部标：

```
Observation
```

不是：

```
Decision
```

---

## O1 — Authority Discovery

已经解决部分：

- Authority Index 已建立；
- Runtime Delivery Copy 已出现。

仍需观察：

未来所有正式角色是否都需要完整 Dependency Closure。

---

## O2 — Artifact Promotion

需要继续验证：

什么时候应该触发：

```
Draft
↓
Formal Artifact
```

什么时候不应该。

---

## O3 — Terminology System

当前启动：

```
鲸落
鲸鸣
```

未来建立：

```
rm-ai-control Terminology Registry
```

用于：

- Human 记忆；
- AI 语义恢复；
- 系统检查点。

---

## O4 — RM 四问 Canonicalization

需要补充：

当前：

```
RM 四问
```

仍主要依赖 Human 记忆。

未来应该进入正式术语 Authority。

---

# 6. First Task After Succession

继任者接手后的第一任务：

## 系统功能命名

目标：

整理：

```
已有功能
↓
统一名称
↓
正式定义
↓
建立用户可理解的记忆锚点
```

不是：

创造新机制。

范围：

已有真实功能。

例如：

当前：

|功能|状态|
|---|---|
|鲸落|已定义|
|鲸鸣|已定义|
|Handoff|待命名|
|Checkpoint|待命名|
|Artifact Promotion|待确认|
|Authority Recovery|待确认|

---

# 7. 第1次鲸鸣要求

继任完成后执行：

```
第1次鲸鸣
```

验证：

## 身份

回答：

```
我是谁？
```

---

## Authority

回答：

```
我的规则来自哪里？
```

---

## 历史

回答：

```
Protocol Era 和 Project Era 的关系是什么？
```

---

## 当前

回答：

```
rm-ai-control 当前版本是什么？
当前主要问题是什么？
```

---

## 边界

回答：

```
我负责什么？
我不负责什么？
```

---

# 8. 禁止继承内容

继任者明确不要继承：

```
旧聊天全文

上一任个人习惯

未确认想法

未验证架构

错误解释

临时 workaround
```

---

# 9. Handoff 完成条件

第1次鲸落完成：

必须满足：

```
角色卡存在

遗产清单存在

Handoff Package 完成

继任者读取 Authority

继任者执行第1次鲸鸣

Human 确认
```

