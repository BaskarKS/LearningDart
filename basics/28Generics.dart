main(List<String> args) {
  print(addDouble(1.5, 4.8));
  var addObj = Add();
  print(genericDifferentAdd(1, 2));
  print(genericDifferentAdd(1.8, 2.2));
  print(genericDifferentAdd("Baskar", " K S"));

  // using Generic Method
  print(addGeneric(12, 28));
  print(addGeneric(13.8, 21.2));
  // print(addGeneric("Jaasritha", " K S")); // Error: Can pass only number types

  // Using Generic Class
  print('Using Generic Class');
  var mathObj = MyMathGenericClass<int>(10, 20);
  print(mathObj.sub());
  print(mathObj.multiply());
}

double addDouble(double a, double b) {
  return a + b;
}

int addInt(int a, int b) {
  return a + b;
}

// Different way of writing generic functions
genericDifferentAdd(var a, var b) {
  return a + b;
}

T addGeneric<T extends num>(T a, T b) {
  return a + b;
}

class MyMathGenericClass<T extends num> {
  T a;
  T b;
  MyMathGenericClass(this.a, this.b);

  T sub() {
    return this.a - this.b;
  }

  T multiply() {
    return this.a * this.b;
  }
}

class Add {
  double add(double a, double b) {
    return a + b;
  }

  // cant have same name
  int addInt(int a, int b) {
    return a + b;
  }
}
