import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor:
            Color.fromARGB(255, 240, 120, 40), //background color of app bar
        brightness: Brightness
            .dark, //redAccent is darker color so set brightness to dark
        elevation: 5.0,
      ),
    );
  }
}
