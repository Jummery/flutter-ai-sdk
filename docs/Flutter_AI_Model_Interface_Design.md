# Flutter AI Model Interface Design

## Model Abstraction

所有模型实现统一接口。

```dart
abstract class AIModel {
 String get id;
 String get name;
 Stream<AIResponse> request(List<Message> messages);
}
```

## Provider

支持:

- OpenAI
- Claude
- Gemini
- DeepSeek
- Qwen
- Local LLM
