import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/common/header_text.dart';
import 'package:moodowon_orebro/components/common/full_image_card.dart';
import 'package:moodowon_orebro/components/membership/training_schedule_card.dart';

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
        TrainingScheduleCard(
          title: 'Barn Nybörjargruppen',
          schedules: ['Tisdag mellan 18:00-19:00', 'Lördag mellan 13:00-14:00'],
        ),
        TrainingScheduleCard(
          title: 'Barn Fortsättningsgruppen',
          schedules: ['Onsdag mellan 18:00-19:00', 'Lördag mellan 14:00-15:00'],
        ),
        TrainingScheduleCard(
          title: 'Ungdom- och Vuxengruppen',
          schedules: ['Onsdag mellan 19:00-20:00', 'Lördag mellan 15:00-16:00'],
        ),
      ],
    );
  }
}
