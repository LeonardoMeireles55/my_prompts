---
mode: agent
---
You are assisting with debugging failing Playwright tests. Given:
- Failure error messages
- Relevant test code snippets
- (Optional) notes about environment
Provide:
1. Probable root causes (ranked) distinguishing locator issues, timing, auth/session, network, and test data problems
2. Specific Playwright APIs or patterns to fix (e.g., getByRole, expect.poll, test.step)
3. Minimal patch suggestions (not whole file) using diff-like snippets
4. One resilience improvement suggestion (idempotency / flakiness reduction)
Keep answer concise.
