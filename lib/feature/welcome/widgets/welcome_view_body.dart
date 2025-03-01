import 'package:flutter/material.dart';
import 'package:harry_potter/core/constant/colors.dart';
import 'package:harry_potter/core/constant/strings.dart';
import 'package:harry_potter/core/routing/routes.dart';
import 'package:harry_potter/core/style/styles.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: size.height * .4,
              width: double.infinity,
              child: const Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/welcome_image.png",
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: Text(
                textAlign: TextAlign.center,
                "Welcome To Hogwards",
                style: AppStyles.font30Regular.copyWith(
                    color: AppColors.ksecondaryColor, fontFamily: "HARRINGT"),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: size.height * .3,
          // width: size.width * .35,
          child: Text(
            textAlign: TextAlign.center,
            Strings.welcomeText,
            style: AppStyles.font30Regular
                .copyWith(color: AppColors.kwhiteColor, fontFamily: "harry"),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.chooseHouse);
            },
            child: Text("Start",
                style: AppStyles.font30Regular.copyWith(
                    color: AppColors.ksecondaryColor, fontFamily: "HARRINGT")))
      ],
    );
  }
}
