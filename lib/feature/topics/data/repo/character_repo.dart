import 'package:dartz/dartz.dart';
import 'package:harry_potter/core/errors/failure.dart';
import 'package:harry_potter/feature/topics/data/model/character/character.dart';

abstract class CharacterRepo {
   Future<Either<Failure, List<CharacterModel>>> getCharacterDetailes();
}
