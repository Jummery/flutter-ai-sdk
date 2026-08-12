# Flutter AI SDK Dependency Architecture

## Overview

Define package dependency boundaries for enterprise Flutter AI SDK.

## Package Graph

```
flutter_ai_ui
      |
flutter_ai_chat
      |
flutter_ai_core
      |
flutter_ai_model
      |
network / storage
```

## Principles

- Core package has no UI dependency.
- Model providers are plugin based.
- Storage and network are replaceable.
- Public APIs are stable.
