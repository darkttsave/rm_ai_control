# Handoff Protocol --- 通用最小充分交接

> 本文件是通用层，不依赖 RoboMaster。
>
> 目标：
>
> **让下游拥有完成下一步所需的全部关键语义，但不把无关历史一起塞过去。**

------------------------------------------------------------------------

# 1. 核心原则

> **最小充分，而不是最短。**

过长的问题：

> 下游被无关历史淹没。

过短的问题：

> 下游缺少改变判断所需的语义。

因此：

> **不要压缩"字数"，要压缩"无关上下文"。**

------------------------------------------------------------------------

# 2. 冷启动与热启动

## Cold Start

下游没有可靠上下文。

需要：

``` text
Role / Stage Entry
+
Current Truth
+
Task / Goal
+
Relevant Constraints
+
Decision-critical materials
```

## Warm Start

下游已经拥有可靠项目上下文。

只需要：

``` text
Task Delta
+
Changed Facts
+
Locked Decisions / Invariants
+
Verification Target
```

原则：

> **冷启动传基线，热启动传差量。**

------------------------------------------------------------------------

# 3. 任务影响等级

可以用三档帮助判断交接深度。

### Local

局部、低风险、不影响主干语义。

通常只需：

``` text
Goal
Scope
Verification
```

### Mainline

影响核心流程、状态、数据流或重要模块。

增加：

``` text
Why / Current Context
Known Facts
Invariants / Locked Decisions
Relevant Evidence
```

### System

跨模块、接口、架构、真机、安全或重大行为。

增加：

``` text
Integration Context
Risks
Trade-offs
Verification Boundary
Stop / Human Gate Conditions
```

------------------------------------------------------------------------

# 4. 交接包的最小组成

具体字段按任务裁剪。

### Goal

你现在要解决什么？

### Why / Trigger

为什么现在做？

只在改变判断时提供。

### Current State

当前最重要的事实是什么？

### Scope

允许碰什么、不允许碰什么？

### Invariants / Locked Decisions

哪些东西已经不能自行改变？

### Expected Result

完成以后应该是什么行为？

### Verification

如何证明完成？

### Stop / Gate

什么情况不能自行继续？

### Relevant Sources

真正需要阅读的文件 / 数据 / 规则。

------------------------------------------------------------------------

# 5. 不要复制已经可访问的信息

如果下游已经能可靠访问：

-   项目仓库；
-   项目状态；
-   AGENTS；
-   协议；
-   现有文档；

不要重新复制全文。

应该：

> **引用它 + 说明本任务中哪部分重要。**

------------------------------------------------------------------------

# 6. 但也不要假设"它肯定能访问"

如果是普通 Conversation，不能假设它能看到：

-   Workspace 文件；
-   之前对话附件；
-   用户电脑文件；
-   其他聊天；
-   连接器中的资料。

所以：

> **访问能力不确定时，关键决策信息必须显式提供或要求用户提供。**

------------------------------------------------------------------------

# 7. Handoff 的停止条件

如果下游缺少的信息会改变：

-   Goal；
-   Scope；
-   Public / External Behavior；
-   Architecture；
-   Safety；
-   Verification Target；

不要用猜测补齐。

应该：

``` text
指出缺失
→ 请求必要信息
或
→ 触发 Human Gate
```


------------------------------------------------------------------------

# 8. Formal Artifact Generation

如果某个应用协议要求生成正式的 Checkpoint / Report / Snapshot / Brief / Return，不能只给一个产物名字。

该应用协议应明确：

``` text
Trigger
Template
Generation Prompt
Output File
Next Consumer
```

如果接收方无法访问模板文件，必须显式提供模板或其固定字段；不要假设它能看到别处的文件。

------------------------------------------------------------------------

# 9. Role-to-role 的应用

通用机制可以用于：

``` text
Supervisor → Specialist
Specialist → Executor
Old Conversation → New Conversation
Old Team Member → New Team Member
Research → Implementation
Learning → Engineering
```

具体 RM 角色规则见 RM Protocol。

------------------------------------------------------------------------

# 10. 交接验收

交接后，下游至少应该能回答：

1.  我要做什么？
2.  为什么现在做？
3.  哪些事实已经确定？
4.  哪些东西不能擅自改变？
5.  做完如何验证？
6.  什么情况下必须停下来问人？

如果答不出来，交接不足。

如果能答出来，但附带了大量无关历史：

> 交接过量。
