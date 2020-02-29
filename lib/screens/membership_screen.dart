import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/common/HeaderText.dart';
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
            TrainingSchedule(),
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
        HeaderText(
          title: 'Medlemskap',
          description:
              'Träningsavgiften är olika beroende på ålder. I avgiftern ingår försäkring via Svenska Taekwondoförbundet och Sveriges Riksidrottsförbundet hos Folksam på medlemmar som erlagt halv- eller helårsavgift.',
          subDescription: 'Välj mellan tre av våra koreanska kampsporter och börja träna redan idag.',
        ),
        FullImageCard(
          imageUrl: 'http://www.orebro.moodowon.net/img/pricing_tkd2.jpg',
          title: 'Taekwondo',
          subtitle: '1000 SEK per termin',
          description: 'Barn & Ungdomgrupp 7-17 år 800 SEK',
          height: 250.0,
        ),
        FullImageCard(
          imageUrl: 'https://i.pinimg.com/originals/55/7e/9c/557e9c9f565a61b58008a61a0842f497.jpg',
          title: 'Chosun Haedong Gumdo',
          subtitle: '1000 SEK per termin',
          description: 'Barn & Ungdomgrupp 7-17 år 800 SEK',
          height: 250.0,
        ),
        FullImageCard(
          imageUrl: 'https://www.tryimpact.com.au/wp-content/uploads/2018/01/Hapkido-1-black-background.jpg',
          title: 'Hapkido',
          subtitle: '1000 SEK per termin',
          description: 'Barn & Ungdomgrupp 7-17 år 800 SEK',
          height: 250.0,
        ),
      ],
    );
  }
}

class TrainingSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HeaderText(
          title: 'Schema',
          description: 'Schema för barn nybörjargrupp, barn fortsättningsgrupp, ungdom- & vuxengrupp.',
          subDescription:
              'Vi har just nu bara TKD träningar men vi ska ha andra kampsport träningar i början på nästa termin.',
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Barn Nybörjargruppen', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.watch_later, color: Colors.black45),
                      SizedBox(width: 10.0),
                      Text('Tisdag mellan 18:00-19:00'),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.watch_later, color: Colors.black45),
                      SizedBox(width: 10.0),
                      Text('Lördag mellan 13:00-14:00'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Barn Fortsättningsgruppen', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.watch_later, color: Colors.black45),
                      SizedBox(width: 10.0),
                      Text('Onsdag mellan 18:00-19:00'),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.watch_later, color: Colors.black45),
                      SizedBox(width: 10.0),
                      Text('Lördag mellan 14:00-15:00'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Ungdom- och Vuxengruppen', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.watch_later, color: Colors.black45),
                      SizedBox(width: 10.0),
                      Text('Onsdag mellan 19:00-20:00'),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.watch_later, color: Colors.black45),
                      SizedBox(width: 10.0),
                      Text('Lördag mellan 15:00-16:00'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
