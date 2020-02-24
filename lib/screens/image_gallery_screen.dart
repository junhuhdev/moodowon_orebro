import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/imagegallery/image_item.dart';
import 'package:moodowon_orebro/models/image_gallery_data.dart';

class ImageGalleryScreen extends StatelessWidget {
  const ImageGalleryScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: ImageGalleryData.tkdImages.map((image) => ImageItem(image: image)).toList(),
        ),
      ),
    );
  }
}
