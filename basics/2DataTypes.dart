import 'dart:async';
import 'dart:core'; // this package is automatically imported

main() {
  var value = 10; // Automatic type inference
  print(value);

  int statical = 20; // Statically type defined
  print(statical);

  // Strongly typed Programming Language: type of variable is known at compile time

  // Dyamic Typed programming Language: type of variable is known at run time.

  /*
    // all below defined data types are objects, we can even use 'null' to initialize the variable
    int
    double
    string
    bool
    dynamic

   */

  int amount1 = 100;
  var amount2 =
      200; // automatic type inferred based on passed value, cant change value type after definition
  print('Amount One : $amount1, Amount Two : $amount2');

  amount2 =
      300; // can change the value, but cant change the value with different type
  print('Value of Amount Two Changed : $amount2');

  double damount1 = 100;
  var damount2 = 200;
  print('Double Amount One : $damount1, Double Amount Two : $damount2');

  String name1 = "Jashi";
  var name2 = "Geetha";
  print('Name One : $name1, Name Two : $name2');

  bool isItTrueOne = true;
  var isItTrueTwo = false;
  print('Boolean One : $isItTrueOne, Boolean Two : $isItTrueTwo');
  print(isItTrueOne.toString()); // convert boolean to string
  print(isItTrueOne.hashCode);
  print(isItTrueOne.runtimeType);

  dynamic weakVariable =
      100; // this variable type is inferred at runtime, no compile time checks
  print('Weak Variable Initially : $weakVariable');

  weakVariable =
      "Changed to String"; // can change different type of value after its definition
  // initially it was initialized with 'int' later in code its value is changed with 'string' type.
  print('Weak Variable Changed : $weakVariable');

  weakVariable = null;
  print('Weak Variable initialized to NULL: $weakVariable');

  createVariables();
}

void createVariables() {
  print("Checking CREATE VARIABLES");
  // Three different ways to create a variables
  // 1. using 'var'. (create a variable without specifying the data type)
  var isDef = true;
  print(isDef);
  // 2. using 'dynamic' (can fit any object in this type, not inferred by compiler)
  dynamic value = 10;
  print(value);
  value = "hai"; // changed the value to string into the same variable
  print(value);
  value = 11.22; // changed the value to double into the same variable.
  print(value);

  //3. // using 'num' datatype(num is a class used to create an int / double
  //                                variable)
  num onlyNumbers = 112;
  print(onlyNumbers);
  onlyNumbers = 11.2;
  print(onlyNumbers);

  //Checking some of the properties and Functions
  print(onlyNumbers.toInt());
  print(onlyNumbers.toString());
  print("ceiling value : ${onlyNumbers.ceil()}");
}
