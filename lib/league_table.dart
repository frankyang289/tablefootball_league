import 'package:flutter/material.dart';
import 'user.dart';

class LeagueTable extends StatefulWidget {
  LeagueTable({Key key}) : super(key: key);

  @override
  _LeagueTablePageState createState() => new _LeagueTablePageState();
}

class _LeagueTablePageState extends State<LeagueTable> {
  List<User> users;
  bool sort;

  @override
  void initState(){
    sort = false;
    users = User.getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget tableSection = new SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          DataColumn(
            label: Text("Player"),
            numeric: false,
            tooltip: "This is the player name"
          ),
          DataColumn(
            label: Text("Wins"),
            numeric: true,
            tooltip: "This is the player name"
          ),
          DataColumn(
            label: Text("Losses"),
            numeric: true,
            tooltip: "This is the player name"
          ),
          DataColumn(
            label: Text("Goals for"),
            numeric: true,
            tooltip: "This is the player name"
          ),
          DataColumn(
            label: Text("Goals against"),
            numeric: true,
            tooltip: "This is the player name"
          ),
          DataColumn(
            label: Text("Points"),
            numeric: true,
            tooltip: "This is the player name",
            ),
        ],
        rows: users.map(
          (users) => DataRow(
            cells: [
              DataCell(Text(users.playerName)),
              DataCell(Text(users.wins.toString())),
              DataCell(Text(users.losses.toString())),
              DataCell(Text(users.goalsFor.toString())),
              DataCell(Text(users.goalsAgainst.toString())),
              DataCell(Text(users.points.toString())),
            ]
          )
        ).toList()
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("League table"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
              tableSection
          ],
        ),
    );
  }
}