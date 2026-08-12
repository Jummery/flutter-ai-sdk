# Flutter AI Tool API Design

## Tool Calling

支持模型调用外部能力。

```dart
abstract class AITool {
 String get name;
 Future execute(Map<String,dynamic> args);
}
```

Examples:

- Search
- Database
- BLE
- IoT
