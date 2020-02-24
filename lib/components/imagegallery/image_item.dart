import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  ImageItem({this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: image,
        child: Card(
          elevation: 5.0,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: CachedNetworkImage(
              placeholder: (context, url) => Container(
                child: CircularProgressIndicator(
                  strokeWidth: 1.0,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                ),
                padding: EdgeInsets.all(10.0),
              ),
              imageUrl: image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
