part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

class NotesInitial extends NotesState {}

class NotesFailure extends NotesState {
  final String message;

  NotesFailure(this.message);
}
