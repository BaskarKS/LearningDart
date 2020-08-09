import 'dart:io';

// InLine Comment
/*
 Block Comment
*/
/// Documentation
main(List<String> args) {
  stdout.writeln("what is your name ?? ");
  String name = stdin.readLineSync();
  print("My Name is $name");
}
