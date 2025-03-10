import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/core/routing/routes.dart';
import 'package:harry_potter/feature/home/data/topic_model.dart';
import 'package:harry_potter/feature/topics/view%20model/characters/characters_cubit.dart';

class CustomTopicBox extends StatelessWidget {
  final TopicModel topicModel;
  const CustomTopicBox({super.key, required this.topicModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            BlocProvider.of<CharactersCubit>(context).getAllCharacters();
            Navigator.pushNamed(context, AppRoutes.charcterView);
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.withOpacity(.1)),
            child: Image(
              image: AssetImage(topicModel.imagePath),
            ),
          ),
        ),
        Text(topicModel.topicName),
      ],
    );
  }
}
