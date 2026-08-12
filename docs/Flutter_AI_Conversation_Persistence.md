# Flutter AI Conversation Persistence Design

## Overview

Conversation persistence manages ChatGPT-style sessions.

## Data Model

Conversation contains:

- id
- title
- model
- createdAt
- updatedAt

## Lifecycle

Create -> Active -> Archived -> Deleted

## Integration

flutter_ai_chat uses StorageRepository for persistence.
