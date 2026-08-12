# Flutter AI Agent Runtime Design

## Agent Runtime

负责规划、执行和反馈。

流程:

User -> Planner -> Tool -> Executor -> Model -> Response

核心模块:

- Planner
- Memory
- Tool Executor
- Reasoning Loop
