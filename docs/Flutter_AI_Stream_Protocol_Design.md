# Flutter AI Stream Protocol Design

## Streaming

采用 Stream 抽象统一处理 AI 输出。

支持:

- SSE
- WebSocket
- HTTP Chunk

Pipeline:

Provider -> Stream Parser -> Chat Engine -> UI
