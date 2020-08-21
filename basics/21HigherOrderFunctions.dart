// Higher-Order Function : A function that accepts a function as a parameter /
//                                              return a function / can do both
main(List<String> args) {
  var mymath = MyMath();
  print(mymath.add(4, 6));
  print(mymath.computeAdd(mymath.add, 10, 20));
  print(mymath.piValue());
  print(mymath.myString);
  print(mymath.printString());
  var result = mymath.printString();
  result();
  print(mymath.printString()());

  processAndInvokeOtherFun("baskar", printFun);
}

class MyMath {
  static const pi = 3.14;
  Function add = (int a, int b) {
    return a + b;
  };

  Function piValue = () => pi;

  int computeAdd(Function myFun, int a, int b) {
    return myFun(a, b);
  }

  String myString = "Propertyof MyMath Class";
  Function printString = () {
    void insidePrintString() {
      String myString = "This is inside a closure Function";
      print(myString);
    }

    return insidePrintString;
  };
}

// -------------------------------------------------------------
void processAndInvokeOtherFun(String param, Function fun) {
  param = param.toUpperCase();
  fun(param);
}

Function printFun = (String str) => print(str);
