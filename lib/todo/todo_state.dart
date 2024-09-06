part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
  const factory TodoState.loading() = _loading;
  const factory TodoState.error({required String message}) = _error;
  const factory TodoState.success({required List<TodoModel> todos}) = _scucess;
}