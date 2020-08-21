// dart doesnt support "public / private / protected" like in Java

// Instead it support to use underscore at the start of the name
// of the datamember / function to make private to use with in the class
import '17-1-AccessModifierHelper.dart';

main(List<String> args) {
  MyMath m = MyMath();
  print(m.numOne);
  print(m.numTwo);
  // print(m.numThree); // This variable is private, cant access here.
  // print(m._numThree);

  print(m.sub());
  // print(m.subAll()) // subAll() is private, cant be accessed here

  subtract(10, 2); // this is a function can be accessed here
}
