enum MessageRole {
  system,
  user,
  assistant,
}

class ChatMessage {
  final MessageRole role;
  final String content;

  const ChatMessage({
    required this.role,
    required this.content,
  });
}
