import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:harry_potter/core/routing/router.dart';
import 'package:harry_potter/core/utils/service_locator.dart';
import 'package:harry_potter/feature/topics/data/repo/character_repo_impl.dart';
import 'package:harry_potter/feature/topics/view%20model/characters/characters_cubit.dart';

void main() {
  setUpServiceLocator();
  runApp(const HarryPotter());
}

class HarryPotter extends StatelessWidget {
  const HarryPotter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final getIt = GetIt.instance;

    return BlocProvider(
      create: (context) => CharactersCubit(getIt.get<CharacterRepoImpl>()),
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerate,
      ),
    );
  }
}
