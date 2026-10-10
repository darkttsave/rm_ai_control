# Explanation Profiles — 对象与深度

> 来源：`protocol/current/RM_AI_Development_Protocol_v2.3_Frozen/playbooks/knowledge/explanation/EXPLANATION_PROFILES.md`  
> Profile 只补充 Explanation Core，不要求用户手动选择。

## 按对象组织

### Theory / Concept

`为什么需要 → 对象与直觉 → 关键关系 → 条件与边界 → 工程意义`。数学是当前断点时再进入推导。

### Code

`职责 → 输入 → 关键状态变化 → 输出 → 下游`。需要时区分语言、框架、业务和原理层。

### API / Framework

`调用者提供什么 → 何时执行 → 负责什么 → 返回或状态变化 → 当前工程怎样使用`。工程速用优先接口、参数、输入输出、最小示例、常见坑和版本边界。

### System / Architecture

`输入 → 主要模块 → 关键状态/Contract → 输出 → 失败边界`。区分当前实现、设计意图、替代方案和未来设想。

## 按需要控制深度

- **Engineering Use**：能正确使用，不把系统当盲盒；通常对应 Operate / Tune。
- **Working Understanding**：能调参、诊断或修改当前相关部分；通常对应 Tune / Diagnose / Modify。
- **Deep Study**：形成长期核心能力，再按需加入数学、比较、源码映射、理论边界和现代扩展。

同一对话可以动态改变对象和深度，不需要换聊天或声明 Mode。

