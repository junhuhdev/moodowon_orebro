import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/imagegallery/image_item.dart';
import 'package:moodowon_orebro/models/image_gallery_data.dart';

class ImageGalleryScreen extends StatelessWidget {
  const ImageGalleryScreen();

  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['Taekwondo', 'Gumdo', 'Hapkido'];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: TabBar(
          labelColor: Colors.indigo,
          isScrollable: false,
          tabs: <Widget>[
            for (final tab in tabs) Tab(text: tab),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Gallery(images: ImageGalleryData.tkdImages),
            Gallery(images: ImageGalleryData.gumdoImages),
            Gallery(images: ImageGalleryData.hapkidoImages),
          ],
        ),
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  final List<String> images;

  const Gallery({this.images});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 2,
      childAspectRatio: 1,
      children: images.map((image) => ImageItem(image: image)).toList(),
    );
  }
}
