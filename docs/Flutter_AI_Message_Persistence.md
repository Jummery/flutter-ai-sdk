# Flutter AI Message Persistence Design

## Overview

Message persistence stores user and assistant messages.

## Message Fields

- id
- conversationId
- role
- content
- model
- token usage
- timestamp

## Flow

User message saved first.
Assistant streaming result appended during generation.
Final response persisted after completion.
