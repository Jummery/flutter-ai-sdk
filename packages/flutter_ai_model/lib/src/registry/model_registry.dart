import '../model/model_definition.dart';

class ModelRegistry {
  final Map<String, ModelDefinition> _models = {};

  void register(ModelDefinition model) {
    _models[model.id] = model;
  }

  ModelDefinition? find(String id) {
    return _models[id];
  }
}
