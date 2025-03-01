import 'package:flutter/material.dart';
import 'package:harry_potter/feature/home/data/topic_model.dart';
import 'package:harry_potter/feature/home/view/widget/custom_toipc_list.dart';
import 'package:harry_potter/feature/home/view/widget/harry_welcomde_image.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<TopicModel> topic = [
      TopicModel(topicName: 'Spells', imagePath: 'assets/icons/spellbook.png'),
      TopicModel(
          topicName: 'Characters', imagePath: 'assets/icons/harry-potter.png'),
      TopicModel(topicName: 'settles', imagePath: 'assets/icons/shield.png'),
      TopicModel(topicName: 'wands', imagePath: 'assets/icons/magic-wand.png'),
    ];
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        HarryWelcomeImage(size: size),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: topic.length,
            itemBuilder: (_, index) => CustomTopicBox(
              topicModel: topic[index],
            ),
          ),
        ),
      ],
    );
  }
}
