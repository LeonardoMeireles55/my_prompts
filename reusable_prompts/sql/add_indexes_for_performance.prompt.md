---
mode: agent
---
Analyze database query patterns and add appropriate indexes to improve performance.

Actions:
- Identify slow queries (look for full table scans and high latency)
- Propose composite indexes where multi-column filtering/sorting occurs
- Avoid redundant or overlapping indexes
- Consider index selectivity and write overhead
- Provide rationale for each suggested index
- Include DROP statements for obsolete indexes

Output a concise index change plan plus SQL statements.
