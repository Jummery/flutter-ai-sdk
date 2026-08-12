# Flutter AI Core Package API Design

## Overview

`flutter_ai_core` is the foundation package of the Flutter AI SDK.

Responsibilities:

- Client lifecycle management
- Model abstraction
- Request/response definition
- Stream processing
- Error handling

## Core API

```dart
final client = AIClient(config: config);

client.chat.send('Hello');
```

## Layering

Application → AI Client → Provider → Model Service
