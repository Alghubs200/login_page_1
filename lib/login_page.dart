import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      backgroundColor: Color.fromARGB(255, 27, 26, 26),
      body: Column(children: [
        Container(
          width: w,
          height: h * 0.5,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/loginimg.jpg"), fit: BoxFit.cover)),
        ),
        Container(
          width: w,
          margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text(
                'Sign in to your Account',
                style: TextStyle(fontSize: 15, color: Colors.grey[500]),
              ),
              SizedBox(
                height: 35,
              ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))))
            ],
          ),
        )
      ]),
    );
  }
}
