# Randevium App

**Randevium** is a Flutter-based mobile application designed to streamline appointment scheduling and management. It provides a user-friendly interface, ensuring a smooth experience for tracking, creating, and managing appointments.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Project Structure & Architecture](#project-structure--architecture)
- [Packages & Dependencies](#packages--dependencies)
- [Code Quality & Best Practices](#code-quality--best-practices)
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

