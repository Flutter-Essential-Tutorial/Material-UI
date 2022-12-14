import 'package:flutter/material.dart';
import 'package:flutter_material_ui/screens/about/about_screen.dart';
import 'package:flutter_material_ui/screens/components/components_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController tabController;
  int active = 0;

  List<NavItem> navItemList = [
    NavItem(
        icon: Icons.pages, title: "Compontents", page: const ComponentScreen()),
    NavItem(icon: Icons.pages, title: "About Us", page: const AboutUsScreen())
  ];

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(vsync: this, length: navItemList.length, initialIndex: 0)
          ..addListener(() {
            setState(() {
              active = tabController.index;
            });
          });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text("Material UI")),
      drawer: myDrawer(context, navItemList, tabController, false),
      body: TabBarView(
        //physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: navItemList.map((e) => e.page!).toList(),
      ),
    );
  }

  Drawer myDrawer(BuildContext context, List<NavItem> items,
      TabController controller, bool drawerStatus) {
    return Drawer(
      child: SafeArea(
        child: ListView(
            padding: EdgeInsets.zero,
            children: items.map((e) {
              var index = items.indexOf(e);
              return drawerList(
                context,
                controller,
                drawerStatus,
                e.icon!,
                e.title!,
                index,
              );
            }).toList()),
      ),
    );
  }

  Widget drawerList(BuildContext context, TabController controller,
      bool drawerStatus, IconData icon, String title, int index) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        controller.animateTo(index);
        drawerStatus
            ? Navigator.pop(context)
            : debugPrint("Hello $index || $drawerStatus");
        if (scaffoldKey.currentState!.isDrawerOpen) {
          //check if drawer is closed
          scaffoldKey.currentState!.closeDrawer(); //open drawer
        }
      },
    );
  }
}

class NavItem {
  IconData? icon;
  String? title;
  Widget? page;

  NavItem({this.icon, this.title, this.page});
}
