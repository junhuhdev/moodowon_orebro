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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => ImageFullScreen(image: image),
                ),
              );
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

class ImageFullScreen extends StatelessWidget {
  final String image;

  const ImageFullScreen({this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Hero(
        tag: image,
        child: CachedNetworkImage(
          placeholder: (context, url) => Container(
            child: CircularProgressIndicator(
              strokeWidth: 1.0,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            ),
            padding: EdgeInsets.all(10.0),
          ),
          imageUrl: image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
