# Flutter AI Storage Architecture

## Overview

Flutter AI Storage provides persistence capability for AI conversations, messages, model metadata and local AI state.

## Architecture

```
flutter_ai_chat
      |
      v
StorageRepository
      |
      v
Drift Database
      |
      +-- conversations
      +-- messages
```

## Responsibilities

- Conversation persistence
- Message history management
- Local search foundation
- Token usage storage
- Offline conversation access

## Package Boundary

Storage layer does not depend on UI. It exposes repository APIs consumed by chat runtime.
