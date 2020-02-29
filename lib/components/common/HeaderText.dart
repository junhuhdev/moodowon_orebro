import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HeaderText extends StatelessWidget {
  final String title;
  final String description;
  final String subDescription;

  const HeaderText({this.title, this.description, this.subDescription});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(title, style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 20.0),
              Text(description),
              SizedBox(height: 10.0),
              Text(subDescription),
            ],
          ),
        ),
      ),
    );
  }
}
