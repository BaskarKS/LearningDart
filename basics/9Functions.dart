main(List<String> args) {
  myFirstFunction();
  mySecondFunction("BASKAR");
  print(passedValueGreaterThanZero(2));

  // Positional Parameters
  // param values are passed based on position, cant pass age after year.
  // first param has to be string, second param has to be int(age) and
  // third param has to be int(year).
  var person = positionalParam("Baskar", 30, 1984);
  print(person);

  // Named Parameters, can pass the param in any order. But have to specify
  // the (paramname: paramvalue)
  var personOne = namedParam(name: "Jashi", year: 2015, age: 5);
  print(personOne);

  // Using "Default Param Function"
  // optional to pass "year" value, if passed then its compulsory to name
  // the value with the param(year) name.
  var personTwo = defaultParam("Geeth", 30, year: 1991);
  print(personTwo);

  // Using "Optional Param Function"
  // optional to pass "year" value, if passed then its compulsory to name
  // the value with the param(year) name.
  var personThree = optionalParam("Yuva", 31, 1987);
  print(personThree);

  //name : Yuva - age : 31 - year : null
  var personFour = optionalParam("Yuva", 31);
  print(personFour);

  print('\nChecking Function Passed as Arguments\n');
  var result = calculator(10, 20, add);
  print(result);
  result = calculator(10, 20, multiply);
  print(result);
  //print(calculator(1, 2, checkFun));
  print('using function as variable');
  var retVal = calculateVariable(5, 6, multiply);
  print(retVal);

  //Using Function as property in class
  var car = Car(drive: slowDrive);
  print(car.drive);
  car.drive(); // invoking the function which was a property of car class
  car.drive = fastDrive; // assigning new function to the property of car class
  print(car.drive);
  car.drive();
}

void myFirstFunction() {
  print("First Function");
}

// Function can receive inputs through params
void mySecondFunction(String param) {
  param = param.toLowerCase();
  print("Second Function with param passes : $param");
}

// Function can return value
bool passedValueGreaterThanZero(int param) {
  return param > 0;
}

// Dart have 2 types of Functions params
// 1. Positional.
// 2. Named Params.
// 3. Default Params

// Positional Param Function
String positionalParam(String name, int age, int year) {
  return "name : $name - age : $age - year : $year";
}

// Named Param Function
String namedParam({String name, int age, int year}) {
  return "name : $name - age : $age - year : $year";
}

// Default parameters Defined.
// since "year" has a default value, while invoking its not compulsory
// to specify/pass the year value
String defaultParam(String name, int age, {int year = 2015}) {
  return "name : $name - age : $age - year : $year";
}

// Optional Parameter, Its not compulsory to pass 'year' param value
// if 'year' is not passed then its value will be 'null'
String optionalParam(String name, int age, [int year]) {
  return "name : $name - age : $age - year : $year";
}

// PASSING FUNCTION AS ARGUMENTS
int add(int n1, int n2) => n1 + n2;

int multiply(int n1, int n2) => n1 * n2;

bool checkFun(int n1) => n1 > 0;

// Function can be passed like any other types
int calculator(int n1, int n2, Function calculation) {
  return calculation(n1, n2);
}

Function calculateVariable = (int n1, int n2, Function calculation) {
  return calculation(n1, n2);
};

// USING FUNCTION AS PROPERTIES IN A CLASS
class Car {
  Function drive;
  Car({this.drive});
}

void slowDrive() {
  print("Driving Slowly...");
}

void fastDrive() {
  print('Driving fastly...');
}
