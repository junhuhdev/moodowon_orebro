import 'package:flutter/material.dart';

class SportHeader extends StatelessWidget {
  final String title;
  final String description;

  const SportHeader({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Text(title, style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 20.0),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
