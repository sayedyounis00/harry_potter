import 'package:flutter/material.dart';
import 'package:harry_potter/core/style/styles.dart';
import 'package:harry_potter/feature/topics/data/model/character/character.dart';
import 'package:harry_potter/feature/topics/view/widget/wand_detailed_widget.dart';
import 'package:harry_potter/feature/topics/view/widget/wrap_names_widget.dart';

class CharacterDetailedViewBody extends StatelessWidget {
  final Color gryffindorRed = const Color(0xFFDA291C);
  final Color gold = const Color(0xFFFFD700);
  final CharacterModel characterModel;
  const CharacterDetailedViewBody({
    super.key,
    required this.characterModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(children: [
          Column(
            children: [
              // Character Image
              ClipOval(
                child: Image.network(
                  characterModel.image!,
                  width: 180,
                  height: 180,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const CircularProgressIndicator();
                  },
                ),
              ),
              const SizedBox(height: 20),

              // Name and House
              Text(characterModel.name ?? " ",
                  style: AppStyles.font24Bold.copyWith(
                    color: gryffindorRed,
                  )),
              Text(characterModel.house ?? " ",
                  style: AppStyles.font16Regular.copyWith(
                    color: Colors.grey[600],
                  )),
              const SizedBox(height: 15),

              // Basic Info
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  infoTile("Species:", characterModel.species ?? " "),
                  infoTile("Gender:", characterModel.gender ?? " "),
                  infoTile("Born:", characterModel.dateOfBirth ?? " "),
                ],
              ),
              const SizedBox(height: 15),

              // Alternate Names
              WrapTitleWidget(
                names: characterModel.alternateNames!,
              ),
              const SizedBox(height: 15),

              // Wizard Details
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Wizard:", style: AppStyles.infoLabelStyle),
                        const SizedBox(height: 4),
                        Text(characterModel.wizard == true ? "YES" : "NO",
                            style: AppStyles.font16Regular),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ancestry:", style: AppStyles.infoLabelStyle),
                        const SizedBox(height: 4),
                        Text(characterModel.ancestry ?? " ",
                            style: AppStyles.font16Regular),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),

              // Physical Traits
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Eye Colour:", style: AppStyles.infoLabelStyle),
                        const SizedBox(height: 4),
                        Container(
                          width: 30,
                          height: 15,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            color: Colors.green[700],
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hair Colour:", style: AppStyles.infoLabelStyle),
                        const SizedBox(height: 4),
                        Container(
                          width: 30,
                          height: 15,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              // Wand Details
              WandDetailsWidget(
                gold: gold,
                character: characterModel,
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget infoTile(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppStyles.infoLabelStyle),
        Text(value, style: AppStyles.font16Regular),
      ],
    );
  }
}
