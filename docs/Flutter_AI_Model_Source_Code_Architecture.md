# Flutter AI Model Source Code Architecture

## Model Layer

```text
ModelRegistry
      |
AIModel
      |
Provider
```

## Providers

- OpenAI
- Claude
- Gemini
- DeepSeek
- Custom Provider

All providers implement unified interfaces.
