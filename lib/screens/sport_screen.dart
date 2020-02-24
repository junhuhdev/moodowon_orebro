import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/sport_card.dart';

class SportScreen extends StatelessWidget {
  const SportScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            SportCard(
              title: 'Taekwondo',
              description:
                  'Koreansk vapenlös kampsport som ställer höga krav på både fysisk och mental disciplin, vilket präglas av ödmjukhet och hårtarbete.',
            imageUrl: 'http://www.orebro.moodowon.net/gallery/tkd1.jpg',
            ),
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
        ),
      ),
    );
  }
}
