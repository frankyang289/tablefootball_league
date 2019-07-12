import 'package:flutter/material.dart';


class LogMatchPage extends StatefulWidget {
  LogMatchPage({Key key}) : super(key:key);

  @override
  _LogMatchPageState createState() => _LogMatchPageState();
}

class _LogMatchPageState extends State<LogMatchPage> {
  String value = "Pleae select a player name";

  @override
  Widget build(BuildContext context) {
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new DropdownButton<String>(
            items: <String>['Raz', 'Hassan', 'Di', 'Emeka', 'Frank']
                .map((String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
              value = newValue;
          });
          },
          ),
          new DropdownButton<String>(
            items: <String>['Raz', 'Hassan', 'Di', 'Emeka', 'Frank']
                .map((String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          )
        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("Record a match here"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [buttonSection],
        ));
  }
}
