import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebPagetwo extends StatefulWidget {
  @override
  _WebPagetwoState createState() => _WebPagetwoState();
}

class _WebPagetwoState extends State<WebPagetwo> {
  TextEditingController controller = TextEditingController();
  FlutterWebviewPlugin flutterWebViewPluggin = FlutterWebviewPlugin();
  @override
  void initState() {
    super.initState();
    flutterWebViewPluggin.onStateChanged.listen((WebViewStateChanged WVS) {
      print(WVS.type);
    });
  }

  var urlString = 'https://www.google.com';
  /*lauchURL() {
    setState(() {
      this.urlString = controller.text;
      flutterWebViewPluggin.reloadUrl(urlString);
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      url: urlString,
      withLocalStorage: true,
      supportMultipleWindows: true,
      allowFileURLs: true,
      withLocalUrl: true,
      displayZoomControls: true,
    );
  }
}
