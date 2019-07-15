class User {
  String playerName;
  int wins;
  int losses;
  int goalsFor;
  int goalsAgainst;
  int goalDifference;
  int points;

  User({this.playerName, this.wins, this.losses, this.goalsFor, this.goalsAgainst, this.goalDifference, this.points});

  String getUserName() {
    return playerName;
  }

  void setPlayerName(String playerName) {
    this.playerName = playerName;
  }

  int getWins() {
    return wins;
  }

  void setWins(int wins) {
    this.wins = wins;
  }

  int getLosses() {
    return losses;
  }

  void setLosses(int losses) {
    this.losses = losses;
  }

  int getGoalsFor() {
    return goalsFor;
  }

  void setGoalsFor(int goalsFor) {
    this.goalsFor = goalsFor;
  }

  int getGoalsAgainst() {
    return goalsAgainst;
  }

  void setGoalsAgainst(int goalsAgainst) {
    this.goalsAgainst = goalsAgainst;
  }

  int getGoalDifference() {
    return goalDifference;
  }

  void setGoalDifference(int goalDifference) {
    this.goalDifference = goalDifference;
  }

  int getPoints() {
    return points;
  }

  void setPoints(int points) {
    this.points = points;
  }

  static List<User> getUsers(){
    return <User>[
      User(playerName: "Hassan", wins: 0, losses: 0, goalsFor: 0, goalsAgainst: 0, points: 3),
      User(playerName: "Dirushan", wins: 0, losses: 0, goalsFor: 0, goalsAgainst: 0, points: 0),
      User(playerName: "Razmick", wins: 0, losses: 0, goalsFor: 0, goalsAgainst: 0, points: 0),
      User(playerName: "Emeka", wins: 0, losses: 0, goalsFor: 0, goalsAgainst: 0, points: 6),
      User(playerName: "Kenny", wins: 0, losses: 0, goalsFor: 0, goalsAgainst: 0, points: 0),
      User(playerName: "Frank", wins: 0, losses: 0, goalsFor: 0, goalsAgainst: 0, points: 0),
    ];
  }
}