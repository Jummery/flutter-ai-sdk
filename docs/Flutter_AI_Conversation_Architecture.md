# Flutter AI Conversation Architecture

## Overview

负责 ChatGPT 类应用的会话生命周期管理。

## Core Model

Conversation:
- id
- title
- modelId
- createdAt

Message:
- id
- role
- content
- tokenUsage
- timestamp

## Flow

User Input -> Chat Engine -> Model Provider -> Stream Response -> Storage

## Storage

支持本地 Drift 数据库存储，实现历史记录、搜索和同步。
