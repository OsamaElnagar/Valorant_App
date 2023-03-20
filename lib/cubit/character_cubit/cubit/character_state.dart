// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'character_cubit.dart';

@immutable
abstract class CharacterState {}

class CharacterInitialState extends CharacterState {}

class CharacterLoadingState extends CharacterState {}

class CharacterLoadedState extends CharacterState {
  List<CharacterModel> characters;

  CharacterLoadedState({
    required this.characters,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is CharacterLoadedState && other.characters == characters;
  }

  @override
  int get hashCode => characters.hashCode;
}

class CharacterErrorState extends CharacterState {
  String message;

  CharacterErrorState({
    required this.message,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is CharacterErrorState && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
