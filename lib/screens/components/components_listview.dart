import 'package:flutter/material.dart';
import 'package:flutter_material_ui/items/app_bar_button_View.dart';
import 'package:flutter_material_ui/items/page/page.dart';

class ComponentsListView extends StatelessWidget {
  const ComponentsListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Container(
          //   margin: const EdgeInsets.only(bottom: 2.5),
          //   decoration: const BoxDecoration(
          //       color: Colors.blue,
          //       borderRadius: BorderRadius.only(
          //           bottomLeft: Radius.circular(5),
          //           bottomRight: Radius.circular(5))),
          //   child: const Text(
          //     " ",
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (c, i) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, PagesView.routeName);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    // padding: const EdgeInsets.all(),
                    height: height / 5,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            child: AppBarBtnView.getImage,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: (height / 5) / 2,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: <Color>[
                                    Colors.black.withOpacity(0.8),
                                    Colors.transparent
                                  ]),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 10,
                          right: 0,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  AppBarBtnView.title,
                                  style: const TextStyle(
                                      fontSize: 25,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
