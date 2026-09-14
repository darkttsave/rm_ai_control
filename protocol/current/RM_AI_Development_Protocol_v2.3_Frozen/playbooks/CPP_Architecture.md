# Playbook --- RM C++ Architecture

> v2.3 继承：**稳不稳定 + 出问题会不会修**。

> 目的：整理本次讨论与 RM 开源工程调研中得到的**架构边界经验**。\
> 这不是固定目录模板。\
> 总原则：

> **学习成熟工程的边界，不复制成熟工程的规模。**

------------------------------------------------------------------------

# 1. 第一原则：main / Component 只负责组装与生命周期

`main.cpp` 不应该成为：

-   Detector；
-   状态机；
-   Debug Center；
-   Config Switchboard；
-   Video Tool；
-   Serial Test；
-   业务规则集合。

理想入口保持很薄：

``` cpp
int main()
{
    auto config = loadConfig();
    Application app(config);
    return app.run();
}
```

复杂系统可以由 Application、Component 或 Bringup 承担 composition root。

核心思想：

> `main` 决定"这次运行组装哪些能力"，业务模块决定"能力本身怎么工作"。

------------------------------------------------------------------------

# 2. 第二原则：业务流程、可复用模块和 I/O 保持清楚边界

概念上可以区分：

``` text
Application / Kernel
    负责机器人当前运行流程

Modules
    Detector / Recognizer / Tracker / Predictor ...

I/O
    Camera / IMU / Serial / Network ...

Infrastructure / Observability
    Logging / Metrics / Recorder ...
```

不要求小项目第一天创建这些文件夹。

例如只有 Camera + YOLO + StateMachine + Serial 时：

``` text
src/
├── app/
├── camera/
├── detection/
├── task/
└── communication/
```

已经足够。

边界清楚比目录数量更重要。

------------------------------------------------------------------------

# 3. 第三原则：优先保护稳定 Interface，而不是具体算法

长期更值得稳定的是：

``` cpp
DetectionResult
TrackingResult
GimbalCommand
Frame
TaskCommand
```

而不是：

``` cpp
YOLOv8Detector
某个具体 EKF
某个 Provider
```

例如：

``` text
Detector A ─┐
Detector B ─┼→ DetectionResult → Recognizer
Replay ─────┘
```

只要 Contract 稳定，内部算法可以演化而不牵动整条 Pipeline。

不要为了接口"看起来正规"提前造复杂抽象；真实替换需求出现时再正式抽象。

------------------------------------------------------------------------

# 4. 第四原则：Runtime Observability 与业务逻辑分离

## 应长期存在的 Runtime Observability

例如：

-   错误日志；
-   状态 transition；
-   inference latency；
-   关键结果；
-   必要运行视频；
-   failure snapshot；
-   关键事件。

它们需要观察正式程序真实运行时的状态，因此可能作为正式组件存在。

## 不应该污染业务模块

避免：

``` cpp
if (save_debug_image) ...
if (show_window) ...
if (record_video) ...
if (verbose) ...
```

散落在 Detector / StateMachine 中。

配置应主要在 composition root 决定是否创建组件。

例如：

``` cpp
if (config.observability.record_video) {
    recorder_ = std::make_unique<VideoRecorder>(...);
}
```

然后业务模块仍保持：

``` cpp
auto detections = detector.detect(frame);
```

------------------------------------------------------------------------

# 5. Tool 与 Runtime Observability 的边界

问：

> **这个能力必须观察正式比赛程序运行时的真实状态吗？**

## 是 → Runtime / Observability

例如：

-   正式运行时录像；
-   状态机事件；
-   inference latency；
-   失败时保存当前 Frame + Result；
-   runtime structured log。

可以由 YAML 在程序启动时决定是否组装。

## 否 → `tools/` 独立 executable

例如：

-   相机独立预览 / 调参；
-   单图 Detector 测试；
-   串口收发测试；
-   离线日志分析；
-   CSV → 报告；
-   benchmark；
-   离线视频实验。

这些工具复用正式模块，但不要求完整比赛 Pipeline。

------------------------------------------------------------------------

# 6. 第五原则：重要 Runtime Input 优先考虑 Record → Replay

单纯保存 `video.mp4` 很有用，但长期更强的能力是：

``` text
Robot Runtime
→ Recorder
→ Recorded Session
→ Player
→ Same Pipeline
```

必要时 Session 可以逐步包含：

-   frame；
-   timestamp；
-   IMU； -状态事件； -关键输入输出； -配置快照； -commit/version。

价值：

> 把一次真机问题搬回开发机重复复现。

这尤其适合：

``` text
现场异常
→ 留证据
→ 离线 Replay
→ Investigation / Experiment
→ 修改
→ 同一数据回归
→ 再上真机
```

但不要第一天就建设完整 Replay Framework。

真实复现困难出现后再逐步增强。

------------------------------------------------------------------------

# 7. 第六原则：Config 控制组合，不控制遍地业务分支

推荐：

``` yaml
observability:
  record_video: false
  performance_log: true
```

由 Application / Bringup：

``` text
读取一次
→ 创建需要的组件
→ 运行稳定主链路
```

不推荐：

``` text
每个业务函数
→ 读取 YAML
→ if mode A / if mode B / if debug ...
```

总结：

> **Configuration controls composition.**

而不是：

> Configuration pollutes business logic.

------------------------------------------------------------------------

# 8. 输入源可替换比"大量运行模式"更健康

避免：

``` text
Mode 1 Camera
Mode 2 Image
Mode 3 Video
Mode 4 SerialDebug
...
```

更好的思想：

``` text
Camera ───────┐
Recorded Data ├→ Input Source → Pipeline
Video ────────┘
```

以及：

``` text
Pipeline → Serial Sink
Pipeline → Null/Test Sink
```

不是四套业务逻辑，而是同一组能力的不同组装。

------------------------------------------------------------------------

# 9. 不要第一天造 Observer Framework

如果当前只有：

-   VideoRecorder；
-   PerformanceMonitor；

直接：

``` cpp
if (video_recorder_) {
    video_recorder_->record(frame);
}
```

完全合理。

只有真的出现多个 Observer、Application 开始被旁路逻辑淹没以后，再抽象
Observer / Sink。

原则：

> **先有真实复杂度，再抽象复杂度。**

------------------------------------------------------------------------

# 10. 避免垃圾桶目录

谨慎使用：

``` text
others/
misc/
utils/
common/
```

不是说这些目录永远不能存在，而是：

> 不知道放哪，不应该自动等于放进 utils。

先问它到底属于：

-   I/O； -业务模块； -接口； -基础设施； -观测； -工具； -测试。

------------------------------------------------------------------------

# 11. 一个适合中小 RM C++ 项目的起点

``` text
project/
├── src/
│   ├── main.cpp
│   ├── app/
│   ├── camera/
│   ├── detection/
│   ├── recognition/
│   ├── task/
│   ├── communication/
│   └── observability/
│
├── tools/
│   ├── camera_preview/
│   ├── detector_test/
│   ├── serial_test/
│   └── offline_analyzer/
│
├── config/
└── tests/
```

这只是**可能的起点**。

真实仓库已有更好的组织时，沿用原结构。

------------------------------------------------------------------------

# 12. 架构审查时最终问什么

不是：

> "我们有没有 kernel/module/interface 这些专业目录？"

而是：

1.  打开主链路时，能不能一眼看清输入→处理→输出？
2.  Debug / Log / Video 是否把业务代码淹没？
3.  修改一个模块是否经常牵动整个工程？
4.  数据 Contract 是否比具体实现稳定？
5.  调试工具能否独立运行？
6.  Config 是否主要决定组合，而不是制造大量业务分支？
7.  现场问题是否有办法留下可复现证据？

架构成熟度体现在边界，而不是文件夹数量。
