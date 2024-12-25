# Go Backend Standard Folder Structure

```plaintext
internal/
    ├── constant/
        ├── errors/         # Contains error definitions or error handling utilities
        ├── model/          # Database models
        ├── query/          # Contains SQL queries, generated code, or schema files
            ├── queries/    # SQL queries (e.g., sqlc queries)
            ├── schemas/    # Schema definitions (e.g., migrations or SQL schemas)
        ├── constant.go     # Global constants and types

    ├── glue/
        ├── routing/        # Contains route definitions and grouping
            ├── other_route/   # Additional route groups
            ├── route.go       # Main routing entry point

    ├── handler/
        ├── middleware/     # Middleware for requests (e.g., logging, auth)
        ├── other_handler/  # Additional handlers grouped by feature
        ├── handler.go      # Main handler entry point

    ├── module/    
        ├── other_module/   # Individual modules grouped by feature or domain
        ├── module.go       # Module initialization and aggregation

    ├── storage/  
        ├── cache/          # Caching layer (e.g., Redis)
        ├── persistence/    # Persistent storage (e.g., database access logic)
        ├── storage.go      # Storage initialization or interface

mock/                       # Mocks for testing purposes

pkg/                        # Reusable packages that can be imported externally

platform/
    ├── sms/                # SMS platform integration
    ├── other_platform/     # Other third-party integrations
    ├── platform.go         # Platform-specific utilities and abstractions

test/
    ├── bdd/                # Behavior-Driven Development (BDD) tests
    ├── initiator.go        # Test initialization and setup
