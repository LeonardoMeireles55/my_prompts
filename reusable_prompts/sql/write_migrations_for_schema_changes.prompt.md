---
mode: agent
---
Write database migration scripts for the proposed schema changes.

Actions:
- Identify new tables, columns, constraints, and indexes
- Provide forward (up) migration SQL
- Provide backward (down) migration SQL for rollback
- Use idempotent patterns where possible (check existence before create)
- Preserve data when altering or dropping structures (use staging columns if needed)

Output separate UP and DOWN sections clearly labeled.
