---
mode: agent
---
Find and remove duplicate records safely.

Actions:
- Identify criteria for duplicates (e.g., same email, natural key fields)
- Provide SELECT queries to preview duplicates
- Offer DELETE (or archival) statements using window functions (ROW_NUMBER)
- Ensure the retained row is deterministic (e.g., MIN(id) or most recent)
- Wrap destructive operations in transactions

Output preview queries first, then cleanup steps.
