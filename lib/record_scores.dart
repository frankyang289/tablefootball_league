import 'package:flutter/material.dart';
import 'user.dart';

class LogMatchPage extends StatefulWidget {
  LogMatchPage({Key key}) : super(key: key);

  @override
  _LogMatchPageState createState() => new _LogMatchPageState();
}

class _LogMatchPageState extends State<LogMatchPage> {
  List _players = ["Emeka", "Dirushan", "Hassan", "Razmick", "Kenny", "Frank"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentPlayers;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentPlayers = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String player in _players) {
      items.add(new DropdownMenuItem(value: player, child: new Text(player)));
    }
    return items;
  }

  void changedDropDownItem(String selectedPlayer) {
    setState(() {
      _currentPlayers = selectedPlayer;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget dropDownSection = new Container(
        child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Text("Select player one: "),
          new DropdownButton(
            value: _currentPlayers,
            items: _dropDownMenuItems,
            hint: Text("Please select a player"),
            onChanged: changedDropDownItem,
          ),
          new Text("Select player two: "),
          new DropdownButton(
            value: _currentPlayers,
            items: _dropDownMenuItems,
            hint: Text("Please select a player"),
            onChanged: changedDropDownItem,
          )
        ],
      ));

    return Scaffold(
        appBar: AppBar(
          title: Text("Record scores here"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [dropDownSection],
        ),
      );
  }
}
