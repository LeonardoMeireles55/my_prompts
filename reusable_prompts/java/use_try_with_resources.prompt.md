---
mode: agent
---
Refactor code to use try-with-resources for all Closeable/AutoCloseable resources (streams, readers, JDBC, etc.). Remove manual finally blocks where they become unnecessary. Ensure proper exception handling and resource closing.
