# Flutter AI Assistant Architecture

## Overview

Flutter AI Assistant 是基于 Flutter 构建的企业级 AI 对话助手架构，目标是提供类似 ChatGPT 的多模型智能交互能力。

核心能力：

- 多模型切换
- 流式响应
- 会话管理
- Markdown 渲染
- Agent 扩展
- Tool Calling
- Memory 系统

---

## High Level Architecture

```
Flutter Client

    |
    |
AI Chat SDK

    |

AI Gateway

    |

Model Providers

GPT / Claude / Gemini / DeepSeek / Qwen / Local LLM
```

---

## Core Modules

```
features/

 chat/
 model/
 streaming/
 memory/
 tools/
 storage/
```

---

## Design Goals

1. Model Provider 无关
2. 支持企业级扩展
3. 支持 Agent 演进
4. 支持私有化部署

