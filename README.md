# clean_architecture
https://chatgpt.com/share/67a38921-22a4-800b-ab10-c74f700baa02

Explanation of Layers
Data Layer:

Handles raw data from external sources like APIs or local databases.
Converts raw data (e.g., JSON) into domain models.
Contains repository implementations that interact with datasources.
Domain Layer:

Independent of UI and data layers, making it reusable and testable.
Contains:
Entities: Core business objects (e.g., User, Post).
Use Cases: Application-specific business logic.
Presentation Layer:

Focuses on UI/UX and state management.
Includes:
Pages: Screens or pages displayed to the user.
Widgets: Reusable UI components.
State: Manages state (e.g., Bloc, Cubit, Provider).
Core:

Contains app-wide utilities, constants, and shared resources.
Injection:

Manages dependency injection using tools like get_it or injectable.
This structure adheres to Clean Architecture principles by dividing the app into layers, promoting testability and scalability while reducing tight coupling.
A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
