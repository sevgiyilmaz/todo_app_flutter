import 'package:todoapp/pages/login_page.dart';
import 'package:todoapp/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/config/my_colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 300,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "A Best Notes & Todo App",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: textColor),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Your all notes and todos will be 100% safe in our storage, this is a Project created by Ni30 and Their Teams ",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: textColor),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Get.to(LoginPage());
                  },
                  child: Container(
                    height: 60,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blueColor,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(color: whiteColor),
                          ),
                        ]),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}