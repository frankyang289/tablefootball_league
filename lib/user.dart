class User {
  String playerName;
  int wins;
  int losses;
  int goalsFor;
  int goalsAgainst;
  int points;

  User({this.playerName, this.wins, this.losses, this.goalsFor, this.goalsAgainst, this.points});

  static List<User> getUsers(){
    return <User>[
      User(playerName: "Hassan", wins: 0, losses: 0, goalsFor: 0, goalsAgainst: 0, points: 0),
      User(playerName: "Dirushan", wins: 0, losses: 0, goalsFor: 0, goalsAgainst: 0, points: 0),
      User(playerName: "Razmick", wins: 0, losses: 0, goalsFor: 0, goalsAgainst: 0, points: 0),
      User(playerName: "Emeka", wins: 0, losses: 0, goalsFor: 0, goalsAgainst: 0, points: 0),
      User(playerName: "Kenny", wins: 0, losses: 0, goalsFor: 0, goalsAgainst: 0, points: 0),
      User(playerName: "Frank", wins: 0, losses: 0, goalsFor: 0, goalsAgainst: 0, points: 0),
    ];
  }
}