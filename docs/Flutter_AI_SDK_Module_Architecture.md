# Flutter AI SDK Module Architecture

## Overview

Flutter AI SDK 采用模块化设计，支持 Core、Chat、Model、Agent、Storage、UI 分层。

## Package Structure

```
packages/
├── flutter_ai_core
├── flutter_ai_chat
├── flutter_ai_model
├── flutter_ai_agent
├── flutter_ai_storage
└── flutter_ai_ui
```

## Design Principles

- 高内聚低耦合
- Provider 可插拔
- 支持企业级扩展
