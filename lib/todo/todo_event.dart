part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.getAllToDo() = _getAllToDo;
  const factory TodoEvent.getAllPosts() = _getAllPosts;
}
