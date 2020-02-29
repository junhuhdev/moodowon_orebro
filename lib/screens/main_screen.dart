import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/common/full_background_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0),
              Text(
                'Ta hand om din kropp och sinne.',
              ),
              SizedBox(height: 10.0),
              Text(
                'Kom och träna Taekwondo med oss i Örebro.',
              ),
              SizedBox(height: 10.0),
              Text(
                'Vi erbjuder följande.',
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
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
                      imageUrl:
                          'https://www.tryimpact.com.au/wp-content/uploads/2018/01/Hapkido-1-black-background.jpg',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
