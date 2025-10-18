/*Ask the user for a number and determine whether the
  number is prime or not? using 'List comprehensions'*/
import 'dart:io';

main() {
  stdout.write("Please give us a number: ");
  var n = int.parse(stdin.readLineSync()!);
  isPrime(n);
}

isPrime(int n) {
  // List comprehensions
  List<dynamic> a = [
    for (var i = 1; i <= n; i++)
      if (n % i == 0) i,
  ];
  (a.length == 2)
      ? print("The given number is prime.")
      : print("The given number is not prime.");
}
