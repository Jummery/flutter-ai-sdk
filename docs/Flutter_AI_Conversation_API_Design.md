# Flutter AI Conversation API Design

## Conversation

管理用户会话生命周期。

```dart
class Conversation {
 String id;
 String title;
 String model;
}
```

能力:

- 创建会话
- 删除会话
- 历史加载
- 上下文恢复
