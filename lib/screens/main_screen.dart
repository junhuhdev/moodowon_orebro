import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/common/full_background_card.dart';
import 'package:moodowon_orebro/components/sport/sport_header.dart';

class MainScreen extends StatelessWidget {
  const MainScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SportHeader(
            title: 'Moodowon Örebro',
            description:
                'Ta hand om din kropp och sinne. Kom och träna med oss i Örebro vid Almbyskolans gymnastiksal.',
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              'Vi erbjuder följande',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10.0),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            physics: ScrollPhysics(),
            children: <Widget>[
              FullBackgroundImage(
                title: 'Taekwondo',
                subtitle: '',
                description: '',
                height: 250,
                imageUrl: 'http://www.orebro.moodowon.net/img/pricing_tkd2.jpg',
              ),
              FullBackgroundImage(
                title: 'Chosun Haedong Gumdo',
                subtitle: '',
                description: '',
                height: 250,
                imageUrl: 'https://i.pinimg.com/originals/55/7e/9c/557e9c9f565a61b58008a61a0842f497.jpg',
              ),
              FullBackgroundImage(
                title: 'Hapkido',
                subtitle: '',
                description: '',
                height: 250,
                imageUrl: 'https://www.tryimpact.com.au/wp-content/uploads/2018/01/Hapkido-1-black-background.jpg',
              ),
              FullBackgroundImage(
                title: 'Zen Meditation & Yoga',
                subtitle: '',
                description: '',
                height: 250,
                imageUrl: 'http://www.orebro.moodowon.net/gallery/zen/zen1.jpg',
              )
            ],
          ),
        ],
      ),
    );
  }
}
