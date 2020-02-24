import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SportCard extends StatelessWidget {
  const SportCard({this.title, this.description, this.imageUrl});

  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            CachedNetworkImage(
              placeholder: (context, url) => Container(
                child: CircularProgressIndicator(
                  strokeWidth: 1.0,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                ),
                width: 45.0,
                height: 45.0,
                padding: EdgeInsets.all(10.0),
              ),
              imageUrl: imageUrl,
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(description),
          ],
        ),
      ),
    );
  }
}
