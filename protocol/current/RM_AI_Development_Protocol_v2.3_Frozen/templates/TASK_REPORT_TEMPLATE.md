# Human-readable Task Report Template --- v2.3

> Task Report 的用途是让人快速理解"这一轮发生了什么"。\
> 它不是项目当前事实数据库，也不替代 Git / PROJECT_STATE / Supervisor
> Snapshot。

------------------------------------------------------------------------

# A. 小任务简报

适用于：

-   确定 Bug 修复；
-   小参数调整；
-   删除死代码；
-   局部日志/配置修正；
-   不改变主链路和公共接口的修改。

模板：

``` markdown
## 本轮结果

完成：
<一句话>

修改：
- <关键文件/行为>

验证：
- <证据>

当前等级：
<Implemented / Locally Verified / Integration Verified / Robot Verified>

未验证 / Pending：
- <没有则写无>

遗留：
- Temporary: <无/有>
- Technical Debt: <无/有>
- Knowledge Debt: <无/有>
```

------------------------------------------------------------------------

# B. 重要任务完整报告

以下情况倾向使用：

-   新功能闭环；
-   主链路变化；
-   公共接口变化；
-   跨多个模块；
-   状态机修改；
-   重要 Debug；
-   Integration；
-   真机任务；
-   Architecture / Refactor；
-   新增 Temporary；
-   产生 Knowledge Debt / Technical Debt。

模板：

``` markdown
# Task Report

## 1. 本轮目标

<这次真正解决什么>

## 2. 实际修改

- <行为变化>
- <关键文件/模块>
- <明确未修改的高风险区域，必要时>

## 3. 当前主链路

<用短数据流/状态流表示修改后的结构>

## 4. 为什么采用这个方案

<只写影响理解的关键理由，不写长篇推理>

## 5. 验证

- Build:
- Tests:
- Offline / Replay:
- Integration:
- Robot:

Current Verification Level:
<level>

Required Verification Level:
<level>

## 6. 未验证 / Pending / Blocked

- 

## 7. 删除与收敛

本轮删除：
- 

仍存在的 Temporary：
- Name:
  Purpose:
  Delete when:

## 8. Debt

Technical Debt:
- 

Knowledge Debt:
- 
  Why deferred:
  Trigger:

## 9. 如果现在出问题

First debug step:
- <第一检查点>

Then:
- <必要时第二检查点>

## 10. 需要人下一步做什么

- <没有则写无>
```

------------------------------------------------------------------------

# C. 报告写作原则

1.  先写"行为发生了什么"，不要先列文件。
2.  验证必须写证据和等级。
3.  不把未验证内容写成完成。
4.  明确 Temporary 的删除条件。
5.  不写 AI 内部长推理。
6.  人应该能在几分钟内重新获得控制力。
