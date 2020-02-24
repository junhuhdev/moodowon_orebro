import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class InstructorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 338.0,
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Content(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new SizedBox.expand(
          child: new Material(
            borderRadius: new BorderRadius.circular(12.0),
            child: new CachedNetworkImage(
              placeholder: (context, url) => CircularProgressIndicator(),
              imageUrl: 'http://www.orebro.moodowon.net/img/team/simonlim_bakgrund.jpg',
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
                new Text('GM Mästare Simon Lim',
                    style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
                new Padding(padding: new EdgeInsets.only(bottom: 1.0)),
                new Text('Ledare & Instruktör', style: new TextStyle(fontSize: 13.0, color: Colors.white)),
                new Padding(padding: new EdgeInsets.only(bottom: 4.0)),
                new Text(
                  'Mästare Simon är en flerfaldig koreansk mästare med internationella meriter. År 1988 grundade han sin egen förening, Örebro taekwondo föreningen.',
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

class InstructorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle = theme.textTheme.headline.copyWith(color: Colors.white);
    final TextStyle descriptionStyle = theme.textTheme.subhead;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 184.0,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: CachedNetworkImage(
                  placeholder: (context, url) => Container(
                    child: CircularProgressIndicator(
                      strokeWidth: 1.0,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                    ),
                    padding: EdgeInsets.all(10.0),
                  ),
                  imageUrl: 'http://www.orebro.moodowon.net/img/team/simonlim_bakgrund.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'GM Mästare Simon Lim',
                    style: titleStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: DefaultTextStyle(
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: descriptionStyle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // This array contains the three line description on each card
                // demo.
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Ledare & Instruktör',
                    style: descriptionStyle.copyWith(color: Colors.black54),
                  ),
                ),
                Text('city...'),
                Text('location'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
