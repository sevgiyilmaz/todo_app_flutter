import 'package:todoapp/model/todo_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TodoController extends GetxController {
  TextEditingController title = TextEditingController();
  TextEditingController des = TextEditingController();

  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;

  final todoList = <TodoModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getTodo();
  }

  void addTodo() async {
    var newTodo = TodoModel(
      title: title.text,
      des: des.text,
    );

    try {
      await db
          .collection("users")
          .doc(auth.currentUser!.uid)
          .collection("todo")
          .add(
        newTodo.toJson(),
      );
      title.clear();
      getTodo();
      Get.snackbar(
        "Todo added Success",
        "Todo added in Database",
        backgroundColor: Colors.green,
      );
    } catch (ex) {
      Get.snackbar("Error", ex.toString());
    }
  }

  void getTodo() async {
    var data = await db
        .collection("users")
        .doc(auth.currentUser!.uid)
        .collection("todo")
        .get();
    todoList.clear();
    for (var todo in data.docs) {
      todoList.add(TodoModel.fromJson(todo.data()));
    }
  }
}
