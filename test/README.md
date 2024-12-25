    # Test Directory

The `test/` directory is dedicated to organizing and maintaining the application's testing framework. It provides the foundation for validating the correctness, performance, and behavior of the code.

---

## Purpose

The `test/` directory serves to:
- Ensure the application meets its functional and non-functional requirements.
- Facilitate **Behavior-Driven Development (BDD)** by organizing feature tests.
- Provide utilities and setups for creating robust and isolated test cases.

---

## Structure

```plaintext
test/
├── bdd/               # Contains BDD tests (e.g., feature files and step definitions).
├── initiator.go       # Initializes the test environment, including mocks and dependencies.
