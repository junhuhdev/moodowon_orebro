import 'package:flutter/material.dart';

class TrainingScheduleCard extends StatelessWidget {
  final String title;
  final List<String> schedules;

  const TrainingScheduleCard({this.title, this.schedules});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              for (var schedule in schedules)
                Column(
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.watch_later, color: Colors.black45),
                        SizedBox(width: 10.0),
                        Text(schedule),
                      ],
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
