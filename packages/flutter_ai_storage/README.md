# flutter_ai_storage

Persistent storage layer for the Flutter AI SDK.

## Stack

- Drift for typed SQLite access
- Conversation and message persistence
- DAO layer for database operations
- `StorageRepository` as the application-facing facade

## Code generation

From this package directory run:

```bash
dart run build_runner build --delete-conflicting-outputs
```

The generated `lib/src/database/ai_database.g.dart` file is intentionally not committed as part of the source skeleton.

## Architecture

```text
flutter_ai_chat
       |
       v
StorageRepository
       |
  +----+----+
  |         |
Conversation Message
   DAO       DAO
  |           |
  +-----+-----+
        |
    AIDatabase
        |
   SQLite / Drift
```
