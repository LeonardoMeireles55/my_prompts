---
mode: agent
---
Add Swagger/OpenAPI annotations to Java REST controllers.

Tasks:
- Annotate controllers with @Tag and @Operation(summary, description)
- Add @ApiResponses with meaningful HTTP codes and descriptions
- Document request bodies (@RequestBody) and response schemas
- Add schema annotations to DTOs (@Schema, @Schema(description, example))
- Ensure pagination, sorting, and filtering parameters are documented (@Parameter)
- Mark deprecated endpoints with @Deprecated and @Hidden where appropriate
- Validate security schemes references (e.g., bearerAuth) in annotations

Output: Updated annotated code and a concise summary of changes.
