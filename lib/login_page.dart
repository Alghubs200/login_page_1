import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_page_practice/singup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.5,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/loginimg.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello',
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Text(
                    'Sign in to your Account',
                    style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 2,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your Email',
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Color.fromARGB(255, 182, 26, 15),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)))),
                  ),
                  SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 2,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter your Password',
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 182, 26, 15),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)))),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 225,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  image: DecorationImage(
                      image: AssetImage("img/loginbtn.jpg"),
                      fit: BoxFit.cover)),
              child: Center(
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: w * 0.03),
            RichText(
              text: TextSpan(
                text: "Dont have an account?",
                style: TextStyle(fontSize: 20),
                children: [
                  TextSpan(
                    text: "  Create!",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(() => SignUpPage()),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
