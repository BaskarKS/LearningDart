// Unique Features like (Interpolation, Null-Aware, Conditional Property access
// Fat-Arrow, Cascades)

// String Interpolation Feature
main(List<String> args) {
  var myvar = 5;
  print("value : $myvar"); // String Interpolation (printing values)

  // String Interpolation (printing expressions)
  print("add : ${myvar + 5}");

  // String Interpolation (calling functions)
  print("string : ${"baskar".toUpperCase()}");

  //NULL AWARE OPERATOR
  int myInt;
  // if 'myInt' is null then assign the value mentioned on right of ??
  myInt = myInt ?? 7; // cam also be written as "myInt ??= 7"
  print(myInt);

  // CONDITIONAL PROPERTY ACCESS FEATURE
  String myString = "This is Dart lang";
  print(myString.length);
  String nullStr;
  // print(nullStr.length); // Exception happens when length in invoked on null

  // If 'nullStr' is null then it will not invoke length on it.
  print(nullStr?.length); // (nullStr != null) ? nullStr.length : null;

  // FEATURE ON COLLECTION LITERALS
  // 3 type of built in collections (List, Map, Set)
  final myList = [1, 2, 3];
  final mySet = {2, 3, 4, 5};
  final myMaps = {'a': 1, 'b': 2};

  final myListOne = <int>[];
  final mySetOne = <int>{};
  final myMapOne = <String, int>{};

  print(simpleRetStr());

  // Using CASCADE FEATURE
  car myCar = car(2020, "Honda")
    ..year = 2018 // after creating object, changed Year value of car in cascade
    ..name = "Tata" // again changed the name of car in cascade
    ..drive(); // after changing name and year of object, in cascade invoke drive() method

  // below line of code is equivalent to above lines
  car newCar = car(2020, "Honda");
  newCar.year = 2018;
  newCar.name = "Tata";
  newCar.drive();
}

// Checking FAT-ARROW

// Single line function below, can be written using "FAT ARROW"
String retStr() {
  return "dart String";
}

// Using Fat Arrow (Single line return function)
String simpleRetStr() => "simple one line return function use fat arrow";

// Checking CASCADES:
// Cascade is a way to perform a sequence of operation on same object
class car {
  int year;
  String name;
  car(this.year, this.name);
  car.madeYear(this.year);

  void drive() {
    print("Driving the Car");
  }
}
