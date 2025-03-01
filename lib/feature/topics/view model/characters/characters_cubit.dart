import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/feature/topics/data/model/character/character.dart';
import 'package:harry_potter/feature/topics/data/repo/character_repo.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit(this.characterRepo) : super(CharactersInitial());

  final CharacterRepo characterRepo;
  late final List<CharacterModel> characterModel;
  Future<void> getAllCharacters() async {
    emit(CharactersLoading());
    var result = await characterRepo.getCharacterDetailes();
    result.fold(
        (failure) => emit(CharactersFailed(errMessage: failure.errMessage)),
        (success) {
      characterModel = success;
      emit(CharactersSuccess(characters: success));
    });
  }
}
