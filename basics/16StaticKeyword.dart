class Circle {
  static const pi = 3.14;
  int radius = 0;
  Circle(this.radius); // constructor

  static double calculateArea(circle_radius) {
    // not allowed to use instance members / instance methods in static function
    return 0.5 * pi * circle_radius;
  }

  void normalInstanceMethod() {
    // allowed to use static variables / methods here
    calculateArea(10);
    print(pi);
  }
}

main(List<String> args) {
  var circleArea = Circle.calculateArea(100); // static methods can be invoked
  // by only using Class Name
  print(circleArea);

  // static variables/fields can be accessed only by using Class Name from outside
  print(Circle.pi);
}
