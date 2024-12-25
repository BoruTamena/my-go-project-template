

### `pkg` 

```markdown
# `pkg` Directory

The `pkg/` directory contains reusable, general-purpose code that can be imported by other applications or projects. It serves as a shared library for utilities, helpers, and tools that are not specific to the current application.

---

## Purpose

The `pkg/` directory is designed to:
- Encapsulate reusable functionalities that are project-agnostic.  
- Serve as a library of utilities that can be easily shared across different projects.  
- Promote code reuse and consistency in future developments.

---

## Examples of `pkg/` Usage

- **Utility Functions**: Common helpers for string manipulation, logging, etc.  
- **Custom Libraries**: Functions or packages that provide unique capabilities, like custom validation or encryption.  
- **Common Interfaces**: Shared interfaces or abstractions for external services.

---

## Guidelines for Using the `pkg/` Directory

- Only include packages that are reusable and non-application-specific.
- Avoid putting application logic or tightly coupled components in this directory.
- Follow Go's best practices for package design and documentation.

---

By maintaining a well-structured `pkg/` directory, the project promotes modularity and reusability, ensuring long-term scalability and maintainability.
