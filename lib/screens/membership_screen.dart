import 'package:flutter/material.dart';

class MembershipScreen extends StatelessWidget {
  const MembershipScreen();

  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['Medlemskap', 'Schema'];

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
            Container(),
          ],
        ),
      ),
    );
  }
}
