class AIResponse {
  final String content;
  final bool finished;

  const AIResponse({
    required this.content,
    this.finished = true,
  });
}
