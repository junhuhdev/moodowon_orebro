import 'package:flutter/material.dart';

class EmailForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EmailFormState();
  }
}

class _EmailFormState extends State<EmailForm> {
  String _name = '';
  String _email = '';
  String _mobile = '';
  String _comment = '';
  double _age = 18.0;
  String _trainingType;

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
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: 'Namn',
                hintText: 'Namn...',
              ),
              initialValue: _name,
              onChanged: (val) {
                _name = val;
              },
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.ac_unit),
                Slider(
                  value: _age,
                  min: 5.0,
                  max: 80.0,
                  label: 'Ålder',
                  onChanged: (val) {
                    setState(() {
                      _age = val;
                    });
                  },
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                labelText: 'Email address',
                hintText: 'Email...',
              ),
              initialValue: _email,
              onChanged: (val) {
                _email = val;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                labelText: 'Mobil nummer',
                hintText: 'Mobil...',
              ),
              initialValue: _mobile,
              onChanged: (val) {
                _mobile = val;
              },
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.whatshot),
                labelText: 'Önskar börja på',
                hintText: 'Typ av träning',
              ),
              value: _trainingType,
              isDense: true,
              isExpanded: true,
              items: ['Taekwondo', 'Gumdo', 'Hapkido'].map((val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Text(val),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  _trainingType = val;
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.comment),
                labelText: 'Valfri kommentar',
                hintText: 'Kommentar...',
              ),
              initialValue: _comment,
              maxLines: 2,
              onChanged: (val) {
                _comment = val;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: RaisedButton(
                color: Colors.indigo,
                child: Text(
                  'Skicka',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
