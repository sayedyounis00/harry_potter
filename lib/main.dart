import 'package:flutter/material.dart';
import 'package:harry_potter/feature/home/view/home_view.dart';
import 'package:harry_potter/feature/welcome/welcome_page.dart';

void main() {
  runApp(const HarryPotter());
}

class HarryPotter extends StatelessWidget {
  const HarryPotter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeView(),
    );
  }
}
