import 'dart:io';
import "dart:math";

enum StateMove {
  Rock,
  Paper,
  Scissors;
}

String takePlayerMove() {
  print("Select Rock , Paper , Scissors ?");
  String playerMoveSelect = stdin.readLineSync()!.toUpperCase();
 
  switch (playerMoveSelect) {
    case "ROCK":
      return "Rock";
      break;
    case "PAPER":
      return "Paper";
      break;

    case "SCISSORS":
      return "Scissors";
      break;
    default:
      print("Exiting...");
      return "Nothing";

      break;
  }
}

String? takeComputerMove() {
  Random rand = new Random();
  int move = rand.nextInt(3);

  switch (move) {
    case 0:
      return "Rock";
      break;
    case 1:
      return "Paper";
      break;
    case 2:
      return "Scissors";
      break;
    default:
      break;
  }
}

int playerScore = 0;
int computerScore = 0;
int counter = 0;
String selectWinner(String playerMove, String computerMove) {
  if (playerMove == computerMove) if (counter != 0) {
    counter--;
    return "Tie! && Player Score : $playerScore  | Computer Score : $computerScore  ";
  } else {
    return "Tie! && Player Score : $playerScore  | Computer Score : $computerScore  ";
  }
  else if (playerMove == "Rock" && computerMove == "Scissors") {
    playerScore++;
    return "Player win! && Player Score : $playerScore  | Computer Score : $computerScore  ";
  } else if (playerMove == "Scissors" && computerMove == "Paper") {
    playerScore++;
    return "Player win! && Player Score : $playerScore  | Computer Score : $computerScore  ";
  } else if (playerMove == "Paper" && computerMove == "Rock") {
    playerScore++;
    return "Player win! && Player Score : $playerScore  | Computer Score : $computerScore  ";
  } else {
    computerScore++;

    return "Computer win! && Player Score : $playerScore  | Computer Score : $computerScore  ";
  }
}

void main() {
  print("Rock , Paper  , Scissors");
  bool gameStart = true;
  int counter = 0;
  while (gameStart && counter < 3) {
    String playerMove = takePlayerMove();
    if (playerMove == "Nothing") {
      return;
    }

    print("You played $playerMove");
    String computerMove = takeComputerMove()!;
    print("Computer played $computerMove");
    counter++;
    print(selectWinner(playerMove, computerMove));
  }
}
