# Flutter AI Assistant SDK Architecture

## Overview

Flutter AI Assistant SDK is an enterprise AI capability framework for Flutter applications.

Goals:

- Multi LLM Provider support
- Streaming response
- Agent Runtime
- Tool Calling
- Memory System
- IoT Device Agent

## Architecture

```
Flutter Application
        |
        v
Flutter AI SDK
        |
        v
AI Runtime
        |
        v
Provider Layer
        |
        v
LLM Service / Local Model
```

## Package Structure

```
packages/

flutter_ai_core
flutter_ai_chat
flutter_ai_agent
flutter_ai_memory
flutter_ai_tools
flutter_ai_network
flutter_ai_openai
flutter_ai_gemini
```

## Core Components

### AI Client

Responsible for:

- Request lifecycle management
- Provider management
- Error handling
- Streaming coordination

### Provider Layer

Using Adapter Pattern:

```
AIProvider
    |
    +-- OpenAIProvider
    +-- GeminiProvider
    +-- ClaudeProvider
    +-- LocalLLMProvider
```

### Agent Runtime

Support:

- Planner
- Executor
- Tool Calling
- Memory
- Multi Agent Collaboration

### Memory System

Support:

- Conversation memory
- Long term memory
- Vector retrieval
- Context building

### Device AI

Future support:

- BLE Agent
- MQTT Agent
- Voice Agent
- Camera Agent

## Enterprise Features

- Multi Tenant
- Permission System
- Analytics
- Token Cost Tracking
- Security Gateway
- Private Deployment

## Development Direction

Flutter AI Assistant SDK aims to become an AI Runtime layer for Flutter ecosystem applications.
