# Go Backend Standard Folder Structure

This project structure is designed to follow best practices for building scalable, maintainable, and modular Go applications. It is organized into distinct directories, each with a specific responsibility, to ensure separation of concerns and promote code reusability. Below is an overview of the principles and the directory structure.

## Key Principles

### Encapsulation of Logic
- Core business logic, routing, and data handling are separated into well-defined layers, reducing coupling between components.

### Reusability
- The `pkg/` directory is designated for reusable code that can be shared across multiple projects, making this structure versatile for future extensions.

### Testability
- Dedicated `mock/` and `test/` directories facilitate unit testing, integration testing, and behavior-driven development (BDD).

### External Integrations
- The `platform/` directory houses integrations with external services, ensuring these dependencies remain decoupled from core business logic.

### Code Organization
- The use of directories like `handler/`, `module/`, and `storage/` ensures clean separation of layers, aligning with clean architecture principles or the hexagonal model.

### Runtime Efficiency
- The `internal/` directory protects application-specific logic, ensuring it is not accidentally imported into other projects, maintaining security and efficiency.

## Folder Structure

```plaintext
internal/                  # Contains application-specific code that should not be imported externally
    ├── constant/         # Holds constants, error definitions, and models for the application
        ├── errors/       # Contains error definitions or error handling utilities
        ├── model/        # Database models
        ├── query/        # Contains SQL queries, generated code, or schema files
            ├── queries/  # SQL queries (e.g., sqlc queries)
            ├── schemas/  # Schema definitions (e.g., migrations or SQL schemas)
        ├── constant.go   # Global constants and types

    ├── glue/             # Responsible for connecting various layers like routing
        ├── routing/      # Contains route definitions and grouping
            ├── other_route/   # Additional route groups
            ├── route.go       # Main routing entry point

    ├── handler/          # Handles incoming requests and integrates with other layers
        ├── middleware/   # Middleware for requests (e.g., logging, auth)
        ├── other_handler/# Additional handlers grouped by feature
        ├── handler.go    # Main handler entry point

    ├── module/           # Encapsulates specific features or domain logic
        ├── other_module/ # Individual modules grouped by feature or domain
        ├── module.go     # Module initialization and aggregation

    ├── storage/          # Handles data storage and retrieval mechanisms
        ├── cache/        # Caching layer (e.g., Redis)
        ├── persistence/  # Persistent storage (e.g., database access logic)
        ├── storage.go    # Storage initialization or interface

mock/                     # Mocks for testing purposes

pkg/                      # Reusable packages that can be imported externally

platform/                 # Contains third-party platform integrations and abstractions
    ├── sms/              # SMS platform integration
    ├── other_platform/   # Other third-party integrations
    ├── platform.go       # Platform-specific utilities and abstractions

test/                     # Contains all test-related files and utilities
    ├── bdd/              # Behavior-Driven Development (BDD) tests
    ├── initiator.go      # Test initialization and setup
```

## Explanation of Each Directory

### `internal/`
The `internal` directory is for application-specific code that should not be accessible to external projects. It ensures encapsulation of internal logic and avoids accidental imports by other projects.

#### `constant/`
This directory contains global constants, database models, error definitions, and SQL-related resources. It helps centralize definitions and ensures consistency across the application.
- `errors/`: Manages reusable error types and handlers.
- `model/`: Defines database models, ensuring a structured representation of data.
- `query/`: Contains SQL-related files, including generated code, queries, and schema definitions.
- `constant.go`: A single file to store global constants and types.

#### `glue/`
The `glue` directory connects different layers of the application, such as routing and middleware.
- `routing/`: Manages route definitions and their grouping for modularity.
- `other_route/`: Additional route definitions, categorized by features or modules.
- `route.go`: Main entry point for routing logic.

#### `handler/`
This directory contains handlers that process HTTP or RPC requests and link them to business logic.
- `middleware/`: Implements reusable middleware for request handling, such as authentication or logging.
- `other_handler/`: Additional handlers grouped by specific features.
- `handler.go`: Main entry point for defining handlers.

#### `module/`
The `module` directory encapsulates domain-specific or feature-specific logic into separate modules.
- `other_module/`: Additional modules grouped by features or domains.
- `module.go`: Centralized initialization and aggregation of modules.

#### `storage/`
The `storage` directory handles the interaction with data storage solutions.
- `cache/`: Implements caching mechanisms, such as Redis, for improved performance.
- `persistence/`: Contains logic for accessing and manipulating persistent storage, like databases.
- `storage.go`: Acts as an interface or initialization point for storage operations.

### `mock/`
This directory contains mock implementations used for testing purposes. It facilitates isolated unit testing by simulating dependencies.

### `pkg/`
The `pkg` directory includes reusable utilities and packages that are designed to be imported and used across multiple projects. It contains shared logic and helpers.

### `platform/`
The `platform` directory integrates with third-party services and platforms.
- `sms/`: Handles SMS platform integration for sending messages.
- `other_platform/`: Manages other third-party services, such as payment gateways or external APIs.
- `platform.go`: Contains platform-specific abstractions and utilities.

### `test/`
The `test` directory organizes testing files and utilities, focusing on behavior-driven development (BDD) and test initialization.
- `bdd/`: Stores feature files and BDD tests.
- `initiator.go`: Sets up and initializes the test environment for the application.

---

## Usage

The following commands can be used to initialize and work with the project. These commands are defined in the `Makefile`:

### Initialize the Project
```bash
make initproject user_name=<your-github-username> project_name=<your-project-name>
```
*Example:*

```bash
make initproject user_name="BoruTamena" project_name="example_project"
```
Initializes the Go module with your specified username and project name.

### Migrations
- Run all down migrations:
  ```bash
  make migrate-down db_url=<your-database-url> path=<path-to-migrations>
  ```
- Run all up migrations:
  ```bash
  make migrate-up db_url=<your-database-url> path=<path-to-migrations>
  ```
- Create a new migration file:
  ```bash
  make migrate-create args=<migration-name>
  ```

### Swagger Documentation
```bash
make swagger
```
Generates Swagger documentation based on the Go code.

### Run Tests
```bash
make tests
```
Runs all test cases in the project with a fresh state.

### Install Air for Live Reloading
```bash
make air
```
Installs the `air` live-reloading tool for Go development.

### Generate SQL Code
```bash
make sqlc
```
Generates SQL code using `sqlc` based on the specified configuration.

### Lint the Code
```bash
make lint
```
Runs `golangci-lint` to check the codebase for linting issues.

---

This structure ensures a clear separation of concerns, enhances maintainability, and aligns with Go’s idiomatic practices, making it easier to scale and collaborate on the project. 
Let me know if you need further refinements or additional details!
- **Email:** [borutamena46@gmail.com]
- **GitHub:** [https://github.com/BoruTamena]

