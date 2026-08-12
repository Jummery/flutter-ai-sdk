# Flutter AI Provider Adapter Design

## Adapter Pattern

Each model provider implements a unified adapter.

```
AIProvider
   |
   +-- OpenAIAdapter
   +-- DeepSeekAdapter
   +-- GeminiAdapter
```

Benefits:

- Provider isolation
- Unified streaming
- Easy replacement
- Multi model support
