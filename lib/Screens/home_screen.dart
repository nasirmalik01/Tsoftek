import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();
  var urlString = "https://tsoftek.com/";
  final _history = [];

  late StreamSubscription<String> _onUrlChanged;
  // final flutterWebViewPlugin = FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();
    // flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged wvs) {
    //   print(wvs.type);
    // });

    _onUrlChanged = flutterWebviewPlugin.onUrlChanged.listen((String url) {
      if (mounted) {
        if(url.contains("@") || url.contains("tel")){
          makePhoneCall(url);
        }
        setState(() {
          _history.add('onUrlChanged: $url');
        });

      }
    });

    flutterWebviewPlugin.onHttpError.listen((event) async {
      await flutterWebviewPlugin.goBack();

      await flutterWebviewPlugin.reloadUrl("https://tsoftek.com/");
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
        url: urlString,
        withZoom: false,

      ),
    );
  }
}


Future<void> makePhoneCall(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}