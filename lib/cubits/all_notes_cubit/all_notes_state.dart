// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'all_notes_cubit.dart';

@immutable
abstract class AllNotesState {}

class AllNotesInitial extends AllNotesState {}

class AllNotesLoading extends AllNotesState {}

class AllNotesSuccess extends AllNotesState {}

class AllNotesFailure extends AllNotesState {
  final String errMessage;
  AllNotesFailure({
    required this.errMessage,
  });
}
