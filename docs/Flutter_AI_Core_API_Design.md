# Flutter AI Core API Design

## Overview

定义 Flutter AI SDK 核心调用接口，屏蔽不同模型供应商差异。

## Core API

```dart
abstract class AIClient {
  Stream<AIResponse> chat(ChatRequest request);
  Future<List<AIModel>> models();
}
```

## Design Goals

- 统一模型调用
- 支持流式输出
- 支持多 Provider
- 支持 Agent 扩展
