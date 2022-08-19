import 'package:flutter/material.dart';
import 'package:flutter_material_ui/screens/about/about_screen.dart';
import 'package:flutter_material_ui/screens/components/components_screen.dart';
import 'package:flutter_material_ui/screens/home/home_screen.dart';

import '../screens/components/items/appbar_buttom.dart';

var myRoutes = <String, WidgetBuilder>{
  HomeScreen.routeName: (context) => const HomeScreen(),
  AboutUsScreen.routeName: (context) => const AboutUsScreen(),
  ComponentScreen.routeName: (context) => const ComponentScreen(),
  AppbarButtomScreen.routeName: (context) => const AppbarButtomScreen()
};
