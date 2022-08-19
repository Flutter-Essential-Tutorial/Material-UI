import 'package:flutter/material.dart';
import 'package:flutter_material_ui/screens/components/items/appbar_buttom.dart';

class ComponentsListView extends StatelessWidget {
  const ComponentsListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.bottomStart, children: [
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, AppbarButtomScreen.routeName);
        },
        splashColor: Colors.purple[100],
        child: Container(
          // key: _key1,
          height: 170,
          // width: 200,
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  // width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.amber[100],
                    image: const DecorationImage(
                        image: AssetImage("assets/appbarbottom.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
      Positioned(
        // bottom: 0,
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20),
            color: const Color.fromARGB(195, 216, 216, 216),
          ),
          height: 70,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Hello",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "This gonna be a subitile and short Text",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
