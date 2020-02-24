import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/sport/sport_header.dart';

class MainScreen extends StatelessWidget {
  const MainScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background_image_2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50.0),
              Text(
                'Ta hand om din kropp och sinne.',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                'Kom och träna Taekwondo med oss i Örebro.',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
