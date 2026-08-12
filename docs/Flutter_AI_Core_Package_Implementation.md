# Flutter AI Core Package Implementation

## Responsibilities

- AI model abstraction
- Message entities
- Stream contracts
- Exceptions
- Common utilities

## Core Interfaces

```dart
abstract class AIProvider {}

abstract class AIChatEngine {}
```

Core package must not depend on concrete providers.