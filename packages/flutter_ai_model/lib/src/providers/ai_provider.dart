abstract class AIProvider {
  String get id;

  String get name;

  Future<String> chat(List<String> messages);
}
