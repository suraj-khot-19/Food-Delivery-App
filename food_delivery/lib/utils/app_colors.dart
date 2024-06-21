import 'package:flutter/material.dart';

class AppColors {
  static Color primary(BuildContext context) =>
      Theme.of(context).colorScheme.primary;

  static Color secoundry(BuildContext context) =>
      Theme.of(context).colorScheme.secondary;

  static Color surface(BuildContext context) =>
      Theme.of(context).colorScheme.surface;

  static Color inversePrimary(BuildContext context) =>
      Theme.of(context).colorScheme.inversePrimary;

  static Color ternary(BuildContext context) =>
      Theme.of(context).colorScheme.tertiary;
}
