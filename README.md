# Randevium App

**Randevium** is a Flutter-based mobile application designed to streamline appointment scheduling and management. It provides a user-friendly interface, ensuring a smooth experience for tracking, creating, and managing appointments.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Code Quality & Best Practices](#code-quality--best-practices)
- [Tech Stack](#tech-stack)
- [Project Structure & Architecture](#project-structure--architecture)
- [Packages & Dependencies](#packages--dependencies)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)

## Overview

Randevium simplifies the appointment scheduling process for individuals, freelancers, and small businesses. With its clean UI and efficient data handling, users can effortlessly view, add, edit, and remove appointments while keeping track of their schedules.

## Features

- **User Authentication**: Secure login and signup functionality.
- **Appointment Scheduling**: Create, update, and delete appointments easily.
- **Calendar & Reminders**: Visualize appointments in a calendar view (planned) and integrate reminders (where supported).
- **Responsive UI**: Adapts seamlessly to different screen sizes and orientations.

## Code Quality & Best Practices

- **Clean Architecture**: Encourages modular, testable code.
- **Bloc State Management**: Predictable and maintainable state flows.
- **Code Generation**: Using `build_runner`, `freezed`, and `json_serializable` to reduce boilerplate.
- **Linting and Formatting**: Ensures code quality and style consistency.
- **Testability**: The structure supports unit and widget testing.
- 
## Tech Stack

- **Framework**: [Flutter](https://flutter.dev/) (Dart)
- **State Management**: [Bloc](https://bloclibrary.dev/) via `flutter_bloc`
- **Dependency Injection**: [get_it](https://pub.dev/packages/get_it)
- **API & Networking**: [Dio](https://pub.dev/packages/dio)
- **Data Handling**: [json_serializable](https://pub.dev/packages/json_serializable) & [freezed](https://pub.dev/packages/freezed) for model generation and serialization
- **Local Storage**: [shared_preferences](https://pub.dev/packages/shared_preferences)
- **Logging**: [loggy](https://pub.dev/packages/loggy)
- **Animations & UI Enhancements**: [Lottie](https://pub.dev/packages/lottie), [intl](https://pub.dev/packages/intl)

## Project Structure & Architecture
lib/ ├─ core/ │ ├─ config/ │ ├─ constants/ │ ├─ exceptions/ │ ├─ themes/ │ ├─ utils/ │ └─ widgets/ # Shared/custom widgets │ ├─ features/ │ ├─ auth/ # Authentication (screens, blocs, models) │ ├─ appointments/ # Appointment-related screens, blocs, repositories, models │ ├─ ... # Additional features as the application grows │ ├─ services/ │ ├─ api/ # API service classes and endpoints │ ├─ storage/ # Local data storage logic (shared_preferences) │ └─ di/ # Dependency injection configurations (get_it) │ └─ main.dart # Entry point of the application


### Architectural Highlights

- **Bloc Pattern**: Each feature uses Bloc/Cubit classes for state management, ensuring clear separation of concerns.
- **Feature-Driven Structure**: Code is organized by feature domain.
- **Separation of Concerns**:
  - **Presentation Layer**: UI widgets and screens.
  - **Domain Layer**: Bloc/Cubit classes, domain models, and use cases.
  - **Data Layer**: Repositories, data sources, API integration, and storage.

## Packages & Dependencies

**Key Dependencies** (from `pubspec.yaml`):

- **State Management & Logic**:
  - `flutter_bloc: ^8.1.6`
  - `equatable: ^2.0.7` for simpler equality in states
- **Dependency Injection**:
  - `get_it: ^8.0.2`
- **Data & Networking**:
  - `dio: ^5.7.0`
  - `shared_preferences: ^2.3.3`
  - `json_serializable: ^6.9.0`
  - `json_annotation: ^4.9.0`
  - `freezed_annotation: ^2.4.4`
  - `dartz: ^0.10.1`
- **UI & Utilities**:
  - `lottie: ^3.1.3`
  - `intl: ^0.20.1`
  - `loggy: ^2.0.3`
  - `cupertino_icons: ^1.0.8`

**Dev Dependencies**:
- `build_runner: ^2.4.13` for code generation
- `freezed: ^2.5.7` for immutable models
- `flutter_lints: ^4.0.0` for linting

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/tayyipozr/randevium-app.git
