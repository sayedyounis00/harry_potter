import 'package:flutter/material.dart';
import 'package:harry_potter/core/constant/colors.dart';
import 'package:harry_potter/core/style/styles.dart';

class HarryWelcomeImage extends StatelessWidget {
  const HarryWelcomeImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Text(
          'Welcome to organizing school.',
          style: AppStyles.font30Regular.copyWith(
            fontFamily: "harry",
            color: AppColors.ksecondaryColor,
          ), // This color will be overridden by the gradient
        ),
        Align(
          alignment: Alignment.center,
          child: Opacity(
            opacity: .6,
            child: Image(
              image: const AssetImage(
                "assets/images/harry_home_page.png",
              ),
              height: size.height * .4,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
