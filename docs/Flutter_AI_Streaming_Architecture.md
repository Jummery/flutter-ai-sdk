# Flutter AI Streaming Architecture

## Goal

实现类似 ChatGPT 的实时输出体验。

## Pipeline

SSE/WebSocket

-> Event Parser

-> Stream Controller

-> State Management

-> UI Rendering

## Features

- Token streaming
- Cancel generation
- Retry
- Network reconnect
- Partial message update

## Recommended

使用 Stream + Bloc/Riverpod 管理流式状态。
