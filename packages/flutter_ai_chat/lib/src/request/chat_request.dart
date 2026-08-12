import 'package:flutter_ai_core/flutter_ai_core.dart';

class ChatRequest {
  final List<ChatMessage> messages;
  final String model;

  ChatRequest({
    required this.messages,
    required this.model,
  });
}
