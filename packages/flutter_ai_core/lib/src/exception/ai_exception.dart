class AIException implements Exception {
  final String message;

  const AIException(this.message);

  @override
  String toString() => message;
}
