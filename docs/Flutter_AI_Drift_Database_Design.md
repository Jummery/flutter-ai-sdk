# Flutter AI Drift Database Design

## Tables

### conversations

Stores AI chat sessions.

Fields:

- id
- title
- model
- createdAt
- updatedAt

### messages

Stores conversation messages.

Fields:

- id
- conversationId
- role
- content
- model
- token
- createdAt

## Data Flow

```
ChatManager
    |
StorageRepository
    |
DAO
    |
Drift Database
```

## Goals

- Type-safe database access
- Offline first conversation storage
- Future synchronization support
