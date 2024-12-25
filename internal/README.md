# Internal Folder

The `internal/` directory contains private, application-specific code that should not be imported by external projects. This is a core Go convention, ensuring encapsulation and maintaining a clear separation between the application's internal logic and external interfaces.

---

## Purpose

The `internal/` directory is designed to:
- Organize **core business logic** and **application-specific functionality**.
- Prevent unintended usage or exposure of internal implementations to external packages.
- Adhere to clean architecture principles, like **Ports and Adapters**, promoting modularity, scalability, and maintainability.

Each subdirectory serves a distinct purpose, ensuring a well-structured codebase.

---

## Folder Structure

```plaintext
internal/
├── constant/        # Centralized definitions for constants, error types, DTOs, and database models.
                     # Ensures consistency and reusability across the application.
├── glue/            # Connects various layers of the application, defining routes for handlers and 
                     # integrating them with the underlying logic.
├── handler/         # Implements API endpoints (e.g., auth, user, etc.) to process client requests. 
                     # Serves as the application’s entry point and connects to the glue layer.
├── module/          # Encapsulates application features and business logic into modular components.
                     # Interacts with the persistence layer and provides functionality to handlers.
├── storage/         # Manages data storage mechanisms, including caching and persistence layers 
                     # (e.g., databases). Serves the module layer above.
