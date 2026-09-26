```yaml
Artifact Type: Stage Checkpoint (Plain Conversation Return)
Scope: Project / Auto-Aim (P1) / Code Segment Analyst Supporting Conversation
Producer: Auto-Aim Code Segment Analyst
Created: 2026-09-21
Lifecycle: Archived
Semantic Authority: Role Report
Authoritative Source: archive/returns/STAGE_CHECKPOINT_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md（本文件即原始证据本体；Thread A；TongjiSuperPower/sp_vision_25 @ bd9f5e798fa3c6dd3b483ae6627796afb41c608d）
Supersedes: None
Next Consumer: None
```

> **Archive Record**（由 Memory Curator 添加的生命周期 metadata，非正文语义）：本 Checkpoint 由 Memory Curator 于 2026-09-22 从 `inbox/` ingest 并归档到 `archive/returns/`，Lifecycle 为 `Pending → Archived`。**原始文件名**：`Auto-Aim P1 ——Code Segment Analyst Stage Checkpoint.md`（用户放入 `inbox/`，此前未被 Git 跟踪）；归档副本正文未改动，文件名已规范化为稳定名。
>
> **Thread 标记**：文件名中的 `_A` 是**用户给出的对话线程标签**（"A对话"），**不是 Artifact 版本号**。用户说明：同一提示词开启了**两个并行对话**，Checkpoint 可能来自两个线程，用户会逐次说明来源。本文件是 **A 线程**的返回；B 线程的返回尚未到达，**不得与 A 混同或相互覆盖**。
>
> **配套 Packet**：本次同一事件的正式信封为 [`CURATOR_UPDATE_PACKET_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md`](CURATOR_UPDATE_PACKET_AUTO_AIM_CODE_SEGMENT_ANALYST_A.md)（同线程、同 revision）；两者是**一个** ingest 事件的正交记录，未被合并或改写。
>
> **已持久化**：可核验的源码级事实（主链、`Armor` / `Solver` / `Target` 职责、11D 状态与 4D 观测、动态观测噪声 R、`ekf_x()` 与 Plotter 接口、`cmake --build build --target auto_aim_test -j2` 构建路径）与 role-local continuity 已登记至 [`../../control/PROJECT_CONTROL_INDEX.md`](../../control/dashboard/PROJECT_CONTROL_INDEX.md) 与 [`../../control/MEMORY_INDEX.md`](../../control/memory/MEMORY_INDEX.md)。完整技术正文以**本文件**为准，索引只保留摘要与指针。
>
> **未持久化为 Current Fact**：§4 `Current Understanding / Hypotheses`（"边跑边打"归因、完整 ego-motion 补偿方案）是**假设，不是事实**；§6 `Open Questions` 与"自身平移未补偿"的**实际影响程度未经实验验证**；本 Checkpoint 不裁决 Project Stage / Milestone / 用户掌握等级。

# Stage Checkpoint

以下说明来自用户：我自己开启了两个提示词相同的对话，所以检查点可能来自于两个线程，每次我会说明。这个对话为A对话

## 1. Current Stage

- Stage：`P1`
    
- Topic / Project：`Auto-Aim / TongjiSuperPower sp_vision_25 / Code Segment Analyst Supporting Conversation`
    
- Conversation Role：`Auto-Aim Code Segment Analyst`
    
- Role Type：`Supporting Conversation`
    
- Persistent Role Anchor：`None required by current Bootstrap`
    
- Repository Mode：`Read-only investigation`
    
- Verified Repository Revision：`bd9f5e798fa3c6dd3b483ae6627796afb41c608d`
    
- Checkpoint Date：`2026-09-21`
    

---

## 2. Current Goal

- 本阶段当前正在解决：
    

围绕同济 `sp_vision_25` 的真实 Auto-Aim 代码，通过问题驱动的局部源码分析，帮助用户形成面向实际比赛的：

```
Tune + Diagnose
```

能力。

当前具体主线已经从基础模块关系推进到：

```
auto_aim_test.cpp
→ YOLO / Armor
→ Solver / PnP
→ Tracker / Target
→ EKF whole-car state
→ 实际调试输出
```

当前正在完成的工程实践是：

> 利用 `auto_aim_test.cpp` 输出并观察当前目标整车 EKF 状态，以及可获得的自身姿态信息，为后续调参与故障诊断建立可观察入口。

---

## 3. Verified Progress / Facts

### 3.1 `auto_aim_test.cpp` 当前真实主链

已通过源码确认：

```
Recorded Image + Quaternion
        ↓
YOLO::detect()
        ↓
list<Armor>
        ↓
Tracker::track()
   ├─ Solver
   └─ Target / EKF
        ↓
list<Target>
        ↓
Aimer::aim()
        ↓
Command
```

测试程序当前实际使用的是 `YOLO`，不是传统 `Detector + Classifier` 路线。

---

### 3.2 Detector / YOLO / Classifier 关系

已确认：

```
             Detection Frontend
                    │
        ┌───────────┴───────────┐
        │                       │
    Detector                   YOLO
 traditional CV            neural network
        │                       │
   Classifier                   │
        └──────── Armor ────────┘
```

- `Detector` 内部持有并调用 `Classifier`。
    
- `Classifier` 负责传统检测路线中装甲板图案分类。
    
- `YOLO` 是与 `Detector` 并列的另一套检测前端。
    
- 当前 `auto_aim_test.cpp` 使用 `YOLO`。
    

---

### 3.3 Armor 的职责

已确认 `Armor` 是单块装甲板的数据对象。

其数据包括：

- 图像检测结果；
    
- 装甲板角点、中心等二维几何；
    
- `name / type / color / confidence` 等语义；
    
- Solver 解算后写入的空间信息，例如：
    
    - `xyz_in_gimbal`
        
    - `xyz_in_world`
        
    - `ypr_in_gimbal`
        
    - `ypr_in_world`
        
    - `ypd_in_world`
        
    - `yaw_raw`
        

`Armor` 本身不负责：

- PnP；
    
- 整车状态预测；
    
- EKF；
    
- Aimer 决策。
    

---

### 3.4 Solver / PnP

已确认 Solver 中通过 OpenCV `solvePnP(..., SOLVEPNP_IPPE)` 获得当前装甲板位姿，并继续完成：

```
Camera
→ Gimbal
→ World
```

坐标变换。

Solver 的结果是当前单块 Armor 的空间观测，而不是敌方整车完整状态。

---

### 3.5 Target 的 11 维整车状态

已确认 Target 初始化和 EKF 使用的状态为：

[  
x=  
[x_c,v_x,y_c,v_y,z_c,v_z,a,\omega,r,l,h]^T  
]

对应：

```
x_c y_c z_c    目标旋转中心位置
vx vy vz       目标旋转中心速度
a              参考装甲板相位 / 朝向状态
ω              整车旋转角速度
r              第一组装甲板半径
l              两组装甲板半径差
h              两组装甲板高度差
```

可以按工程用途理解为：

```
11D
=
6D 平移状态
+
2D 旋转状态
+
3D 整车几何参数
```

---

### 3.6 第一次检测和正常 EKF 循环

第一次建立 Target 时：

```
Armor
→ Solver / PnP
→ 世界坐标观测
→ Target constructor
→ 初始化 11D state
```

初始化状态形式已确认近似为：

```
[x_c, 0,
 y_c, 0,
 z_c, 0,
 a,   0,
 r,   0,
 0]
```

正常循环：

```
上一帧 11D posterior
        ↓
Target::predict()
        ↓
当前 11D prior
        ↓
预测各装甲板位置
        +
当前 Armor / PnP observation
        ↓
装甲板 association
        ↓
EKF update
        ↓
当前 11D posterior
```

---

### 3.7 当前 EKF 观测

已确认 Target 更新使用的观测近似为：

[  
z=  
[yaw_{pos},pitch_{pos},distance,yaw_{armor}]^T  
]

即：

```
前三维：
当前装甲板在哪里

第四维：
当前装甲板朝向哪里
```

当前观测不是完整 11 维整车状态。

---

### 3.8 装甲板 ID / association

已确认 Target 会：

1. 利用上一帧 EKF 状态预测当前时刻；
    
2. 根据当前整车几何计算各模型装甲板的预测位置和朝向；
    
3. 将当前真实 PnP 观测与预测装甲板比较；
    
4. 找出最可能对应的模型 Armor ID；
    
5. 再将该观测送入 EKF。
    

因此，该逻辑的主要意义是区分：

```
装甲板切换
```

与：

```
整车突然高速旋转
```

---

### 3.9 EKF 观测噪声 R

已确认 Target 当前对观测噪声做了动态调整。

其中：

- `yaw_pos` 与 `pitch_pos` 噪声目前固定；
    
- 距离观测噪声随装甲板朝向偏差变化；
    
- Armor yaw 的观测噪声随距离缓慢变化。
    

这是后续 Tune 阶段的重要参数入口之一。

---

### 3.10 整车状态已有现成输出接口

已确认 Target 暴露：

```
target.ekf_x()
```

可以直接取得当前 11 维状态。

`auto_aim_test.cpp` 本身已经将这些状态写入 Plotter JSON：

```
x vx
y vy
z vz
a w
r l h
```

因此当前作业不需要重新设计 Target 状态接口。

---

### 3.11 Plotter

已确认项目中的 `tools::Plotter`：

```
JSON
→ UDP
→ 127.0.0.1:9870
```

主要适合观察时间序列趋势，例如：

```
vx(t)
vy(t)
ω(t)
r(t)
```

其用途与终端当前值观察不同。

---

### 3.12 当前调试输出方案

当前已决定使用：

```
固定终端 Dashboard
```

而不是：

- 不断滚动的 logger 输出；
    
- 将文字绘制到 OpenCV 图像窗口。
    

目标界面：

```
========== AUTO AIM STATE ==========

[Self State]
yaw
pitch
roll

[Enemy Target State]
x y z
vx vy vz
a w
r l h
armor id
```

通过 ANSI terminal escape sequence：

```
\033[2J   清屏
\033[H    光标返回左上角
```

使字段位置固定，仅更新数字。

---

### 3.13 当前能够得到的 Self State

当前离线测试数据中实际提供的是：

```
timestamp
quaternion (w, x, y, z)
```

因此可以获得：

```
self yaw
self pitch
self roll
```

当前数据没有确认存在：

```
self world x / y
self vx / vy
```

所以当前 Dashboard 中的 `Self State` 是自身姿态状态，不是完整底盘世界状态。

---

### 3.14 自身运动补偿

已确认当前 Solver 使用 IMU / gimbal rotation 完成旋转坐标补偿。

当前 Auto-Aim 链中尚未观察到自身底盘世界平移 / 速度进入 Enemy Target 估计链。

因此目前可以确定：

```
自身旋转
→ 有补偿入口

自身平移
→ 当前 Auto-Aim 主链中未确认完整补偿
```

不能据此进一步宣称具体比赛效果，需实际测试验证。

---

### 3.15 Omniperception

已确认 `tasks/omniperception` 是与 `auto_aim` 并列的功能组。

其主要结构包括：

```
multiple cameras
→ multiple YOLO
→ DetectionResult
→ Decider
```

它主要解决：

```
周围哪里存在敌人
应该关注哪个方向 / 哪个目标
```

而 Auto-Aim 主要负责：

```
已经选择目标后
如何跟踪、预测和瞄准
```

---

### 3.16 ROS2

已确认普通 `auto_aim_test` 不依赖 ROS2。

ROS2 当前主要出现在哨兵链中，用于：

```
Vision
↔ ROS2
↔ Navigation / Other Upper-level Systems
```

已观察到的实际用途包括：

- 接收 `enemy_status`；
    
- 将无敌状态提供给 `Decider`；
    
- 发布视觉获得的 `target_info`。
    

因此当前 Auto-Aim Tune 主线无需深入 ROS2。

---

### 3.17 构建方式

当前本地环境已验证可以通过：

```
cmake --build build --target auto_aim_test -j2
```

重新构建 `auto_aim_test`。

此前直接从源码根目录执行：

```
make auto_aim_test
```

不能正确完成当前构建目标。

---

## 4. Current Understanding / Hypotheses

以下内容不得作为 Verified Fact：

### 4.1 “边跑边打”问题

当前较合理的工程解释是：

```
敌方观测运动
=
敌方真实运动
-
自身运动
```

如果缺少自身平移运动补偿，则自身移动可能污染敌方速度估计。

但：

> “同济当前边跑边打效果差就是由这个单一因素导致”

尚未通过实验验证。

---

### 4.2 完整 ego-motion 补偿方案

一个合理的后续架构方向是：

```
wheel odometry / localization
        +
IMU
        ↓
ego-motion compensation
        ↓
world-frame enemy observation
        ↓
existing Target EKF
```

这属于工程推导，不是当前仓库已实现事实。

---

## 5. Important Decisions / Boundaries

### Decisions

- 学习目标保持为：
    

```
Tune + Diagnose
```

不是逐文件读完整仓库。

- 当前学习采用：
    

```
问题驱动源码调查
```

而不是重新做完整架构 Assimilation。

- 数学公式有助于理解时可以使用，但必须同时解释：
    
    - 每个字母含义；
        
    - 数量代表什么；
        
    - 它在当前代码里对应什么。
        
- 当前调试输出采用：
    

```
固定终端 Dashboard
```

- 原 Plotter 可以继续保留，用于趋势观察。
    

### Do Not / Boundary

- 不修改同济仓库的正式源码设计。
    
- 不 commit / push / refactor / formatter。
    
- 本 Supporting Conversation 不裁决：
    
    - Project Stage；
        
    - Milestone；
        
    - 用户掌握等级。
        
- 不在这里展开完整 C++ 课程。
    
- 如果源码理解真正被：
    
    - 生命周期；
        
    - ownership；
        
    - 多态；
        
    - callback；
        
    - template；
        
    - 其他 C++ 机制  
        阻塞，则转到 C++ Quick Knowledge Conversation。
        
- 暂不深入：
    
    - ROS2；
        
    - Omniperception；
        
    - 完整 ego-motion / 导航设计。
        
- 当前主线不要被上述支线继续拉走。
    

---

## 6. Open Questions

- 固定终端 Dashboard 最新代码是否已经实际运行并达到“字段固定，只刷新数字”的要求。
    
- 当前作业要求中的“自身状态”是否只要求姿态，还是明确要求底盘：
    
    - `x / y`
        
    - `vx / vy`
        
    - world pose / odometry。
        
- 如果要求完整自身底盘状态，当前离线录制文件是否存在尚未发现的额外 odometry 数据。
    
- 当前 Target / EKF 参数中，哪些参数在真实 Tune 阶段最敏感，需要结合 Plotter 和实际运动录像验证。
    
- `Aimer` 中：
    
    - 如何选择目标装甲板；
        
    - 如何确定预测时间；
        
    - 如何利用 Target 11D 状态；
        
    - yaw / pitch 如何最终形成；
        
    - 哪些参数是比赛中实际需要调整的。
        
- 当前普通 Auto-Aim 对自身平移缺少补偿这一点，对实际运动射击误差的影响程度尚未实验验证。
    

---

## 7. Current Materials / Source Anchors

- `TongjiSuperPower/sp_vision_25` @ `bd9f5e798fa3c6dd3b483ae6627796afb41c608d`
    
    - 当前所有源码调查的固定 revision。
        
- `tests/auto_aim_test.cpp`
    
    - 当前离线运行、状态输出、Plotter、Tracker/Aimer 调试的主要入口。
        
- `tasks/auto_aim/armor.hpp/.cpp`
    
    - 单 Armor 数据语义。
        
- `tasks/auto_aim/solver.hpp/.cpp`
    
    - PnP、坐标变换、Armor 空间观测。
        
- `tasks/auto_aim/tracker.hpp/.cpp`
    
    - Target 生命周期和跟踪入口。
        
- `tasks/auto_aim/target.hpp/.cpp`
    
    - 11D 整车状态、装甲板关联、EKF observation model。
        
- `tools/extended_kalman_filter.hpp/.cpp`
    
    - 通用 EKF 数学执行器。
        
- `tasks/auto_aim/aimer.cpp`
    
    - 下一主线调查入口。
        
- `tools/plotter.hpp`
    
    - UDP 调参可视化入口。
        
- `src/sentry.cpp`
    
    - ROS2 与 Omniperception / Auto-Aim 集成参考；当前非主线。
        
- `BOOTSTRAP_AUTO_AIM_CODE_SEGMENT_ANALYST.md`
    
    - 当前 Supporting Conversation 执行边界。
        
- `UNIVERSAL_PROJECT_AI_BEHAVIOR.md`
    
    - Return / Checkpoint / state synchronization 规则。
        
- `CURATOR_UPDATE_PACKET_TEMPLATE.md`
    
    - 正式 Artifact 返回 Curator 的标准接口。
        
- `STAGE_CHECKPOINT_TEMPLATE.md`
    
    - 本 Checkpoint 使用的正式模板。
        

---

## 8. Next Step

下一轮首先完成一个明确动作：

> 实际运行修改后的 `auto_aim_test` 固定终端 Dashboard，确认 Enemy Target 11D 状态和 Self YPR 能稳定显示，并确认作业对 “Self State” 的具体要求。

该操作验证完成后，结束当前调试输出支线。

随后主线进入：

```
Aimer
```

重点调查：

```
Target 11D state
        ↓
Aimer
        ↓
预测时间 / 目标装甲板
        ↓
aim point
        ↓
yaw / pitch command
```

并只关注对 Tune + Diagnose 有价值的参数和故障现象。

---

## 9. Carry Forward

下一次同阶段对话必须带走：

- **Current Goal：**
    
    - 围绕同济 Auto-Aim 建立实际 Tune + Diagnose 能力。
        
    - 当前先闭环 `auto_aim_test` 状态观察，再进入 `Aimer`。
        
- **Critical Verified Facts：**
    
    - 当前主链为 `YOLO → Armor → Tracker(Target + Solver + EKF) → Aimer`。
        
    - Target 使用 11D whole-car state。
        
    - PnP 当前提供单 Armor 空间观测，不直接提供完整 11D state。
        
    - Target 已提供 `ekf_x()`。
        
    - `auto_aim_test` 已经通过 Plotter输出 11D Target 状态。
        
    - 当前离线自身数据可明确取得 quaternion / YPR，但未确认完整 chassis pose / velocity。
        
    - ROS2 与 Omniperception 当前均不是普通 Auto-Aim 学习主线。
        
- **Locked Decisions / Boundaries：**
    
    - Tune + Diagnose 优先。
        
    - 问题驱动源码调查。
        
    - 不逐文件读仓库。
        
    - 不修改正式源码架构。
        
    - C++ 机制成为真正阻塞时转 C++ Quick Knowledge Conversation。
        
    - 调试界面使用固定终端 Dashboard，不使用 OpenCV 画面叠字。
        
    - ROS2 / Omniperception / ego-motion 深入暂缓。
        
- **Open Questions：**
    
    - Dashboard 实机运行是否符合要求。
        
    - 作业对 Self State 的准确要求。
        
    - Aimer 的实际预测与调参逻辑。
        
    - 自身平移对跟踪误差的实际影响。
        
- **Required Materials：**
    
    - 当前 revision 的 `sp_vision_25` 只读仓库。
        
    - `tests/auto_aim_test.cpp`
        
    - `tasks/auto_aim/aimer.cpp`
        
    - 必要时继续读取 `target.cpp / tracker.cpp / solver.cpp`
        
    - 当前 Checkpoint。
        
- **First Next Step：**
    
    - 运行最新 `auto_aim_test` Dashboard 并确认输出；无问题后进入 `Aimer`。