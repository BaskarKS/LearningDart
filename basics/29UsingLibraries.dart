// Dart contains built in multiplatform libraries
// https://dart.dev/guides/libraries

// community contribution packages can be found at https://pub.dev/
// to use the downloaded contribution code
// create a pubspec.yaml file in the project directory

import 'dart:math';
import 'dart:io';

main(List<String> args) {
  print(pi);
  print(sqrt(4));

  File myFile = new File('myFile.txt');
  myFile.rename('yourFile.txt').then((_) => print('file renamed'));
}
