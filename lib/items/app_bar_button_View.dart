import 'package:flutter/material.dart';
import 'package:flutter_material_ui/screens/code/code_view.dart';

class AppBarBtnView extends StatefulWidget {
  static String routeName = "/appBtn";
  static String title = "AppBar: Bottom";
  static Image getImage =
      Image.asset("assets/appbarbottom.png", fit: BoxFit.cover);

  const AppBarBtnView({Key? key}) : super(key: key);

  @override
  State<AppBarBtnView> createState() => _AppBarBtnViewState();
}

class _AppBarBtnViewState extends State<AppBarBtnView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 3;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DetailsTextBox(height: height),
            DemoViewBox(height: height),
          ],
        ),
      ),
    );
  }
}

class DemoViewBox extends StatelessWidget {
  const DemoViewBox({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: height / 1.5,
        decoration: BoxDecoration(
            // boxShadow: BoxShadow(blurRadius: ),
            color: Colors.blue.shade100,
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.blue[300],
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Colors.blue[300],
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.add, color: Colors.white),
                      Spacer(),
                      Icon(Icons.search, color: Colors.white),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailsTextBox extends StatelessWidget {
  const DetailsTextBox({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: height,
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Scaffold(
            body: Container(
              padding: const EdgeInsets.all(5),
              child: const Text(
                "The quick Brown Fox jumps over the lazy dog The quick Brown Fox jumps over the lazy dogThe quick Brown Fox jumps over the lazy dogThe quick Brown Fox jumps over the lazy dogThe quick Brown Fox jumps over the lazy dogThe quick Brown Fox jumps over the lazy dogThe quick Brown Fox jumps over the lazy dogThe quick Brown Fox jumps over the lazy dogThe quick Brown Fox jumps over the lazy dogThe quick Brown Fox jumps over the lazy dog",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
