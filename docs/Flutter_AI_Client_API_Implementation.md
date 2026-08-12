# Flutter AI Client API Implementation

## Client Design

AIClient is the unified entry point.

```dart
final client = AIClient(config: config);
```

Responsibilities:

- Model selection
- Request lifecycle
- Stream management
- Authentication

## API

```dart
Stream<AIResponse> send(ChatRequest request)
```
