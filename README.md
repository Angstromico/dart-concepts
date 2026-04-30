# Dart Learning Journey

This repository contains my first steps in learning the **Dart** programming language. It serves as a foundation and prelude to learning **Flutter** for cross-platform mobile development.

## About This Project

A sample command-line application providing basic argument parsing with an entrypoint in `bin/`.

---

## Getting Started

### Prerequisites

- [Dart SDK](https://dart.dev/get-dart) installed on your system
- VS Code with the [Dart extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code) (optional but recommended)

### Creating a New Dart Project

You have two ways to create a new Dart project:

#### Option 1: Using VS Code (Ctrl + Shift + P)

1. Open VS Code
2. Press `Ctrl + Shift + P` (Windows/Linux) or `Cmd + Shift + P` (macOS)
3. Type and select **"Dart: New Project"**
4. Choose **"Console Application"** for a command-line app
5. Select your target folder
6. Enter your project name

#### Option 2: Using Terminal

```bash
dart create my_project_name
cd my_project_name
```

For a console application specifically:
```bash
dart create --template console my_project_name
```

### Running the Application

Once your project is created, run it with:

```bash
dart run bin/first_app.dart
```

Or simply:
```bash
dart run
```

### Available Templates

The `dart create` command supports several templates:

| Template | Description |
|----------|-------------|
| `console` | Command-line application (default) |
| `package` | A shareable package |
| `server-shelf` | Server application using the Shelf framework |
| `web` | Web application |

### Important Considerations

- **Entry Point**: The main file is typically located at `bin/<project_name>.dart`
- **Dependencies**: Add packages in `pubspec.yaml` under `dependencies:`
- **Dev Dependencies**: Testing and build tools go under `dev_dependencies:`
- **Pub Get**: After modifying `pubspec.yaml`, run `dart pub get` to fetch dependencies
- **Strong Typing**: Dart is strongly typed; use `var`, `final`, or explicit types appropriately
- **Null Safety**: Dart enforces null safety by default - variables cannot be null unless explicitly declared with `?`

## Resources

- [Official Dart Documentation](https://dart.dev/guides)
- [Dart API Reference](https://api.dart.dev)
- [Effective Dart](https://dart.dev/guides/language/effective-dart) - Style and usage guidelines
- [DartPad](https://dartpad.dev) - Online Dart editor for quick experiments
