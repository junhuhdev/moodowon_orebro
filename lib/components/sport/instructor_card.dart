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
                child: InstructorContent(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(title, style: Theme.of(context).textTheme.subhead),
      ),
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
