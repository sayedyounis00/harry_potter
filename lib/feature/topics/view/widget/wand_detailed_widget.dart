import 'package:flutter/material.dart';
import 'package:harry_potter/core/style/styles.dart';
import 'package:harry_potter/feature/topics/data/model/character/character.dart';

class WandDetailsWidget extends StatelessWidget {
  final CharacterModel character;
  const WandDetailsWidget({
    super.key,
    required this.gold,
    required this.character,
  });

  final Color gold;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Wand:", style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.arrow_forward, color: gold),
            Text(" Wood: ${character.wand!.wood}",
                style: AppStyles.font16Regular),
          ],
        ),
        Row(
          children: [
            Icon(Icons.arrow_forward, color: gold),
            Text(" Core: ${character.wand!.core}",
                style: AppStyles.font16Regular),
          ],
        ),
        Row(
          children: [
            Icon(Icons.arrow_forward, color: gold),
            Text(" Length: ${character.wand!.length}\"",
                style: AppStyles.font16Regular),
          ],
        ),
      ],
    );
  }
}
