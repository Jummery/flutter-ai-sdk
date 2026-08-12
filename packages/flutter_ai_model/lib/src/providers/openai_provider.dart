import 'ai_provider.dart';

class OpenAIProvider implements AIProvider {
  @override
  String get id => 'openai';

  @override
  String get name => 'OpenAI';

  @override
  Future<String> chat(List<String> messages) async {
    return '';
  }
}
