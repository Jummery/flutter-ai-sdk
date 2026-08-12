# Flutter AI Memory Architecture

## Purpose

为 AI Assistant 提供长期上下文能力。

## Layers

Short Memory:
- Current conversation

Long Memory:
- User preferences
- Knowledge records
- Vector embeddings

## Architecture

Memory Manager -> Storage -> Retrieval -> Prompt Context

支持本地数据库和向量数据库扩展。
