import 'package:flutter/material.dart';

class SportHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Text('Kampsport', style: TextStyle(fontSize: 25.0 ,fontWeight: FontWeight.bold)),
              SizedBox(height: 20.0),
              Text('Vi erbjuder dig en komplett självförsvars träning med tre klassiska koreanska kampsporter.'),
            ],
          ),
        ),
      ),
    );
  }
}