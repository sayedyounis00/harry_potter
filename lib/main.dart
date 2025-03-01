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
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "harry",
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerate,
    );
  }
}
