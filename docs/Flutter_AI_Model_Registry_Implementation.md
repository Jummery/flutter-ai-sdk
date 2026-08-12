# Flutter AI Model Registry Implementation

## Purpose

Manage multiple AI providers.

Supported:

- OpenAI
- Claude
- Gemini
- DeepSeek
- Qwen
- Custom Provider

Example:

```dart
registry.register(DeepSeekModel());
registry.switchModel('deepseek-v3');
```
