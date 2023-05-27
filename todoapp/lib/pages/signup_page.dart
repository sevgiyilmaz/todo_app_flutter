import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/my_button.dart';
import '../components/my_text_form_field.dart';
import '../config/my_colors.dart';
import '../controller/auth_controller.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailId = TextEditingController();
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: textColor,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 30),
              Text(
                "😍 to Connect With you",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: whiteColor),
              ),
              SizedBox(height: 10),
              Text("Let's enter few details that sit ❤️",
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: whiteColor)),
              SizedBox(height: 50),
              SizedBox(height: 20),
              Text(
                "Email",
                style: TextStyle(color: whiteColor),
              ),
              SizedBox(height: 5),
              MyTextFormField(
                controller: authController.email,
                lable: "Your Email",
              ),
              SizedBox(height: 20),
              Text(
                "Password",
                style: TextStyle(color: whiteColor),
              ),
              SizedBox(height: 5),
              MyTextFormField(
                controller: authController.password,
                lable: "Password",
              ),
              SizedBox(height: 60),
              MyButton(
                btnName: "Sign Up",
                onPress: () {
                  authController.signup();
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Alrady have an account ?",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: whiteColor)),
                  InkWell(
                    onTap: () {
                      Get.to(LoginPage());
                    },
                    child: Text(
                      " Login",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: blueColor),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}