# Knowledge Prompt Cards

> 给用户直接复制使用。
>
> 不要求用户记住内部 Subject / Depth / Operation 名称。

---

# Card 0 — 第一次建立 Knowledge Bootstrap

> 只在第一次启用 v2.3 或长期状态完全缺失时使用。
>
> 不要求一次盘点所有知识和所有旧笔记。

## A. 建立最小 Learning State

### Inputs

用户提供：

- 自己确认过的技术背景；
- 当前 / 近期项目会涉及的知识领域；
- 已知的重要知识断点；
- 能证明当前能力的真实项目 / 调试 / 学习经历。

### Prompt

```text
请按照 LEARNING_STATE_TEMPLATE.md，基于我明确提供的事实起草一个“最小可用 Learning State”。

要求：
1. 不试图盘点我一生学过的所有东西；
2. 优先记录近期项目真正会复用的领域；
3. 区分“接触过”与“能够支持真实工程行为”；
4. 不用掌握度百分比；
5. 不因为存在笔记就判断我已经掌握；
6. 不能由材料支持的状态写成 Unknown / 待我确认；
7. 输出后列出需要我确认或修正的条目。

这只是 AI 起草，最终状态以我的确认版本为准。
```

## B. 建立最小 Knowledge Asset Index

### Inputs

用户提供：

- 当前 / 近期真正相关的知识目录、文件列表或已有笔记；
- 已知的核心主干笔记；
- 如果已有目录 / 索引，优先提供它。

### Prompt

```text
请按照 KNOWLEDGE_ASSET_INDEX_TEMPLATE.md 建立“最小可用 Knowledge Asset Index”。

要求：
1. 不要求一次扫描 / 登记整个旧知识库；
2. 只登记当前项目或近期学习会实际复用的重要资产；
3. Coverage 写清楚“它回答什么”，不要只抄标题；
4. 区分 Source / Working / Canonical / Superseded；
5. 主题相同但职责不同的资产允许共存；
6. 不确定的关系显式标记，不要猜；
7. 后续采用增量登记。
```

## Output

- 最小 `Learning State`；
- 最小 `Knowledge Asset Index`。

后续新学习对话只带 Overview + Relevant Detail。

---

# Card 1 — 新开一个知识学习对话

## Trigger

你遇到一个需要真正理解的知识问题，准备新开对话。

## Inputs

提供：

1. 当前 Knowledge Playbook / Entry（如果新对话无法访问项目协议）；
2. Learning State 的 Overview + 本轮相关 Detail；
3. Knowledge Asset Index 的 Overview + 本轮相关 Detail；
4. 已填写的 `LEARNING_REQUEST_TEMPLATE.md`；
5. 本轮代码 / 文档 / 论文 / 截图等材料；
6. 如果这是预计会跨多轮 / 多对话的长期学习，且当前 Conversation 无法访问项目协议，可按需再提供 `common/Context_Health.md`；真正准备交接时再使用 `common/Handoff_Protocol.md`。

## Prompt

```text
这是一次新的技术学习对话。

请先读取我提供的 Knowledge Playbook、Learning State、Knowledge Asset Index 和 Learning Request。

要求：
1. 以 Learning Request 的真实目标为本轮主线；
2. 利用 Learning State 中已经可靠掌握或接触过的内容建立联系，但不要把“接触过 / 有笔记”直接当成“已经掌握”；
3. 根据我的问题和追问主动调整讲解对象与深度，不要求我手动选择学习模式；
4. 小范围讲法调整直接进行；如果学习方向明显变化，用很短的说明告诉我为什么以及接下来大致会进入什么；
5. 如果继续深入会显著扩大知识范围或时间成本，先说明当前任务真正需要哪一层，再让我决定是否展开；
6. 当前理解达到支持真实项目下一步所需的程度后，可以收住，不为了课程完整继续扩展；
7. 不要默认生成正式笔记。只有形成明显可复用知识主线时，可以简短提醒我是否值得保存；
8. 当我准备回到项目时，优先根据对话和当前代码应用判断理解是否已经足够支撑下一步；只有证据不足且会影响开发 / 调试时，再补少量实际检查问题，不要把每次学习变成固定测验。
```

## Output

正常学习对话。

不默认生成任何状态文件。

---

# Card 2 — 同一个主题换对话继续

> 适用于普通 Knowledge Conversation。
>
> 如果当前对话是正式项目 Specialist，优先按 `Specialist_Entry.md` 生成 `SPECIALIST_CHECKPOINT.md`，并把 Learning Thread 的认知 Payload 写入其中，不额外生成第二份 Thread State。

## Trigger

当前对话太长、需要换聊天，或者准备暂停很久后再继续。

## Inputs

旧对话先按 `LEARNING_THREAD_STATE_TEMPLATE.md` 生成 `LEARNING_THREAD_STATE.md`。

新对话提供：

- Knowledge Playbook；
- Relevant Learning State；
- Relevant Asset Index；
- `LEARNING_THREAD_STATE.md`；
- 新增材料；
- 简短 continuation intent。

## 生成 Thread State 的 Prompt

```text
当前知识学习还没有结束，但我准备换对话 / 暂停。

请按照 LEARNING_THREAD_STATE_TEMPLATE.md 生成 LEARNING_THREAD_STATE.md。

只保留下一轮继续学习真正需要恢复的认知状态：
- 当前学习目标；
- 已确认理解；
- 会影响后续的重要纠错；
- 当前仍未解决的 Gap；
- 相关知识资产；
- 当前材料 / 来源；
- 下一步方向；
- 缺失后会改变下一步判断的 Carry Forward。

不要总结完整聊天，不要记录普通问答流水账。
```

## 新对话 Prompt

```text
这是上一轮同一知识主题的继续。

LEARNING_THREAD_STATE.md 是上一轮的最小恢复点。
请以其中 Confirmed Understanding 为起点，不要重新从头讲已经明确的内容；优先处理 Current Gaps 和 Next Direction。

如果 Thread State 与当前 Learning State / 新证据冲突，请指出冲突，不要凭旧摘要强行继续。
```

---

# Card 3 — AI 建议更新 Learning State

## Trigger

出现真正长期认知变化，例如：

- 重要 Gap 被解决；
- 实际调试证明已经具备新的控制能力；
- 原以为掌握但暴露重大断点。

## Prompt

```text
请不要直接宣布我的长期学习状态已经改变。

如果你认为这轮产生了值得长期记录的认知变化，请按照 LEARNING_STATE_TEMPLATE.md 的 Patch Convention，只输出最小 Patch 建议，并说明依据。

重点记录：
- 新增 / 修正的 Known；
- 新增 / 移除的 Gap；
- 是否真的改变了我可支持的 Engineering Control；
- 支持判断的 Evidence / Experience。

“刚讲过”本身不是升级依据。
```

## Next Consumer

用户确认后更新长期 `Learning State`。

---

# Card 4 — 把已经讲清楚的内容整理成笔记

## Trigger

用户明确想保存当前学习成果，或者接受了 AI 的轻量提示。

## Inputs

- 当前有效理解；
- Relevant Asset Index；
- 必要来源材料；
- Note 规则。

## Prompt

```text
请把当前已经讲清楚的内容整理成长期知识笔记。

先检查 Knowledge Asset Index，判断更适合：
- 新建独立资产；
- 更新已有资产；
- 合并同职责资产；
- 作为 Legacy Reconstruction 处理。

不要按聊天顺序总结。
请按知识依赖重新组织，并遵守 NOTE_CORE.md 和 NOTE_STYLE_STANDARD.md。

如果会修改、合并、替代已有 Canonical Asset，请先简短说明判断、影响和建议，不要自行破坏现有知识资产。

如果只是创建新的独立笔记，可直接生成。
```

## Next Consumer

生成 / 更新后的 Note，以及必要的 Asset Index Patch。

---

# Card 5 — 更新 Knowledge Asset Index

## Trigger

正式知识资产发生变化。

## Prompt

```text
请根据本次实际发生的知识资产变化，给出 Knowledge Asset Index 的最小更新建议。

只记录真实变化：
- 新资产；
- 重要 Update；
- Canonical / Superseded 状态变化；
- Merge；
- 新的关键关系。

不要因为普通聊天或临时草稿更新整个 Index。
```
