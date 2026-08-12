enum AIStreamEventType {
  start,
  delta,
  complete,
  error,
}

class AIStreamEvent {
  final AIStreamEventType type;
  final String? data;

  const AIStreamEvent({
    required this.type,
    this.data,
  });
}
