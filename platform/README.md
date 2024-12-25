## Platform

**Platforms** serve as foundational enablers for the application's functionality. They provide integration with external services and tools, ensuring the core internal logic remains decoupled and modular. These packages act as adapters that bridge your application with third-party systems.

### Examples of Platforms:
1. **SMS**: Handles communication through SMS platforms for sending and receiving messages.
2. **Kafka / Pub-Sub**: Facilitates asynchronous communication and event-driven architecture using message brokers like Kafka.
3. **SSO (Single Sign-On)**: Integrates authentication and authorization via third-party identity providers for secure and seamless login experiences.

### Key Principles:
- **Abstraction**: Platforms encapsulate external dependencies, ensuring they can be replaced or upgraded with minimal impact on the core logic.
- **Reusability**: These packages can often be reused across different projects or services.
- **Decoupling**: Keeps the application logic independent of third-party changes or updates.

### Usage:
- Platform packages are typically initialized and configured in the application startup phase.
- They expose clean, well-documented APIs to the rest of the application for seamless interaction.
