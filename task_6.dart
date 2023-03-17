import 'dart:io';

void main() {
  print("*********CHECKING FOR PALINDROME***********");
  print("enter any word:");
  String word = stdin.readLineSync() as String;

  String revrse = "";

  for (int i = word.length - 1; i >= 0; i--) {
    revrse += word[i];
  }
  print("forward string is = $word");
  print("revers of $word is = $revrse");
  if (word == revrse) {
    print("string is philandrom");
  } else {
    print("string is not palindrom");
  }
}
