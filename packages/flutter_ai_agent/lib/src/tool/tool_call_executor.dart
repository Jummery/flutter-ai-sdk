import 'ai_tool.dart';
import 'tool_call.dart';
import 'tool_registry.dart';

/// Executes normalized model tool calls against the registered capabilities.
class ToolCallExecutor {
  const ToolCallExecutor(this.registry);

  final ToolRegistry registry;

  Future<ToolResult> execute(ToolCall call) async {
    final tool = registry.get(call.name);
    if (tool == null) {
      return ToolResult(
        callId: call.id,
        name: call.name,
        error: StateError('Tool not found: ${call.name}'),
      );
    }

    try {
      final output = await tool.execute(call.arguments);
      return ToolResult(
        callId: call.id,
        name: call.name,
        output: output,
      );
    } catch (error) {
      return ToolResult(
        callId: call.id,
        name: call.name,
        error: error,
      );
    }
  }

  Future<List<ToolResult>> executeAll(List<ToolCall> calls) async {
    return Future.wait(calls.map(execute));
  }
}
