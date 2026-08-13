import 'ai_tool.dart';

/// Registry used by the agent runtime to resolve tool calls by name.
class ToolRegistry {
  final Map<String, AITool> _tools = <String, AITool>{};

  void register(AITool tool) {
    if (_tools.containsKey(tool.name)) {
      throw StateError('Tool already registered: ${tool.name}');
    }
    _tools[tool.name] = tool;
  }

  void unregister(String name) {
    _tools.remove(name);
  }

  AITool? get(String name) => _tools[name];

  List<AITool> get tools => List.unmodifiable(_tools.values);

  bool contains(String name) => _tools.containsKey(name);
}
