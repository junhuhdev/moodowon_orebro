import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen();

  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['Kontakt', 'Hitta oss'];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: TabBar(
          labelColor: Colors.indigo,
          isScrollable: false,
          tabs: <Widget>[
            for (final tab in tabs) Tab(text: tab),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            ContactInfo(),
            LocationInfo(),
          ],
        ),
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class LocationInfo extends StatelessWidget {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
//    return WebviewScaffold(
//      url: 'https://goo.gl/maps/f7Z5mx8wsSANdar99',
//      appCacheEnabled: true,
//
//    );
    return WebView(
//      initialUrl: 'https://goo.gl/maps/f7Z5mx8wsSANdar99',
      initialUrl: Uri.dataFromString(
          '<html><body><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2039.3845592276034!2d15.24308125222361!3d59.25972398154447!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x465c14509b3d6e97%3A0x56b8f9d543c87356!2sProstv%C3%A4gen%2010B%2C%20702%2084%20%C3%96rebro!5e0!3m2!1ssv!2sse!4v1583007287711!5m2!1ssv!2sse" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe></body></html>',
          mimeType: 'text/html')
          .toString(),
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}
