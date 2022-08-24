import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CodeView extends StatelessWidget {
  static String routeName = "/code";
  CodeView({Key? key}) : super(key: key);
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(10),
        // child: WebView(
        //   initialUrl: "",
        //   javascriptMode: JavascriptMode.unrestricted,
        //   onWebViewCreated: (controller) {
        //     _controller = controller;
        //     _loadHtmlFormAsset();
        //   },
        // ),
        child: Center(
          child: ClipRRect(
            child: Image.asset(
              "assets/html/code.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }

  _loadHtmlFormAsset() async {
    // web view Testing
    var content = await rootBundle.loadString('assets/text.html');
    final url = Uri.dataFromString(content,
            encoding: Encoding.getByName("utf-8"), mimeType: "text/html")
        .toString();

    _controller.loadUrl(url);
  }
}
