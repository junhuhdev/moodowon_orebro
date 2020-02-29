import 'package:flutter/material.dart';

class EmailForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EmailFormState();
  }
}

class _EmailFormState extends State<EmailForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anmäl dig'),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Namn',
                  hintText: 'Namn...',
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: 'Email address',
                  hintText: 'Email...',
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.phone),
                  labelText: 'Mobil nummer',
                  hintText: 'Mobil...',
                ),
                onChanged: (value) {},
              ),
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.comment),
                  labelText: 'Valfri kommentar',
                  hintText: 'Kommentar...',
                ),
                maxLines: 2,
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Center(
                child: RaisedButton(
                  color: Colors.indigo,
                  child: Text(
                    'Skicka',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
