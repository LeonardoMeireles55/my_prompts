---
mode: agent
---

Generate a Spring Boot REST controller with the following specifications:
- Use `@RestController` annotation.
- Base path should be `/api/resource-name`.
- Include standard CRUD operations: GET, POST, PUT, DELETE.
- Use `@Autowired` for service injection.
- Return appropriate HTTP status codes (200, 201, 204, 404).
- Use `@RequestBody` for POST and PUT operations.
- Use `@PathVariable` for ID-based operations.
- Add basic exception handling with `@ExceptionHandler`.
