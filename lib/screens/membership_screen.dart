import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/common/full_image_card.dart';
import 'package:moodowon_orebro/components/sport/sport_header.dart';

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
            MembershipList(),
            Container(),
          ],
        ),
      ),
    );
  }
}

class MembershipList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SportHeader(
          title: 'Medlemskap',
          description: 'Välj mellan tre av våra koreanska kampsporter och börja träna redan idag!',
        ),
        FullImageCard(
          imageUrl: 'http://www.orebro.moodowon.net/img/pricing_tkd2.jpg',
          title: 'Taekwondo',
          subtitle: '1000 SEK per termin',
          description: 'Barn & Ungdomgrupp 7-17 år 800 SEK',
        ),
      ],
    );
  }

}