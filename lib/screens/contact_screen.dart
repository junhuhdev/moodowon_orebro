import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:moodowon_orebro/components/contact/map_card.dart';
import 'package:moodowon_orebro/components/sport/sport_header.dart';
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
            MapCard(),
          ],
        ),
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SportHeader(
            title: 'Kontakt',
            description: 'Vi välkommnar dig till vår organisation, kontakta oss för eventuella frågor.',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 40.0, left: 40.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  enabled: false,
                  readOnly: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: 'gdmasterlim@gmail.com',
                  ),
                  onChanged: (value) {},
                ),
                TextFormField(
                  enabled: false,
                  readOnly: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.phone),
                    labelText: '0705309698',
                  ),
                  onChanged: (value) {},
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

class LocationInfo extends StatelessWidget {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
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
