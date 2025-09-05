---
mode: agent
---
Given a web application description and optionally a target URL, generate Playwright test code that:
1. Uses TypeScript test runner syntax (playwright/test)
2. Covers the described user flows
3. Includes accessibility assertions where feasible
4. Uses data-test-id selectors when present (fall back gracefully if not)
5. Avoids hard sleeps; prefer waitFor selectors or expect polling
6. Is idempotent and can run in parallel
Return only the test file content.
