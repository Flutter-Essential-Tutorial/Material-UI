import 'package:flutter/material.dart';
import 'package:flutter_material_ui/items/app_bar_button_View.dart';
import 'package:flutter_material_ui/screens/code/code_view.dart';

class PagesView extends StatefulWidget {
  static String routeName = "/pages";
  const PagesView({Key? key}) : super(key: key);

  @override
  State<PagesView> createState() => _PagesViewState();
}

class _PagesViewState extends State<PagesView> {
  int currentIndex = 0;
  final screens = [AppBarBtnView(), CodeView(), CodeView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 20,
          selectedItemColor: Colors.blue,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.details),
              label: "Details",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.code),
              label: "Code",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_vert),
              label: "More",
            ),
          ]),
      body: screens[currentIndex],
    );
  }
}
