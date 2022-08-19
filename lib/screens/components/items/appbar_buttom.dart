import 'package:flutter/material.dart';

class AppbarAttributes {
  // final String title;
  // final String
}

class AppbarButtomScreen extends StatelessWidget {
  static String routeName = "/appBar";
  const AppbarButtomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("this is appbar button screen"),
      ),
    );
  }
}
