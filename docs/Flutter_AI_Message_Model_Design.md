# Flutter AI Message Model Design

## Message Structure

```dart
class ChatMessage {
 String id;
 MessageRole role;
 List<MessageContent> contents;
 DateTime createdAt;
}
```

## Content Types

- Text
- Image
- File
- Code
- Tool Result
