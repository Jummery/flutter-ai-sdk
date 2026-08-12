import 'ai_provider.dart';

class GeminiProvider implements AIProvider {
  @override
  String get id => 'gemini';

  @override
  String get name => 'Gemini';

  @override
  Future<String> chat(List<String> messages) async {
    return '';
  }
}
