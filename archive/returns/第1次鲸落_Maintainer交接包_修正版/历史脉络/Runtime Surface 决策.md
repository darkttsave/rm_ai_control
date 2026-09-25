# 第1次鲸落 · Runtime Surface 决策

## Target Runtime

```
ChatGPT Project Runtime
+
Repository Access
+
Human Supervision
```

---

# 为什么 Maintainer 需要更高 Runtime

之前的角色：

例如：

- Code Framework Analyst；
- Environment Instructor；

它们是：

```
Specialist
```

目标：

完成某类任务。

因此可以接受：

- 对话型；
- 限定权限；
- 返回 Artifact。

---

但是 Maintainer 不同。

它负责：

```
系统自身状态
```

需要观察：

```
rm-ai-control
│
├── Protocol
├── Authority
├── Roles
├── Memory
├── Capability
├── Releases
└── Project State
```

如果没有仓库：

它只能看到：

- 用户描述；
- 当前对话；
- 部分上传文件。

这会导致：

> Maintainer 逐渐退化成“咨询者”。

而不是维护者。

---

# 这次牺牲额度的意义

你说：

> 愿意牺牲一点额度保证系统稳定性。

实际上是在选择：

```
Runtime Reliability
>
Token Efficiency
```

这是符合 Maintainer 定位的。

因为：

一次错误的系统修改成本可能远高于：

- 多读几个文件；
- 多做一次恢复检查。

---

# 那么第四环节应该重新定义

之前：

> 启动方式设计

现在改为：

# 第1次鲸落 · 第四环节

## Maintainer Runtime Bootstrap Design

目标：

设计：

> ChatGPT Project + Repo-capable Maintainer 如何启动。

---

# 一、Maintainer 启动环境

正式定义：

```
Role:
  rm-ai-control Maintainer

Runtime:
  ChatGPT Project

Capabilities:
  - Project Sources Read
  - Repository Read
  - Repository Write (with permission)

Supervision:
  Human-in-the-loop
```

---

# 二、权限模型需要重新设计

这是下一步重点。

因为现在：

Maintainer 有仓库管理能力。

必须区分：

## 1. 可以自动执行

例如：

读取：

```
git status
git log
文件结构
链接检查
状态检查
```

---

## 2. 可以提出修改

例如：

发现：

```
Authority Index 缺失
```

可以：

提出：

> 建议新增 Authority Index。

---

## 3. 必须经过确认

例如：

修改：

- Core Protocol；
- Role Anchor；
- Capability 定义；
- Current State；
- 删除文件；
- 大规模重构。

---

## 4. 可以直接执行

这个需要进一步定义。

比如：

Curator 是否允许自动：

- 更新 Memory Index；
- 更新 Changelog；
- 归档 Packet；
- 提交 Git？

还是：

Maintainer 决策 → Repo Operator 执行？

---

这里会决定未来角色关系：

目前可能有两个方案。

---

# 方案 A：Maintainer + Repo Operator 分离

结构：

```
Human
 │
 ▼
Maintainer
 │
 ├── 决策
 ├── 审查
 └── 生成任务
        │
        ▼
Repo Operator
        │
        ▼
Git 修改
```

优点：

安全。

缺点：

流程长。

---

# 方案 B：Maintainer 自带 Repo Operator 能力

结构：

```
Human
 │
 ▼
Maintainer
 │
 ├── 分析
 ├── 决策
 ├── 修改
 └── Git
```

优点：

效率高。

缺点：

权限集中。

---

结合你之前的设计，我倾向于：

**Maintainer 本身具备 Repo 能力，但保留 Human Gate。**

即：

```
Maintainer = Architecture + Execution

但是：

高风险修改
       ↓
Human Approval
```

因为你现在不是运营一个多人团队，而是在建立一个个人长期 AI 工程助手。

---

# 三、启动流程应该变成

未来：

你打开 Project：

输入：

```
执行第 n 次鲸鸣
```

Maintainer：

1. 检查 Role Anchor；
2. 检查 Runtime；
3. 检查仓库状态；
4. 恢复 Protocol；
5. 恢复 Project State；
6. 输出 Recovery Report；
7. 等待任务。