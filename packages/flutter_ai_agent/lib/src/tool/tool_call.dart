/// A normalized tool call emitted by an LLM.
class ToolCall {
  const ToolCall({
    required this.id,
    required this.name,
    required this.arguments,
  });

  final String id;
  final String name;
  final Map<String, dynamic> arguments;
}

/// Result returned to the model after a tool has executed.
class ToolResult {
  const ToolResult({
    required this.callId,
    required this.name,
    this.output,
    this.error,
  });

  final String callId;
  final String name;
  final dynamic output;
  final Object? error;

  bool get isSuccess => error == null;
}
