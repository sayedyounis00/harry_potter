
import 'package:get_it/get_it.dart';
import 'package:harry_potter/core/helper/service.dart';
import 'package:harry_potter/feature/topics/data/repo/character_repo_impl.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  //creating an sigletone for aprservice  beacause it repeated
  getIt.registerSingleton<ApiService>(ApiService());
  //creating an sigletone for HomeRepoImp  beacause it repeated
  getIt.registerSingleton<CharacterRepoImpl>(
    CharacterRepoImpl(),
  );
}