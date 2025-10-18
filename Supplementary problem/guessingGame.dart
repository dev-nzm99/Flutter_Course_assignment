/*
Generate a random number between 1 and 100.Ask the user
to guess the number, then tell them whether they guessed
too low, too high, or exactly right.

Keep track of how many guesses the user has taken, and
when the game ends, print this out.
*/
import 'dart:io';
import 'dart:math';

main() {
  print("Type exit to quit the game!");
  guessingGame();
}

void guessingGame() {
  var random = Random();
  int num = random.nextInt(100);
  int attempt = 0;
  while (true) {
    attempt++;
    stdout.write("Please choose a number between 1 to 100: ");
    String choosenNumber = stdin.readLineSync()!;
    if (choosenNumber.toLowerCase() == "exit") {
      print("\nBye.");
      break;
    } else if (int.parse(choosenNumber) > 100) {
      print("please do not go over 100.");
      continue;
    }

    if (int.parse(choosenNumber) == num) {
      print("“Exactly!” You tried $attempt times.");
      break;
    } else if (int.parse(choosenNumber) > num) {
      print("You are higher...");
      continue;
    } else {
      print("You are lower...");
      continue;
    }
  }
  return;
}
