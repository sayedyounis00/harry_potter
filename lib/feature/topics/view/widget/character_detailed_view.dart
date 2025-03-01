import 'package:flutter/material.dart';
import 'package:harry_potter/feature/topics/view/widget/character_detailed_view_body.dart';

class CharacterDetailedView extends StatelessWidget {
  const CharacterDetailedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CharacterDetailedViewBody(),
    );
  }
}
