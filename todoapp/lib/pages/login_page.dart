import 'package:todoapp/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/my_button.dart';
import '../components/my_text_form_field.dart';
import '../config/my_colors.dart';
import '../controller/auth_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              Text("😍 Happy to See you Again",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: whiteColor,
                  )),
              SizedBox(height: 10),
              Text("We are missing you ❤️",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: whiteColor,
                  )),
              SizedBox(height: 50),
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
              Text("Password",
                  style: TextStyle(
                    color: whiteColor,
                  )),
              SizedBox(height: 5),
              MyTextFormField(
                controller: authController.password,
                lable: "Password",
              ),
              SizedBox(height: 20),
              MyButton(
                  btnName: "Sign In",
                  onPress: () {
                    authController.login();
                  }),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ?",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: whiteColor)),
                  InkWell(
                    onTap: () {
                      Get.to(SignUpPage());
                    },
                    child: Text(
                      " Register",
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
