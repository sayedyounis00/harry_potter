import 'package:flutter/cupertino.dart';
import 'package:harry_potter/core/routing/routes.dart';
import 'package:harry_potter/feature/home/view/home_view.dart';
import 'package:harry_potter/feature/topics/view/widget/character_detailed_view.dart';
import 'package:harry_potter/feature/topics/view/widget/character_view.dart';
import 'package:harry_potter/feature/welcome/choose_page.dart';
import 'package:harry_potter/feature/welcome/welcome_page.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.welcomePage:
      return CupertinoPageRoute(builder: (_) => const WelcomeView());
    case AppRoutes.homePage:
      return CupertinoPageRoute(builder: (_) => const HomeView());
    case AppRoutes.chooseHouse:
      return CupertinoPageRoute(builder: (_) => const ChooseHouse());
    case AppRoutes.charcterView:
      return CupertinoPageRoute(builder: (_) => const CharacterView());
    case AppRoutes.characterDetailedView:
      return CupertinoPageRoute(
          builder: (_) => const CharacterDetailedView());
    default:
      return CupertinoPageRoute(builder: (_) => const CharacterView());
  }
}
