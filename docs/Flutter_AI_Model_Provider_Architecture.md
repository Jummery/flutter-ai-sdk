# Flutter AI Model Provider Architecture

## Overview

通过统一 Model Provider 抽象，实现 GPT、Claude、Gemini、DeepSeek、Qwen 等模型自由切换。

## Model Abstraction

```dart
abstract class AIModel {

 String get id;

 String get name;

 Stream<AIResponse> chat(
   List<ChatMessage> messages
 );
}
```

## Model Registry

模型注册中心负责管理所有 AI Provider。

```
ModelRegistry

 |
 +-- GPT Model
 +-- Claude Model
 +-- Gemini Model
 +-- DeepSeek Model
```

## Switching

示例：

```dart
AIManager.switchModel("deepseek-v3");
```

业务层无需感知具体模型实现。

## Benefits

- 降低模型耦合
- 支持动态切换
- 支持成本优化
- 支持私有模型接入
