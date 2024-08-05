<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Modern Bottom Navigation Bar

A customizable and modern bottom navigation bar for Flutter applications.

## Features

- Sleek design with animated selection effects.
- Supports custom icons, labels, and colors for each navigation item.
- Smooth transition animations when switching between items.

## Getting Started

To use the `modern_bottom_nav_bar` package in your Flutter project, follow these steps:

1. Add the dependency to your `pubspec.yaml` file:

    ```yaml
    dependencies:
      modern_bottom_nav_bar: ^0.0.1
    ```

2. Install the package by running:

    ```bash
    flutter pub get
    ```

## Usage

Here's a basic example of how to use the `ModernBottomNavBar` in your Flutter app:

```dart
import 'package:flutter/material.dart';
import 'package:modern_bottom_nav_bar/modern_bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: ModernBottomNavBar(
          items: [
            BottomNavItem(
              icon: Icons.home,
              label: 'Home',
              color: Colors.blue,
            ),
            BottomNavItem(
              icon: Icons.search,
              label: 'Search',
              color: Colors.green,
            ),
            BottomNavItem(
              icon: Icons.notifications,
              label: 'Notifications',
              color: Colors.red,
            ),
          ],
          onItemSelected: (index) {
            print('Selected index: $index');
          },
        ),
      ),
    );
  }
}
