import '../model/ai_model.dart';

class ModelRegistry {
  final Map<String, AIModel> _models = {};

  void register(AIModel model) {
    _models[model.id] = model;
  }

  AIModel? get(String id) => _models[id];

  List<AIModel> get models => _models.values.toList();
}
