# Flutter AI Model Registry Implementation

## Purpose

Manage dynamic AI model providers.

Example:

```dart
registry.register(OpenAIProvider());
registry.register(DeepSeekProvider());
registry.register(GeminiProvider());
```

Features:

- Provider discovery
- Capability query
- Runtime switching
- Custom provider extension
