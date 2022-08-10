import 'package:flutter/material.dart';

class ComponentScreen extends StatefulWidget {
  const ComponentScreen({Key? key}) : super(key: key);

  @override
  State<ComponentScreen> createState() => _ComponentScreenState();
}

class _ComponentScreenState extends State<ComponentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Components")),
    );
  }
}
