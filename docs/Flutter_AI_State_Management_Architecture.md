# Flutter AI State Management Architecture

## Overview

AI Chat 状态管理负责消息流、会话状态、模型状态和 Agent 状态。

推荐：

- Riverpod
- Bloc
- Cubit

## State

```
ChatState
 ├── messages
 ├── currentModel
 ├── streaming
 └── error
```

## Flow

UI -> Controller -> Repository -> AI Engine
