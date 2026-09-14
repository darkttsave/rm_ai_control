# RM Handoff Application --- RM 角色交接应用规则

> 通用交接原则见 `common/Handoff_Protocol.md`。
>
> 本文件只定义它在 RM + AI Development Protocol 中的具体应用。

------------------------------------------------------------------------

# 1. 默认角色链

``` text
Human
  ↓
Main Supervisor
  ↓
Specialist
  ↓
Work / Executor
```

不是每次都必须经过所有角色。

------------------------------------------------------------------------

# 2. Supervisor → Specialist

总监督通常负责生成：

`SPECIALIST_BRIEF.md`

优先使用：`templates/SPECIALIST_BRIEF_TEMPLATE.md`

最小内容：

``` text
Parent Goal
Specialist Question
Known Facts
Scope
Do Not
Need From You
Relevant Sources / Files
```

如果专项影响主干，应额外说明：

-   为什么现在调查；
-   当前锁定的工程约束；
-   不能自行改变的语义；
-   需要返回的验证证据。

用户不需要把完整 Supervisor 聊天复制给 Specialist。

------------------------------------------------------------------------

# 3. Specialist → Executor

如果专项已经得出足够明确的实现方案：

> Specialist 应把真正影响实现判断的内容压缩成 `TASK_BRIEF.md`。

优先使用：`templates/TASK_BRIEF_TEMPLATE.md`。

不要把：

-   全部推理过程；
-   所有废弃假设；
-   与实现无关的讨论；

原样传给 Work。

Task Brief 应突出：

``` text
Goal
Required Verification Level
Known Facts
Scope
Expected Behavior
Do Not
Verification
Stop / Human Gate Conditions
Relevant Sources
```

------------------------------------------------------------------------

# 4. Supervisor 直接 → Work

允许，但不是默认主链。

适用于：

-   已经非常明确的普通 Bug；
-   参数调整；
-   删除确认无使用者的旧代码；
-   明确的局部配置 / 日志修改。

如果任务涉及：

-   核心架构；
-   公共接口；
-   多模块主链；
-   真机安全；
-   重大 trade-off；

优先经过分析 / Specialist / Human Gate，而不是用"直接 Work"绕过判断。

------------------------------------------------------------------------

# 5. RM 特有的交接锚点

主干任务如果涉及以下内容，应显式交接：

-   Current Milestone；
-   当前可验证 baseline；
-   主数据流；
-   Interface / Contract；
-   Robot / Hardware boundary；
-   Required Verification Level；
-   Known Blocker；
-   Safety constraint。

不要只写：

> "把它改好。"

------------------------------------------------------------------------

# 6. 交接前验收

问：

``` text
下游知道：
我要做什么？
为什么现在做？
当前哪些事实是真的？
哪些东西不能改？
如何验证？
什么时候必须停？
```

能回答：

> 交接充分。

不能：

> 补齐关键语义后再交。


------------------------------------------------------------------------

# 7. 正式交接产物不要自由发挥

用户侧具体生成方法见 `USAGE_GUIDE.md`。

只要协议已经提供 Template，就使用：

``` text
Trigger
→ Template
→ Generation Prompt
→ Output File
→ Next Consumer
```

普通 Conversation 无法访问 Template 时，应明确让用户提供模板文件，而不是假装自己已经读取。
