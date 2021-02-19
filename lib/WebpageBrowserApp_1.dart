import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'Home_Page.dart';

class WebPageOne extends StatefulWidget {
  @override
  _WebPageOneState createState() => _WebPageOneState();
}

class _WebPageOneState extends State<WebPageOne> {
  @override
  void initState() {
    super.initState();
    FlutterWebviewPlugin FlutterWebViewPluggin = FlutterWebviewPlugin();
    FlutterWebViewPluggin.onStateChanged.listen((WebViewStateChanged WVS) {
      print(WVS.type);
    });
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
      ),
      url: 'https://new.cima-now.com/',
      withLocalStorage: true,
      supportMultipleWindows: true,
      allowFileURLs: true,
      withZoom: true,
      withLocalUrl: true,
      displayZoomControls: true,
    );
  }
}
