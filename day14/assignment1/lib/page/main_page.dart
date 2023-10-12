import 'dart:ui';

import 'package:assignment1/model/todo.dart';
import 'package:assignment1/widget/filter_bottom_sheet.dart';
import 'package:assignment1/widget/todo_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Dio dio = Dio();
  List<Todo> todos = [];
  TodoFilter todoFilter = TodoFilter.all;

  readTodos() async {
    var url = 'https://jsonplaceholder.typicode.com/todos';
    var res = await dio.get(url);
    if (res.statusCode == 200) {
      var data = List<Map<String, dynamic>>.from(res.data);
      setState(() {
        todos = data.map((e) => Todo.fromMap(e)).toList();
      });
    }
    return [];
  }

  Future<Todo?> getTodo(int todoNumber) async {
    String url = 'https://jsonplaceholder.typicode.com/todos/$todoNumber';
    var res = await dio.get(url);
    if (res.statusCode == 200) {
      return Todo.fromMap(res.data);
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    readTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Todo App'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => FilterBottomSheet(
                  filter: todoFilter,
                  onApply: (val) {
                    todoFilter = val;
                    setState(() {});
                  },
                ),
              );
            },
            icon: const Icon(Icons.sort),
          ),
          IconButton(
            onPressed: () {
              readTodos();
              todoFilter = TodoFilter.all;
              setState(() {});
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        flexibleSpace: ClipRect(
          //오버플로우를 잘라줌
          child: BackdropFilter(
            //appbar 뒤 불투명하게
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            ),
            child: Container(), //전체공간을 차지하게 됨.
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filterMaker(todos).length,
        itemBuilder: (context, index) {
          return TodoCard(
            todo: filterMaker(todos)[index],
          );
        },
      ),
    );
  }

  List<Todo> filterMaker(value) {
    switch (todoFilter) {
      case TodoFilter.all:
        return value;
      case TodoFilter.completed:
        return value.where((el) => el.completed == true).toList();
      case TodoFilter.incompleted:
        return value.where((el) => el.completed == false).toList();
    }
  }
}
