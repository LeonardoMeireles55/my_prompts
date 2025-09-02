---
mode: agent
---

Generate a Spring Security configuration for a Spring Boot application with the following specifications:
- Use `@EnableWebSecurity` annotation.
- Extend `WebSecurityConfigurerAdapter` (or use newer component-based configuration).
- Configure authentication (in-memory, JDBC, or custom user details service).
- Configure authorization rules for different URL patterns.
- Enable form login and logout.
- Add CSRF protection.
- Configure password encoding with `BCryptPasswordEncoder`.
- Handle access denied scenarios with a custom access denied handler.
