import 'package:flutter/material.dart';
import 'package:harry_potter/core/style/styles.dart';

class WandDetailsWidget extends StatelessWidget {
  const WandDetailsWidget({
    super.key,
    required this.gold,
  });

  final Color gold;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Wand:",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.arrow_forward, color: gold),
            Text(" Wood: Holly", style: AppStyles.font16Regular),
          ],
        ),
        Row(
          children: [
            Icon(Icons.arrow_forward, color: gold),
            Text(" Core: Phoenix Tail Feather",
                style: AppStyles.font16Regular),
          ],
        ),
        Row(
          children: [
            Icon(Icons.arrow_forward, color: gold),
            Text(" Length: 11\"", style: AppStyles.font16Regular),
          ],
        ),
      ],
    );
  }
}

