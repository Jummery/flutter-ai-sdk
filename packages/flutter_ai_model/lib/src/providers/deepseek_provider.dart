import 'ai_provider.dart';

class DeepSeekProvider implements AIProvider {
  @override
  String get id => 'deepseek';

  @override
  String get name => 'DeepSeek';

  @override
  Future<String> chat(List<String> messages) async {
    return '';
  }
}
