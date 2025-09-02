---
mode: agent
---

Generate global exception handling for a Spring Boot application with the following specifications:
- Use `@ControllerAdvice` annotation.
- Create custom exception classes for specific error cases.
- Implement `@ExceptionHandler` methods for common exceptions (e.g., `EntityNotFoundException`, `IllegalArgumentException`).
- Return standardized error response objects with error codes, messages, and timestamps.
- Use `@ResponseStatus` to map exceptions to HTTP status codes.
- Log exceptions appropriately.
