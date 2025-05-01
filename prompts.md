# Common and Reusable Coding Prompts

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
