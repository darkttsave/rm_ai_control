# Protocol Maintainer Checkpoint — v2.3

> 用途：如果当前 Maintainer 对话未来需要迁移，新 Maintainer 用本文件 + v2.3 Frozen Package 恢复维护状态。

---

# Current Version

`RM_AI_Development_Protocol_v2.3_Frozen`

定位：

> **v2.2 + Knowledge Learning & Note Lifecycle Patch**

v2.3 不改变 P0/P1/P2、Supervisor/Specialist/Work、common Context/Handoff 的基本语义。

---

# Current Maintainer Role

**Protocol Maintainer / Methodology Supervisor**

负责：

- 接收真实 RM 项目使用 friction；
- 判断属于文档可用性 Bug、已有规则缺失还是下一版本需求；
- 小步维护协议；
- 防止协议因为“想得更完整”无证据膨胀。

不默认承担具体 RM 项目的 Main Supervisor。

---

# v2.3 Frozen Decisions

1. Knowledge Layer 服务真实项目，不追求证明“完全掌握”。
2. 复用 Engineering Control Ladder 判断当前 Knowledge Sufficiency。
3. Learning State = 人的长期学习 / 工程控制状态。
4. Knowledge Asset Index = 知识库资产职责与关系。
5. Learning Thread State = 普通知识对话跨会话恢复点，只按事件物化。
6. 正式 Project Specialist 换对话优先使用 `SPECIALIST_CHECKPOINT`，不重复维护 Thread State。
7. Learning State 最终解释权属于用户；AI 只提出有证据的 Patch。
8. 初始化采用 Overview + Relevant Detail，禁止无限增长。
9. 用户填写自然语言 Learning Request，不操作 Subject / Depth Mode。
10. AI 主动 Intent Routing：小变化静默，明显变化短提示，大范围扩展才询问。
11. Explanation 与 Note Output 完全解耦。
12. Note 格式规则只属于 Note Layer。
13. AI 可以克制提示形成笔记，但不自动制造正式知识资产。
14. 同主题不同职责资产允许共存；同职责重复才考虑 Update / Merge / Supersede。
15. Legacy Reconstruction 是 Note Operation，保留来源、问题链、原创内容和历史验证状态。
16. Knowledge Layer 复用 common / Specialist / Debug / Work，不另建第二套 Framework。
17. 第一次启用只创建最小 Learning State / Asset Index，旧知识库增量登记。
18. 普通十分钟答疑不产生状态维护负担。

---

# Main v2.3 Files

入口：

- `START_HERE.md`
- `USAGE_GUIDE.md` §17
- `PLAYBOOK_INDEX.md`

Knowledge：

- `playbooks/knowledge/KNOWLEDGE_LEARNING_AND_NOTES.md`
- `playbooks/knowledge/explanation/EXPLANATION_CORE.md`
- `playbooks/knowledge/explanation/EXPLANATION_PROFILES.md`
- `playbooks/knowledge/notes/NOTE_CORE.md`
- `playbooks/knowledge/notes/NOTE_STYLE_STANDARD.md`
- `playbooks/knowledge/notes/NOTE_PROFILES_AND_OPERATIONS.md`

Templates：

- `LEARNING_REQUEST_TEMPLATE.md`
- `LEARNING_STATE_TEMPLATE.md`
- `KNOWLEDGE_ASSET_INDEX_TEMPLATE.md`
- `LEARNING_THREAD_STATE_TEMPLATE.md`
- `KNOWLEDGE_PROMPT_CARDS.md`

设计与验证：

- `archive/v2.3_Knowledge_Layer_Design_Spec.md`
- `archive/Design_Evolution_v2.2_to_v2.3.md`
- `archive/v2.3_Validation_Report.md`

---

# Source Assets Used for v2.3

本次迁移依据旧来源：

- `讲解skill_v0.1.md`
- `讲解skill_v1.md`
- `讲解skill迭代V2_代码讲解扩展.md`
- `TECHNICAL_NOTE_RECONSTRUCTION_SKILL_v1.md`
- `knowledge-note-refactor`

旧 Skill 不再作为正式运行规则；它们是历史来源资产。

---

# Current Verification Boundary

已完成：

- 文件结构检查；
- Markdown fence 检查；
- 新增协议路径引用检查；
- 典型学习 / 交接 / 笔记场景 walkthrough；
- v2.2 职责重复检查。

尚未完成：

> **真实 RM 项目长期使用验证。**

不能因为文档逻辑自洽就声称真实使用已经稳定。

---

# Next Maintainer Action

默认不是继续设计 v2.4。

下一步：

```text
在真实 RM / 制导镖项目使用 v2.3
→ 记录具体 Protocol Friction
→ 判断是 Bug / 缺规则 / 真实新需求
→ 小步修复
```

优先观察：

- Learning State 是否维护过重；
- Overview + Relevant Detail 是否够用；
- AI 模式变化提醒是否太频繁；
- Knowledge Sufficiency Check 是否自然；
- Asset Index 是否真正减少重复笔记；
- Specialist Checkpoint + Knowledge Payload 是否够用；
- Note Output 是否仍然过长 / 过度扩展。

如果没有真实 friction：

> 不继续扩协议。

---

# Recoverability Test

新 Maintainer 如果只获得：

```text
v2.3 Frozen Package
+
本 Checkpoint
+
真实项目最新 friction / evidence
```

应该能够继续协议维护，而不需要重新阅读本次完整聊天历史。
