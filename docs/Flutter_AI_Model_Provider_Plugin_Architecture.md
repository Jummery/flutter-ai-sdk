# Flutter AI Model Provider Plugin Architecture

## Goal

Provide unified access to different AI providers.

Supported providers:

- OpenAI
- Claude
- Gemini
- DeepSeek
- Qwen
- Custom Provider

## Interface

```dart
abstract class AIProvider {
  Stream<AIResponse> chat(AIRequest request);
}
```

Providers are registered through ModelRegistry.
