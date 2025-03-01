import 'package:flutter/material.dart';
import 'package:harry_potter/feature/topics/view/widget/character_view_body.dart';

class CharacterView extends StatelessWidget {
  const CharacterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CharacterViewBody(),
    );
  }
}
