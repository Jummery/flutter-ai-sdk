# Flutter AI Client Interface Specification

## AIClient

Unified entry point for application developers.

```dart
abstract class AIClient {
  Stream<AIResponse> send(ChatRequest request);
  void switchModel(String modelId);
}
```

Responsibilities:

- Request management
- Model selection
- Streaming lifecycle
- Error handling
