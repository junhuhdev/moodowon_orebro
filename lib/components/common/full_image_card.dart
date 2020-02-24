import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FullImageCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;

  const FullImageCard({this.imageUrl, this.title, this.subtitle, this.description});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new SizedBox.expand(
          child: new Material(
            borderRadius: new BorderRadius.circular(12.0),
            child: new CachedNetworkImage(
              placeholder: (context, url) => CircularProgressIndicator(),
              imageUrl: imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        new SizedBox.expand(
          child: new Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [Colors.transparent, Colors.black87],
                begin: Alignment.center,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        new Align(
          alignment: Alignment.bottomLeft,
          child: new Container(
            padding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(title, style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
                new Padding(padding: new EdgeInsets.only(bottom: 1.0)),
                new Text(subtitle, style: new TextStyle(fontSize: 13.0, color: Colors.white)),
                new Padding(padding: new EdgeInsets.only(bottom: 4.0)),
                new Text(
                  description,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 11.0, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
