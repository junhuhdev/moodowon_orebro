import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/common/full_image_card.dart';
import 'package:moodowon_orebro/components/sport/instructor_card.dart';
import 'package:moodowon_orebro/components/sport/sport_card.dart';
import 'package:moodowon_orebro/components/sport/sport_header.dart';

class SportScreen extends StatelessWidget {
  const SportScreen();

  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['Kamsport', 'Instruktörer'];

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
            SportList(),
            InstructorList(),
          ],
        ),
      ),
    );
  }
}

class SportList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SportHeader(
          title: 'Kampsport',
          description: 'Vi erbjuder dig en komplett självförsvars träning med tre klassiska koreanska kampsporter.',
        ),
        FullImageCard(
          imageUrl: 'http://www.orebro.moodowon.net/gallery/tkd1.jpg',
          title: 'Taekwondo',
          subtitle: 'Vuxen & Barn',
          description: 'Koreansk vapenlös kampsport som ställer höga krav på både fysisk och mental disciplin, vilket präglas av ödmjukhet och hårtarbete.',
          height: 250.0,
        ),
//        SportCard(
//          title: 'Taekwondo',
//          description:
//              'Koreansk vapenlös kampsport som ställer höga krav på både fysisk och mental disciplin, vilket präglas av ödmjukhet och hårtarbete.',
//          imageUrl: 'http://www.orebro.moodowon.net/gallery/tkd1.jpg',
//        ),
        SportCard(
          title: 'Chosun Haedong Gumdo',
          description:
              'Koreansk svärds konst som baseras sig på riktig strids teknik och utgör ett kamp system för mental, fysisk och andlig utveckling.',
          imageUrl: 'http://www.orebro.moodowon.net/gallery/gumdo/gd23.jpg',
        ),
        SportCard(
          title: 'Hapkido',
          description:
              'Koreansk kampkonst som involverar cirkelrörelser, stora som små, som används både i defensivt och offensivt syfte.',
          imageUrl: 'http://www.orebro.moodowon.net/gallery/hapkido/hk7.jpg',
        ),
        SportCard(
          title: 'Zen Meditation & Yoga',
          description:
              'Utöva dynamiska yogaformer med stor tyngdpunkt i biomekanik och kroppsförståelse. Att utöva yoga är bra för både kropp och själ.',
          imageUrl: 'http://www.orebro.moodowon.net/gallery/zen/zen1.jpg',
        ),
      ],
    );
  }
}

class InstructorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SportHeader(
          title: 'Instruktörer',
          description: 'Vi vill hjälpa dig att hitta den bästa versionen av dig själv, i både sinnet och hälsan.',
        ),
        InstructorCard(),
      ],
    );
  }

}
