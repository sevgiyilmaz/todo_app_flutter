import 'package:todoapp/pages/home_page.dart';
import 'package:todoapp/pages/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SplaceController extends GetxController {
  final auth = FirebaseAuth.instance;
  @override
  void onInit() {
    super.onInit();
    splaceHandel();
  }

  void splaceHandel() async {
    Future.delayed(
      Duration(seconds: 4),
          () {
        if (auth.currentUser != null) {
          Get.offAll(HomePage());
        } else {
          Get.offAll(WelcomePage());
        }
      },
    );
  }
}