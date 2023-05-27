import 'package:todoapp/config/my_colors.dart';
import 'package:todoapp/controller/splace_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplacePage extends StatelessWidget {
  const SplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    SplaceController splaceController = Get.put(SplaceController());
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Lottie.network(
          'https://assets5.lottiefiles.com/packages/lf20_x7QYjmpeYF.json',
          width: 300,
        ),
      ),
    );
  }
}