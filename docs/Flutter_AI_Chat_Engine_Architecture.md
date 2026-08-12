# Flutter AI Chat Engine Architecture

## Chat Engine Responsibilities

Chat Engine 是 AI 对话核心服务层。

负责：

- 消息管理
- Prompt 处理
- Model 调度
- Streaming 管理
- 错误恢复

## Message Model

```dart
class ChatMessage {

 String id;

 MessageRole role;

 List<MessageContent> contents;

 String model;

}
```

## Message Content

支持：

- Text
- Image
- Code
- File
- Audio

## Streaming Pipeline

```
AI Provider

 ↓

SSE/WebSocket

 ↓

StreamController

 ↓

Flutter State Management

 ↓

UI
```

目标体验：

类似 ChatGPT 的实时生成效果。
