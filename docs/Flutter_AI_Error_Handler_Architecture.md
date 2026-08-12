# Flutter AI Error Handler Architecture

## Error Model

统一异常：

- NetworkError
- ModelError
- StreamError
- ToolError
- AuthError

## Strategy

错误分类、日志记录、用户提示分离。
