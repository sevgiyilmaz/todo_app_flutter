import 'package:todoapp/components/my_button.dart';
import 'package:todoapp/components/my_text_form_field.dart';
import 'package:todoapp/config/my_colors.dart';
import 'package:todoapp/controller/auth_controller.dart';
import 'package:todoapp/controller/todo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    TodoController todoController = Get.put(TodoController());
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                authController.logOut();
              },
              icon: Icon(
                Icons.logout,
                color: whiteColor,
              ),
            ),
          ],
          leading: IconButton(
              onPressed: () {
                authController.userDetails();
              },
              icon: Icon(Icons.person)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Add Todo"),
              SizedBox(height: 10),
              MyTextFormField(
                controller: todoController.title,
                lable: "Add Todo",
              ),
              SizedBox(height: 20),
              MyButton(
                btnName: "Add Todo",
                onPress: () {
                  todoController.addTodo();
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("All Todo"),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                  child: Obx(
                        () => SingleChildScrollView(
                      child: Column(
                        children: todoController.todoList
                            .map((e) => Column(
                          children: [
                            ListTile(
                              tileColor: whiteColor,
                              onTap: () {},
                              leading: Icon(Icons.task_alt_outlined),
                              title: Text(
                                e.title.toString(),
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              trailing: InkWell(
                                child: Icon(Icons.delete),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ))
                            .toList(),
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
