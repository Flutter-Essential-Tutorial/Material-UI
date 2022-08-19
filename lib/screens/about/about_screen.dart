import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  static String routeName = "/about-us";
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: const Text("Hello"),
    ));
  }
}
