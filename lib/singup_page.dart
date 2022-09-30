import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    List images = ["g.png", "t.jpg", "f.jpg"];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: w,
            height: h * 0.5,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/signup.jpg"), fit: BoxFit.cover)),
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                            Icons.email,
                            color: Color.fromARGB(255, 182, 26, 15),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0)),
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
                            Icons.password,
                            color: Color.fromARGB(255, 182, 26, 15),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)))),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(child: Container()),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 0.05),
          Container(
            width: 225,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                image: DecorationImage(
                    image: AssetImage("img/loginbtn.jpg"), fit: BoxFit.cover)),
            child: Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: w * 0.04),
          RichText(
              text: TextSpan(
            text: "or sign up using the following method",
            style: TextStyle(fontSize: 20),
          )),
          Wrap(
            children: List<Widget>.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(13.0),
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: Color.fromARGB(255, 224, 28, 13),
                  child: CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage("img/" + images[index]),
                  ),
                ),
              );
            }),
          )
        ]),
      ),
    );
  }
}
