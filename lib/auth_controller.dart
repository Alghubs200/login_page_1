import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:login_page_practice/login_page.dart';
import 'package:login_page_practice/welcome_page.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  //email, password, name..
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //our user would be notified
    _user.bindStream(auth.userChanges());
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("loginpage");
      Get.offAll(() => LoginPage());
    } else {
      Get.offAll(() => WelcomePage());
    }
  }
}
