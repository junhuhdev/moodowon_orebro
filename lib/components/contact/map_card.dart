import 'package:flutter/material.dart';
import 'package:moodowon_orebro/components/contact/marker.dart';
import 'package:moodowon_orebro/components/contact/static_map_provider.dart';
import 'package:moodowon_orebro/components/sport/sport_header.dart';

class MapCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String apiKey = "AIzaSyBM9V5LdnczVfAC9v6tbG0QanV8tE5lq48";
    ThemeData theme = Theme.of(context);
    const _lat = 59.259883;
    const _lang = 15.245307;
    final Marker _marker = new Marker("place", "", _lat, _lang, color: theme.accentColor);
    var staticMapProvider = new StaticMapProvider(apiKey);
    Uri staticMapUri = staticMapProvider.getStaticUriWithMarkers([_marker], 14, width: 900, height: 450);

    return SingleChildScrollView(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SportHeader(
            title: 'Hitta oss',
            description: 'Vi finns i Örebro vid Almbyskolans gymnastiksal',
          ),
          new Stack(
            children: <Widget>[
              new Container(
                child: new Image.network(staticMapUri.toString()),
              )
            ],
          ),
          new Container(
            color: theme.primaryColor,
            padding: const EdgeInsets.all(16.0),
            child: new Row(
              children: [
                Icon(Icons.place, color: Colors.white),
                SizedBox(width: 10.0),
                new Expanded(
                  child: new Text(
                    'Prostvägen 10B, 702 84 Örebro',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
