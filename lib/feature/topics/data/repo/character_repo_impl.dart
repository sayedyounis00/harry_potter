import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:harry_potter/core/errors/failure.dart';
import 'package:harry_potter/core/helper/service.dart';
import 'package:harry_potter/feature/topics/data/model/character/character.dart';
import 'package:harry_potter/feature/topics/data/repo/character_repo.dart';

class CharacterRepoImpl implements CharacterRepo {
  final ApiService apiServices = ApiService();
  @override
  Future<Either<Failure, List<CharacterModel>>> getCharacterDetailes() async {
    try {
      List<dynamic> result = await apiServices.get(endPoint: '/characters');
      List<CharacterModel> characters = [];
      for (var element in result) {
        characters.add(CharacterModel.fromJson(element));
      }
      return right(characters);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    }
  }
}
