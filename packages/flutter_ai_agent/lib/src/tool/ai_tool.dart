/// A capability that an agent can invoke.
abstract interface class AITool {
  String get name;

  String get description;

  /// JSON-schema-like description of accepted arguments.
  Map<String, dynamic> get inputSchema;

  Future<dynamic> execute(Map<String, dynamic> arguments);
}
