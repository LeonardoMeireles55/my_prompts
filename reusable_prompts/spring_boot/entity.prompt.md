### Spring Boot Entity

Generate a JPA entity class with the following specifications:
- Use `@Entity` annotation.
- Define a primary key with `@Id` and `@GeneratedValue`.
- Include fields with appropriate JPA annotations (`@Column`, `@ManyToOne`, `@OneToMany`, etc.).
- Add Lombok annotations for boilerplate reduction (`@Data`, `@NoArgsConstructor`, `@AllArgsConstructor`).
- Use `@Table` annotation to specify table name if different from class name.
- Include validation annotations (`@NotBlank`, `@NotNull`, etc.) if applicable.