import 'package:flutter/material.dart';
import 'package:harry_potter/core/style/styles.dart';
import 'package:harry_potter/feature/topics/view/widget/wand_detailed_widget.dart';
import 'package:harry_potter/feature/topics/view/widget/wrap_names_widget.dart';

class CharacterDetailedViewBody extends StatelessWidget {
  final Color gryffindorRed = const Color(0xFFDA291C);
  final Color gold = const Color(0xFFFFD700);

  const CharacterDetailedViewBody({super.key});

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
                  "https://ik.imagekit.io/hpapi/harry.jpg",
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
              Text("Harry Potter",
                  style: AppStyles.font24Bold.copyWith(
                    color: gryffindorRed,
                  )),
              Text("Gryffindor House",
                  style: AppStyles.font16Regular.copyWith(
                    color: Colors.grey[600],
                  )),
              const SizedBox(height: 15),

              // Basic Info
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  infoTile("Species:", "Human"),
                  infoTile("Gender:", "Male"),
                  infoTile("Born:", "31 July 1980"),
                ],
              ),
              const SizedBox(height: 15),

              // Alternate Names
              const WrapTitleWidget(),
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
                        Text("Yes", style: AppStyles.font16Regular),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ancestry:", style: AppStyles.infoLabelStyle),
                        const SizedBox(height: 4),
                        Text("Half-Blood", style: AppStyles.font16Regular),
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
              WandDetailsWidget(gold: gold),
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

