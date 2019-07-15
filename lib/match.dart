class Match {
  String won = "won";
  String loss = "loss";
  String firstPlayer;
  String secondPlayer;
  int firstPlayerScore;
  int secondPlayerScore;

  Match(this.firstPlayer, this.secondPlayer, this.firstPlayerScore, this.secondPlayerScore);

  String getFirstPlayer() {
    return firstPlayer;
  }

  String getSecondPlayer() {
    return secondPlayer;
  }

  int getFirstPlayerScore() {
    return firstPlayerScore;
  }

  int getSecondPlayerScore() {
    return secondPlayerScore;
  }

  String getResult() {
    String result;

    if (firstPlayerScore > secondPlayerScore) {
      result = won;
    } else if (secondPlayerScore > firstPlayerScore) {
      result = loss;
    }

    return result;
  }

}