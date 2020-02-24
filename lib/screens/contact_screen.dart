import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen();

  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['Kontakt', 'Hitta oss'];

    return DefaultTabController(
      length: 2,
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
            Container(),
            Container(
              child: Column(
                children: <Widget>[
                  Text('Hitta oss'),
                  Text('Vi finns i Almbyskolan Örebro, nära universitetet.'),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
