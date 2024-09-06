import 'dart:convert';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

import '../model/to_do_model.dart';
part 'todo_state.dart';
part 'todo_event.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(const TodoState.initial()) {
    on<TodoEvent>((event, emit)  async{
     await event.when(
        getAllToDo: () async {
          try {
            List<TodoModel> todos = [];
            emit(const TodoState.initial());
            final url = Uri.parse('https://jsonplaceholder.typicode.com/todos');
            final response = await http.get(url);
            if (response.statusCode == 200) {
              var result = jsonDecode(response.body) as List;
              for (var element in result) {
                todos.add(TodoModel.fromJson(element));
              }
              emit(TodoState.success(todos: todos));
            } else {
              emit(const TodoState.error(message: 'Failed to load todos'));
            }
          } catch (_) {
            emit(const TodoState.error(message: 'Failed to load todos'));
          }
        },
        getAllPosts: () {},
      );
    });
  }
  // _getAllToDo() async {
  //   emit(const TodoState.initial());
  // }

  // _getAllPosts() {}
}
