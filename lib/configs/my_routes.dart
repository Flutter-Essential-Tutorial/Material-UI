import 'package:flutter/material.dart';
import 'package:flutter_material_ui/screens/home/home_screen.dart';

var myRoutes = <String, WidgetBuilder>{
  HomeScreen.routeName: (_) => const HomeScreen(),
};
