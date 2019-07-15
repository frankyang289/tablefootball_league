import 'package:flutter/material.dart';
import 'record_scores.dart';
import 'league_table.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'BP Table Footbal League Table',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ),
                Text(
                  'A mobile app to keep scores and tabulate points from all games',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton(
              child: Text("Log match"),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogMatchPage()));
              }),
          RaisedButton(
            child: Text("League table"),
            color: Colors.green,
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LeagueTable()));
            },
          ),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Click on "Log Match" to select player names and record the outcome of a match. '
        'Each new entry updates the league table which can be viewed by clicking on the '
        '"League Table" button on the right. \n'
        '\n'
        'Scoring system: a win is 3 points and a loss awards 0. At the end of each season the player '
        'with the highest number of points wins. If two (or more) players have the same number of '
        'points, then the goal difference will be factored in.',
        softWrap: true,
        style: TextStyle(color: Colors.grey[500]),
      ),
    );

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'images/9.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}