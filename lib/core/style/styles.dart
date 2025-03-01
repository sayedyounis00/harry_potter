import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle font20Regular = TextStyle(
    fontSize: 20,
  );
  static const TextStyle font30Regular = TextStyle(
    fontSize: 30,
  );
  static const TextStyle font18Regular = TextStyle(
    fontSize: 18,
  );
  static TextStyle get infoLabelStyle => TextStyle(
        color: Colors.grey[600],
        fontSize: 14,
      );

  static TextStyle get font16Regular => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get font24Bold => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      );
}
