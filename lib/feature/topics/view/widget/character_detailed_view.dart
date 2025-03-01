import 'package:flutter/material.dart';
import 'package:harry_potter/feature/topics/data/model/character/character.dart';
import 'package:harry_potter/feature/topics/view/widget/character_detailed_view_body.dart';

class CharacterDetailedView extends StatelessWidget {
  final CharacterModel character;
  const CharacterDetailedView({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CharacterDetailedViewBody(characterModel: character));
  }
}
