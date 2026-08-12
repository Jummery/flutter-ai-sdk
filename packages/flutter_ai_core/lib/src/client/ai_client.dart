import '../config/ai_config.dart';
import '../message/chat_message.dart';

class AIClient {
  final AIConfig config;

  AIClient({required this.config});

  Stream<String> chat(List<ChatMessage> messages) async* {
    yield 'AI response placeholder';
  }
}
