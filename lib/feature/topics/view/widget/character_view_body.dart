import 'package:flutter/material.dart';
import 'package:harry_potter/feature/topics/view/widget/character_card.dart';

class CharacterViewBody extends StatelessWidget {
  const CharacterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (_, index) {
              return const CharacterCard();
            },
          ),
        ),
      ],
    );
  }
}
