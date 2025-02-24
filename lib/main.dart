import 'package:flutter/material.dart';
import 'package:harry_potter/core/routing/router.dart';

void main() {
  runApp(const HarryPotter());
}

class HarryPotter extends StatelessWidget {
  const HarryPotter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerate,
    );
  }
}
