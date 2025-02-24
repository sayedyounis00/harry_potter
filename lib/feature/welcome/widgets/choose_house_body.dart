import 'package:flutter/material.dart';
import 'package:harry_potter/core/constant/colors.dart';
import 'package:harry_potter/core/routing/routes.dart';
import 'package:harry_potter/core/style/styles.dart';
import 'package:harry_potter/feature/welcome/widgets/custom_select_house.dart';
import 'package:harry_potter/feature/welcome/widgets/custum_button.dart';

class ChooseHouseBody extends StatefulWidget {
  const ChooseHouseBody({super.key});

  @override
  State<ChooseHouseBody> createState() => _ChooseHouseBodyState();
}

class _ChooseHouseBodyState extends State<ChooseHouseBody> {
  bool isTapped = false;
  bool tapped = false;
  int? _selectedIndex;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> houses = [
      "assets/icons/bran-castle.png",
      "assets/icons/dark-castle.png",
      "assets/icons/castle.png",
      "assets/icons/fortress.png",
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 200,
            child: Text(
              textAlign: TextAlign.center,
              "Please choose one of the four houses of hogwarts school",
              style: AppStyles.font20Regular.copyWith(
                  color: AppColors.ksecondaryColor, fontFamily: "HARRINGT"),
            ),
          ),
        ),
        SizedBox(
          height: 450,
          width: 100,
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: houses.length,
              itemBuilder: (_, index) {
                return ChooseHouseCircule(
                  bordercolor: !(_selectedIndex == index)
                      ? Colors.white
                      : AppColors.ksecondaryColor,
                  onTap: () {
                    _onTap(index);
                    tapped = true;
                  },
                  color: _selectedIndex == index
                      ? AppColors.ksecondaryColor
                      : Colors.transparent,
                  imagePath: houses[index],
                );
              }),
        ),
        !(tapped == true)
            ? const SizedBox()
            : CustumButton(
                child: const Text(" Start "),
                onTap: () {
                  Navigator.pushNamed(context,AppRoutes.homePage);
                },
              ),
      ],
    );
  }
}

