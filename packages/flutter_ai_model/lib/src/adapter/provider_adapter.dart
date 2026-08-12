abstract class ProviderAdapter {
  String get providerId;

  Future<String> chat(List<String> messages);
}
