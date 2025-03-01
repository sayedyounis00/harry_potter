import 'package:flutter/material.dart';

class WrapTitleWidget extends StatelessWidget {
  final List<dynamic> names;
  const WrapTitleWidget({
    super.key, required this.names,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: [
        for (var name in names)
          Chip(
            label: Text(name),
            backgroundColor: Colors.black,
          ),
      ],
    );
  }
}
