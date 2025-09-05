---
mode: agent
---
Add Swagger (OpenAPI) decorators to NestJS controllers.

Tasks:
- Add @ApiTags at controller level
- Add @ApiOperation(summary, description) for each route
- Add @ApiResponse / @ApiOkResponse / @ApiCreatedResponse with status codes and DTO refs
- Document error responses (@ApiBadRequestResponse, @ApiUnauthorizedResponse, etc.)
- Use @ApiBody for complex request payloads
- Use @ApiQuery / @ApiParam for dynamic params and query params
- Add @ApiBearerAuth (or other security) where authentication is required
- Mark deprecated endpoints with @ApiDeprecated
- Ensure DTOs use class-validator + class-transformer decorators for schema enrichment

Output: Patched controller code with decorators and a brief list of applied annotations.
