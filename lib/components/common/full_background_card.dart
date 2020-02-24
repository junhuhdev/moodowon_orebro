import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FullBackgroundImage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;
  final double height;

  const FullBackgroundImage({this.imageUrl, this.title, this.subtitle, this.description, this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: height,
        child: Card(
          color: Colors.black,
          elevation: 5.0,
          child: Stack(
            children: <Widget>[
              new SizedBox.expand(
                child: new Material(
                  borderRadius: new BorderRadius.circular(25.0),
                  color: Colors.black,
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
                      begin: Alignment.topCenter,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Text(title,
                            style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
