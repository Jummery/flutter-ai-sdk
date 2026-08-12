# Flutter AI Network Layer Architecture

## Network Stack

```
API Client
   |
SSE/WebSocket
   |
AI Gateway
   |
Model Provider
```

## Responsibilities

- 请求管理
- 流式解析
- 重试机制
- Token统计
