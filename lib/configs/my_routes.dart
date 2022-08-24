import 'package:flutter/material.dart';
import 'package:flutter_material_ui/items/page/page.dart';
import 'package:flutter_material_ui/screens/about/about_screen.dart';
import 'package:flutter_material_ui/screens/code/code_view.dart';
import 'package:flutter_material_ui/screens/components/components_screen.dart';
import 'package:flutter_material_ui/screens/home/home_screen.dart';
import '../items/app_bar_button_View.dart';

var myRoutes = <String, WidgetBuilder>{
  HomeScreen.routeName: (context) => const HomeScreen(),
  AboutUsScreen.routeName: (context) => const AboutUsScreen(),
  ComponentScreen.routeName: (context) => const ComponentScreen(),
  AppBarBtnView.routeName: (context) => AppBarBtnView(),
  CodeView.routeName: (context) => CodeView(),
  PagesView.routeName: (context) => const PagesView()
};
