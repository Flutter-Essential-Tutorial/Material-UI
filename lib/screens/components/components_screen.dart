import 'package:flutter/material.dart';
import 'package:flutter_material_ui/screens/components/components_listview.dart';

class ComponentScreen extends StatefulWidget {
  static String routeName = "/components";
  const ComponentScreen({Key? key}) : super(key: key);

  @override
  State<ComponentScreen> createState() => _ComponentScreenState();
}

class _ComponentScreenState extends State<ComponentScreen> {
  // final _key1 = GlobalKey();
  // final _key2 = GlobalKey();
  // final _key3 = GlobalKey();
  // final _key4 = GlobalKey();
  // final _key5 = GlobalKey();

  final List<String> items = <String>["A", 'B', 'C', "D", "e"];
  // final List<Widget> items = <Widget>[
  // const AppbarButtomScreen(),
  // const AppbarButtomScreen(),
  // const AppbarButtomScreen()
  // ];
  final List<int> colorCodes = <int>[100, 200, 300];

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: ComponentsListView()));
  }
}
