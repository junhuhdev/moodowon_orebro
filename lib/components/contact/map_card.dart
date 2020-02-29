import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/contact/marker.dart';
import 'package:moodowon_orebro/components/contact/static_map_provider.dart';

class MapCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String apiKey = "AIzaSyBM9V5LdnczVfAC9v6tbG0QanV8tE5lq48";
    ThemeData theme = Theme.of(context);
    const _lat = 35.6957954;
    const _lang = 139.69038920000003;
    final Marker _marker = new Marker("place", "", _lat, _lang, color: theme.accentColor);
    var staticMapProvider = new StaticMapProvider(apiKey);
    Uri staticMapUri = staticMapProvider.getStaticUriWithMarkers([_marker], 14, width: 900, height: 450);

    return SingleChildScrollView(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Container(
                child: new Image.network(staticMapUri.toString()),
              )
            ],
          )
        ],
      ),
    );
  }
}
