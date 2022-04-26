import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({Key? key}) : super(key: key);

  @override
  _signupscreenState createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
                tag: 'logo',
                child: Container(
                    height: 160, child: Image.asset('images/logo.png'))),
            SizedBox(height: 10),
            Text(
              "SignUp",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 338,
              child: TextField(
                textAlign: TextAlign.center,
                decoration:
                    kTextFieldDecoration.copyWith(hintText: "Enter Your Email"),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 338,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: "Create Your Password"),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
