---
mode: agent
---
Ensure comprehensive type safety across the codebase.

Actions:
- Audit all modules for usage of `any`, `unknown`, and overly broad types
- Replace implicit/explicit `any` with precise types or generics
- Narrow union types where possible via type guards and discriminated unions
- Add exhaustive checks (e.g. `never` in switch) for critical control flows
- Strengthen API boundary types (inputs/outputs) and avoid leaking internal shapes
- Use enums or literal unions instead of loose strings where appropriate
- Introduce generic constraints to prevent unsafe usage
- Validate external/JSON data with runtime schemas (e.g. Zod/valibot) before typing

Goal: Zero accidental `any`, clear nullability handling, and predictable, self-documenting types.
