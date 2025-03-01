import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:harry_potter/core/routing/routes.dart';
import 'package:harry_potter/core/style/styles.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.characterDetailedView);
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(3),
        height: size.height * .17,
        width: size.width * .5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.red),
        child: Row(
          children: [
            CachedNetworkImage(
                imageUrl:
                    "data:image/jpeg;base64,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"),
            const VerticalDivider(),
            const Column(
              children: [
                Text(
                  "Harry Name",
                  style: AppStyles.font20Regular,
                ),
                Text(
                  "house",
                  style: AppStyles.font18Regular,
                ),
                Text(
                  "Gender",
                  style: AppStyles.font18Regular,
                ),
                Text(
                  "1980 ",
                  style: AppStyles.font18Regular,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
