import 'package:flutter/material.dart';

class WrapTitleWidget extends StatelessWidget {
  const WrapTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: [
        for (var name in [
          "The Boy Who Lived",
          "The Chosen One",
          "Undesirable No. 1",
          "Potty"
        ])
          Chip(
            label: Text(name),
            backgroundColor: Colors.black,
          ),
      ],
    );
  }
}
