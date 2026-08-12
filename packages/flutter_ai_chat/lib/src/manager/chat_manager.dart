import '../request/chat_request.dart';
import '../response/chat_result.dart';

class ChatManager {
  Future<ChatResult> send(ChatRequest request) async {
    return ChatResult(
      text: '',
      completed: true,
    );
  }
}
