# Flutter AI API Gateway Architecture

## Purpose

统一管理多个 AI Provider。

## Architecture

Flutter Client

-> AI Gateway

-> Provider Adapter

-> Model Service

## Responsibilities

- API Key Security
- Model Routing
- Token Billing
- Rate Limit
- Logging

避免客户端直接暴露模型密钥。
