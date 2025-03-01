import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/feature/topics/view%20model/characters/characters_cubit.dart';
import 'package:harry_potter/feature/topics/view/widget/character_card.dart';

class CharacterViewBody extends StatelessWidget {
  const CharacterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
      if (state is CharactersSuccess) {
        return Expanded(
          child: ListView.builder(
            itemCount: state.characters.length,
            itemBuilder: (_, index) {
              return CharacterCard(
                character: state.characters[index],
              );
            },
          ),
        );
      } else if (state is CharactersFailed) {
        return Text(state.errMessage);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
