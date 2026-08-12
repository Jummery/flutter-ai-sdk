# Flutter AI Memory API Design

## Memory Layer

支持短期上下文和长期记忆。

接口:

```dart
abstract class MemoryStore {
 Future save(Memory memory);
 Future<List<Memory>> search(String query);
}
```

实现:

- Local Database
- Vector Database
- Cloud Memory
