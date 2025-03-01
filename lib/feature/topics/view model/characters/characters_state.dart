part of 'characters_cubit.dart';

sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

final class CharactersSuccess extends CharactersState {
  final List<CharacterModel> characters;

  CharactersSuccess({required this.characters});
}

final class CharactersFailed extends CharactersState {
  final String errMessage;

  CharactersFailed({required this.errMessage});
}

final class CharactersLoading extends CharactersState {}
