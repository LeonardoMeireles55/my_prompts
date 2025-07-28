# Common and Reusable Coding Prompts

## Common

- Refactor this component following best practices and keeping the current code style.
- Apply dry and kiss principle to avoid redundant and unnecessary complexity in this project.
- Verify if there are security issues related to these files.
- Search naming conventions issues throughout the project.
- Generate internationalization/translation files for these components.
- Review and fix grammar mistakes.
- Read the existing files from this project and make a summary about the languages,
technologies and architecture in markdown(.md) keeping it concise.
- Create TODO list to improve the readability, maintainability and performance keeping it concise.
- Analyze this project and create meaningful README keeping it concise.
- Using informations about this project, create a posible improvements list in markdown(.md).

## General

- Implement [task] in [language].
- Refactor for readability, maintainability, and performance.
- Write comprehensive unit and integration tests.
- Use async/await where applicable.
- Add robust error handling.
- Extract logic to pure functions/classes.
- Remove unused imports, variables, and dead code.
- Add clear, concise documentation for all code.
- Enforce single responsibility principle.
- Ensure code is modular and reusable.

## TypeScript/JavaScript

- Convert to strict TypeScript.
- Replace type with interface where appropriate.
- Fix all implicit any types.
- Analyze this project and apply JSDoc, do not change any logic, do not break any functionality.
- Replace callbacks with Promises/async/await.
- Remove unused or redundant code.
- Use non-primitive object type instead of Object.
- Add readonly for immutable data structures.
- Document all types, interfaces, and functions.
- Enforce strict null checks.
- Use ES6+ features where possible.
- Ensure type safety throughout codebase.

## Java

- Add null and boundary checks.
- Use try-with-resources for resource management.
- Refactor to use Streams API where suitable.
- Add complete Javadoc for classes and methods.
- Use generics for type safety.
- Use Optional to avoid nulls.
- Remove deprecated or legacy code.
- Enforce immutability where possible.
- Apply SOLID principles.

## Hibernate

- Use parameterized queries to prevent SQL injection.
- Prefer JPQL or Criteria API over native queries.
- Use lazy loading for associations by default.
- Avoid N+1 select problems; use fetch joins where needed.
- Use batch fetching for collections.
- Map entities with explicit column types and constraints.
- Use @Transactional for atomic operations.
- Avoid business logic in entities.
- Use DTOs for data transfer.
- Close sessions and entity managers properly.
- Handle exceptions with specific catch blocks.
- Use optimistic locking for concurrency control.
- Avoid eager fetching unless necessary.
- Document entity relationships and mappings.
- Write integration tests for persistence logic.

## SQL

- Write parameterized queries to prevent SQL injection.
- Add indexes for performance optimization.
- Write migrations for schema changes.
- List all tables, columns, and constraints.
- Find and remove duplicates.
- Optimize queries for performance.
- Document schema changes and queries.

## React

- Split large components into smaller, focused components.
- Use useCallback and useMemo only when necessary.
- Add and export props interfaces.
- Move interfaces and types to /types folder.
- Convert class components to functional components.
- Extract reusable logic to custom hooks.
- Use React hooks for state and side effects.
- Add error boundaries to critical components.
- Write unit and integration tests for components.
- Remove unnecessary re-renders and optimize performance.

## Security

- Sanitize and validate all user input.
- Prevent SQL injection and XSS.
- Validate and sanitize all external data sources.
- Use secure authentication and authorization patterns.
- Avoid exposing sensitive data.

## Formatting

- Format code to [language] style guide (e.g., Prettier, ESLint, Black).
- Rename variables, functions, and classes for clarity and intent.
- Enforce consistent naming conventions.
- Limit file length to 200-300 lines; refactor if exceeded.

## Tailwind CSS

- Improve style of this project,you should follow best practices and conventionals, avoid complexitity.
- Use consistent color palette and avoid arbitrary values.
- Extract common patterns to components or @apply directives.
- Group related utility classes for better readability.
- Follow mobile-first responsive design principles.
- Use Tailwind's spacing and sizing scale consistently.
- Create custom utility classes for project-specific repeated patterns.
- Avoid overly complex class strings; extract to components when needed.
- Use prose classes for content-rich areas.
- Apply consistent dark mode strategy throughout the project.
- Ensure accessibility standards are maintained with appropriate contrast.
- Organize classes by category (layout, spacing, typography, etc.).
- Use configuration file to extend theme with project-specific values.
- Implement design tokens for consistency across the codebase.
- Audit and remove unused classes with PurgeCSS.

# Quarkus Prompts

- Use dependency injection for all services and resources.
- Prefer constructor injection over field injection.
- Use configuration properties for environment-specific values.
- Keep application.properties organized and documented.
- Use Panache for simplified entity and repository patterns.
- Avoid blocking operations in reactive endpoints.
- Use @Transactional for methods that modify the database.
- Validate all REST input using Bean Validation (e.g., @Valid, @NotNull).
- Document REST endpoints with OpenAPI annotations.
- Use Quarkus Dev Services for local development and testing.
- Write native tests to ensure compatibility with GraalVM.
- Keep startup logic lightweight for fast boot times.
- Avoid static state in beans and services.
- Use Quarkus extensions for common integrations (e.g., RESTEasy, Hibernate ORM).
- Monitor application health with built-in endpoints.
- Use logging wisely; avoid excessive log verbosity.
- Secure sensitive endpoints with authentication and authorization.
- Handle errors gracefully and provide meaningful error responses.
- Optimize resource usage; close connections and streams.
- Test application behavior under load and optimize accordingly.
- Regularly update dependencies and Quarkus version.
- Review and optimize build configuration for efficiency.
- Document deployment and operational procedures.
