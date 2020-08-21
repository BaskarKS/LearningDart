// Anonymous Function also called as Lambda Function or NameLess Function

// In Dart even function are also constructed as an object. Can store it in
// a variable and use throughout the application

// a function with NO NAME is ANONYMOUS FUNCTION.
// Can assign to a variable,
// Can pass as a parameter to another function.
// Only issue is, we cant use it for 'Recursive purpose' as its has No Name

//CASE-1 : function is captured in a variable 'anonymFunction'
var anonymFunction = () {
  print("Anonymous Function");
}; // end it with semicolon

//CASE-2 : Anonymous Function / Lambda using Fat-Arrow
var anonymFatFunction = () => print("Anonymoud Function using Fat-Arrow");
Function addNumbers = (int a, int b) => a + b; // returns sum of passed param

//CASE-3 : Using Anonymous Function inside a Class
class MyMath {
  Function add = (int a, int b) {
    return a + b;
  };
}

//CASE-4 :
// Creating/using anonymous function will benefit when using with
// Higher-Order function (accepts function as parameter in a function /
// return a function as result in a function)

Function addNumber() {
  Function add = (int a, int b) {
    return a + b;
  };
  return add;
}

// Advantage of returning a function : we can store function in a variable
// later we can use the function by referring the variable. Having a variable
// containing the function object gives us freedom to pass anywhere in the
// application.

// CASE-5 (Understanding "CLOSURE" relevant to Anonymous Function)
// Have to understand "LEXICAL SCOPEING" before analysing CLOSURE.
// "A Closure is a special function that has access to the parent scope even
// after the scope is closed"

var globalVar = "This is accessible Anywhere";
main(List<String> args) {
  anonymFunction(); // Invoking anonymous Function as like a normal function
  anonymFatFunction();

  print('CASE-3');
  var mathObj = MyMath();
  var result = mathObj.add(10, 20);
  print(result);

  print('CASE-4');
  Function addFunctionResult = addNumbers();
  int addResult = addFunctionResult(11, 12);
  print(addResult);

  // -------------- Checking Lexical Scoping -------------------
  print(globalVar);
  String localMainFunc() {
    var localToThisFunc = "Local to this Function";
    print(localToThisFunc);
    return localToThisFunc;
  }

  // invoking this method, its defined local to main() and its accessible
  // only with in the main() method.
  localMainFunc();
  // but this method used variables are not accessible by main() function,
  // the scope of the variable is with in the defined method.
//// print(localToThisFunc); // restriction of variable usage is lexical scope

  // -------------- Checking Lexical Scoping -------------------
  print(addNumbers(2, 3));
}
