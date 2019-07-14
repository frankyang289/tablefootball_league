import 'package:flutter/material.dart';
import 'user.dart';

class LogMatchPage extends StatefulWidget {
  LogMatchPage({Key key}) : super(key: key);

  @override
  _LogMatchPageState createState() => new _LogMatchPageState();
}

class _LogMatchPageState extends State<LogMatchPage> {
  List<User> users;
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentPlayers;

  @override
  void initState() {
    users = User.getUsers();
    _dropDownMenuItems = getDropDownMenuItems();
    _currentPlayers = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (User user in users) {
      items.add(new DropdownMenuItem(value: user.playerName, child: new Text(user.playerName)));
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
        ],
      ));

      Widget dropDownSection2 = new Container(
        child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Text("Select player two: "),
          new DropdownButton(
            value: _currentPlayers,
            items: _dropDownMenuItems,
            hint: Text("Please select a player"),
            onChanged: changedDropDownItem,
          ),
        ],
      ));

    return Scaffold(
        appBar: AppBar(
          title: Text("Record scores here"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
            dropDownSection,
            dropDownSection2],
        ),
    );
  }
}
