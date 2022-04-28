import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'main.dart';

void main() {
  runApp(MaterialApp(
    home: chatscreen(),
  ));
}

class chatscreen extends StatefulWidget {
  const chatscreen({Key? key}) : super(key: key);

  @override
  _chatscreenState createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  final _auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  getCurrentUser() async {
    try {
      final User user = await _auth.currentUser!;
      //   final uid = user.uid;
      if (user != null) {
        print(user.email);
      } else {}
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade400,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('FlashChat', style: TextStyle(fontSize: 22)),
            IconButton(
                onPressed: () {
                  _auth.signOut();
                  Navigator.pop(context);
                },
                icon: Icon(Icons.exit_to_app_rounded))
          ],
        ),
      ),
      body: SafeArea(
          child: Row(
        children: [Text('')],
      )),
    );
  }
}
