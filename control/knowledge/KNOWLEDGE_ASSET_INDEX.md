# Knowledge Asset Index

> 本文件登记知识库里“有什么”，不把资产存在解释为用户“会什么”。
>
> 所有资产路径均相对于外部工作区 `C:\Users\SHIN\Desktop\知识重构`，不是本仓库内路径；本仓库只保存资产身份、职责和来源指针，不复制正文。
>
> 本首版只登记用户于 2026-09-16 确认的候选报告中的 21 条资产：C++ 5 条、OpenCV 11 条、ROS2 5 条。

---

# Overview

| Domain | Canonical / Important Assets | Notes |
|---|---|---|
| C++ | 基础正式稿、类专题、回调专题；旧稿和旧资料保留为非 Canonical 来源 | 5 条；待校对 / 旧稿映射为 Working，不与正式稿混同 |
| OpenCV | 总目录、主干 / 强相关 / 拓展知识、五项作业、来源维护与旧资料 | 11 条；只读旧资料保持 Source |
| ROS2 | 基础主线、坐标 / TF2、作业2、来源维护与旧资料 | 5 条；作业2 历史任务为 Canonical，但重构示例当前未重跑 |

---

# Relevant Detail

## C++ Assets

### Asset: C++ 知识总目录与基础正式稿

**Path / Name：** `C++/c++基础知识/00：知识总目录.md`；同目录标记为“正式”的基础文章

**Type：** Theory / Concept; API / Code

**Status：** Canonical

#### Coverage

按读代码问题定位控制流、类型、指针 / 引用、参数、容器、函数、命名空间、头文件和编程范式；目录承担检索，不要求物理分类。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: C++.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

`memory/PROJECT_STATE.md` 记录第一批基础知识完成；总目录记录正式、待校对和旧稿状态。

#### Maintenance Note

只有目录中标记为“正式”的基础文章属于本 Canonical 资产；待校对和旧稿另行登记。

### Asset: C++ 类检索与理解专题

**Path / Name：** `C++/c++类/`

**Type：** Theory / Concept; API / Code

**Status：** Canonical

#### Coverage

先按代码外观恢复最小理解，再连续解释类、对象、状态、构造、RAII、文件分离、成员选择、继承、多态、模板、回调和 RM 设计。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: C++.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

来源为 `RM_note/c++类知识/` 25 篇旧材料；用户审阅多态样板后批准其余篇章按同一密度扩写；记录见 `memory/PROJECT_STATE.md` 与 `memory/REFACTOR_LOG.md`。

#### Maintenance Note

Unknown — not supplied by the seed.

### Asset: C++ 回调函数专题

**Path / Name：** `C++/c++回调函数/`

**Type：** Theory / Concept; API / Code

**Status：** Canonical

#### Coverage

以 OpenCV 鼠标回调为完整疑问链，解释注册、触发、固定接口、`userdata`、类中静态中转、对象恢复和回调生命周期。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: C++.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

`memory/PROJECT_STATE.md` 记录 5 篇正式资产；主文保存具体代码和问题产生顺序。

#### Maintenance Note

Unknown — not supplied by the seed.

### Asset: C++ 基础目录中的待校对与旧稿

**Path / Name：** `C++/c++基础知识/` 中由 `00：知识总目录.md` 标为“待校对”或“旧稿”的文件

**Type：** Source / Legacy

**Status：** Working

#### Coverage

保存早期理解、补充资料和尚未统一校对的内容；不与正式稿等同。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: C++.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

资产身份由 `00：知识总目录.md` 明确标注；继续保留，不覆盖。

#### Maintenance Note

目录中部分文件被 `00：知识总目录.md` 标为“待校对”或“旧稿”，旧稿不作 Canonical 使用。

### Asset: C++ 类旧资料

**Path / Name：** `RM_note/c++类知识/`

**Type：** Source / Legacy

**Status：** Source

#### Coverage

25 篇类知识原始材料，保存旧分类、问题和学习痕迹。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: C++; source for C++ 类检索与理解专题.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

`memory/PROJECT_STATE.md` 与 `memory/REFACTOR_LOG.md` 明确记录来源和只读原则。

#### Maintenance Note

只读 Source 旧资料，不与正式正文混同。

## OpenCV Assets

### Asset: OpenCV 知识总目录

**Path / Name：** `OpenCV知识重构/00：OpenCV 知识总目录.md`

**Type：** System / Architecture

**Status：** Canonical

#### Coverage

统一提供按问题查找、主链、API、任务地图、强相关和拓展入口，并声明当前范围边界。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: OpenCV.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

目录自身记录数量和状态；`memory/PROJECT_STATE.md` 记录两轮主干与关联知识完成。

#### Maintenance Note

Unknown — not supplied by the seed.

### Asset: OpenCV 主干知识

**Path / Name：** `OpenCV知识重构/0主干知识/`

**Type：** Theory / Concept; API / Code

**Status：** Canonical

#### Coverage

从图像 / 视频输入，经保存、Mat / ROI / Mask、颜色、二值化、滤波、形态学、几何标准化、轮廓、边缘与直线建立必要 Pipeline。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: OpenCV.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

`OpenCV知识重构/来源与维护/` 保存来源映射与规则；记忆层记录第一、二轮范围。

#### Maintenance Note

Unknown — not supplied by the seed.

### Asset: OpenCV 强相关知识

**Path / Name：** `OpenCV知识重构/强相关知识/`

**Type：** Theory / Concept; API / Code

**Status：** Canonical

#### Coverage

保存不宜塞进主干、但会反复阻塞选型和理解的边界问题；服务多个主链节点。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: OpenCV; serves multiple main-chain nodes.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

由主干来源、交叉链接和第二轮遗漏补全形成；维护证据见总目录与来源映射。

#### Maintenance Note

Unknown — not supplied by the seed.

### Asset: OpenCV 拓展知识

**Path / Name：** `OpenCV知识重构/拓展知识/`

**Type：** Theory / Concept

**Status：** Canonical

#### Coverage

保存不影响主链成立的原理、特殊场景和低频 API，如局部阈值、LUT / Gamma、核分离性、Hough 参数空间等。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: OpenCV.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

分类责任由总目录和 `memory/USER_NOTE_STYLE.md` 的主干 / 强相关 / 拓展规则确认。

#### Maintenance Note

Unknown — not supplied by the seed.

### Asset: 作业1：保存视频

**Path / Name：** `OpenCV知识重构/作业1：保存视频/`

**Type：** Engineering / Project; API / Code

**Status：** Canonical

#### Coverage

相机采集、灰度录像、安全退出、帧率契约、注释重构和故障验收；在 RM 中属于图像入口后的调试记录支链。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: OpenCV.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

用户确认原任务完成并检验合格；重构主代码通过 C++17 / OpenCV 语法检查；来源映射位于任务目录。

#### Maintenance Note

Unknown — not supplied by the seed.

### Asset: 作业2：滑动调参

**Path / Name：** `OpenCV知识重构/作业2：滑动调参/`

**Type：** Engineering / Project; API / Code

**Status：** Canonical

#### Coverage

用 Trackbar 探索亮度、对比度和二值化阈值，保持原图不累计修改并保存参数；属于参数探索与可视化调试层。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: OpenCV.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

用户确认原任务完成并检验合格；重构主代码通过语法检查；任务内有来源映射。

#### Maintenance Note

Unknown — not supplied by the seed.

### Asset: 作业3-1：九宫格提取与排序

**Path / Name：** `OpenCV知识重构/作业3-1：九宫格提取与排序/`

**Type：** Engineering / Project; API / Code

**Status：** Canonical

#### Coverage

保存 1.0 候选提取和 1.1 排序编号两条连续认知链；包含用户原创主文、完整代码、问题正文、补充知识和回归检查。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topics: OpenCV; C++.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

用户明确确认两阶段原任务检验合格；两份重构代码通过语法检查，人工矩形排序运行通过；来源和注释覆盖均有记录。

#### Maintenance Note

Unknown — not supplied by the seed.

### Asset: 作业3-2：绿色光源提取与质心定位

**Path / Name：** `OpenCV知识重构/作业3-2：绿色光源提取与质心定位/`

**Type：** Engineering / Project; API / Code

**Status：** Canonical

#### Coverage

通过通道、阈值、形态学、轮廓、几何筛选和 Moments 得到二维质心，并复盘参数巧合与职责边界。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: OpenCV.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

用户确认原任务 2.0 检验合格；重构代码通过语法检查；6 篇来源和图片有明确去向。

#### Maintenance Note

Unknown — not supplied by the seed.

### Asset: 作业3-3：棋盘映射与模块化裁判

**Path / Name：** `OpenCV知识重构/作业3-3：棋盘映射与模块化裁判/`

**Type：** Engineering / Project; System / Architecture

**Status：** Canonical

#### Coverage

将连续像素映射为离散棋盘状态，并重点解释 `.hpp/.cpp/main` 的模块职责、接口和防错；示例不是冒充的原源码。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topics: OpenCV; C++.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

用户确认原任务 3.0 检验合格；重建示例通过 C++17 / OpenCV 编译、链接和人工运行；来源映射明确原源码并不完整。

#### Maintenance Note

`OpenCV知识重构/作业3-3：棋盘映射与模块化裁判/示例代码/` 是依据笔记接口重建的教学骨架，不是已确认的历史原源码。

### Asset: OpenCV 来源与维护资产

**Path / Name：** `OpenCV知识重构/来源与维护/`；各任务的 `来源与维护/`

**Type：** Source / Legacy; Engineering / Project

**Status：** Canonical

#### Coverage

记录旧资料去向、技术纠正、用户原创身份、图片使用和注释覆盖；用于追溯，不作为教程正文。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: OpenCV.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

由当前知识重构执行体维护；变更历史见 `memory/REFACTOR_LOG.md`。

#### Maintenance Note

多数旧资料的具体作者身份未逐篇确认；只作为 Source provenance，不作为“用户能独立解释全部内容”的证据。

### Asset: OpenCV 旧资料

**Path / Name：** `RM_note/opencv学习/` 及各正式专题来源映射指向的旧文件

**Type：** Source / Legacy

**Status：** Source

#### Coverage

保存原始笔记、任务代码、注释、图片引用和学习轨迹。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: OpenCV; source pointers are maintained by formal-topic source maps.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

各专题来源映射确认具体文件；既有规则要求只读，不重写或迁移。

#### Maintenance Note

只读 Source 旧资料，不与正式正文混同；多数旧资料作者身份未逐篇确认。

## ROS2 Assets

### Asset: ROS 2 速查与基础主线

**Path / Name：** `ROS2知识重构/00：ROS 2 速查.md`；`ROS2知识重构/01～12`

**Type：** System / Architecture; Theory / Concept; API / Code

**Status：** Canonical

#### Coverage

从工作空间、构建、运行实体和通信分层，进入 RCLCPP、Executor、Topic / QoS、Service / Action / Parameter、接口、发现、多机、Launch、Component 与 RM 排查。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: ROS2.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

由 `RM_note/ROS2/ros2入门/` 18 篇重组；来源映射和 `memory/REFACTOR_LOG.md` 记录范围与关键纠正；基线为 Humble。

#### Maintenance Note

资产存在不等于用户无需速查或已独立掌握全部内容。

### Asset: 机器人运动学：坐标、变换与 TF2

**Path / Name：** `ROS2知识重构/机器人运动学/`

**Type：** Theory / Concept; API / Code; System / Architecture

**Status：** Canonical

#### Coverage

提供 frame、坐标轴、点 / 位姿 / 旋转、刚体变换、TF2 广播监听、时间缓存、RM 坐标树、可视化和完整转换链。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: ROS2.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

来源为 `RM_note/ROS2/机器人运动学/`；正式范围明确不含 DH、机械臂正逆运动学和雅可比；维护表记录两个空白源主题的补齐。

#### Maintenance Note

正式 TF2 资产的存在不证明用户已经完成真实 TF2 工程。

### Asset: 作业2：温度消息链路

**Path / Name：** `ROS2知识重构/作业2：温度消息链路/`

**Type：** Engineering / Project; API / Code

**Status：** Canonical

#### Coverage

从 Timer 单值发布和订阅转换，推进到自定义消息、Header、时效检查、日志、Launch 与分层排错；保留 Node / 回调 / 消息对象的完整疑问链。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topics: ROS2; C++.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

用户确认原作业完成并检验合格；36 篇来源全部映射，代码注释与疑问有覆盖检查；重构示例未在当前 ROS 2 环境重跑。

#### Maintenance Note

任务内容为 Canonical；总入口登记待维护。重构示例未在当前 ROS 2 环境重跑。

### Asset: ROS2 来源与维护资产

**Path / Name：** `ROS2知识重构/来源与维护/`；子专题的 `来源与维护/`

**Type：** Source / Legacy; Engineering / Project

**Status：** Canonical

#### Coverage

记录来源、图片、旧结论修正、范围边界和注释覆盖，提供可追溯链。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: ROS2.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

当前知识重构执行体维护；最新状态写入 `memory/PROJECT_STATE.md`、`memory/REFACTOR_LOG.md` 和 ROS2 Topic Decision。

#### Maintenance Note

多数旧资料作者身份未逐篇确认；来源记录不作为用户能独立解释全部内容的证据。

### Asset: ROS2 旧资料

**Path / Name：** `RM_note/ROS2/ros2入门/`、`RM_note/ROS2/机器人运动学/`、`RM_note/ROS2/第二次ROS作业/`

**Type：** Source / Legacy

**Status：** Source

#### Coverage

分别保存 18 篇入门材料、5 篇坐标 / TF2 材料和 36 篇第二次作业材料。

#### Responsibility

Unknown — not supplied by the seed.

#### Relations

Related topic: ROS2; source for the corresponding formal assets.

#### Overlap

Unknown — not supplied by the seed.

#### Source / Provenance

具体逐篇去向由三个来源映射确认；旧文件保持只读。

#### Maintenance Note

只读 Source 旧资料，不与正式正文混同；多数旧资料作者身份未逐篇确认。

---

# Asset Update Convention

发生以下事件时才建议更新 Index：

- 创建新的长期笔记；
- Working → Canonical；
- 原笔记被重要更新；
- 两份同职责资产 Merge；
- 一份资产 Superseded；
- 新增影响导航的重要关系。

不要因为普通聊天就更新。
