import 'package:flutter/material.dart';
import 'package:harry_potter/feature/welcome/widgets/choose_house_body.dart';

class ChooseHouse extends StatelessWidget {
  const ChooseHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:ChooseHouseBody(),
    );
  }
}
