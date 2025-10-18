/* Ask the user for a string and print out whether this string is a palindrome or not.*/
import 'dart:io';

void main() {
  stdout.write("Please give a word: ");
  String input = stdin.readLineSync()!.toLowerCase();
  String revInput = input.split('').reversed.join('');

  input == revInput
      ? print("The word is palindrome")
      : print("The word is not a palindrome");
}
