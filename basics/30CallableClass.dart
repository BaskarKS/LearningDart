//Callable Class:
// its a simple dart class, can be called like a function
// implement call() method in class
main(List<String> args) {
  var person = Person();
  person();

  var carObj = Car("Honda", 2020);
  print(carObj);
  var result = carObj("Honda", 2010);
  print(carObj);
  print(result);
}

class Person {
  call() {
    print("Call method called");
  }
}

class Car {
  int year;
  String name;
  Car(this.name, this.year);

  String call(String name, int year) {
    this.name = name;
    this.year = year;
    return "Car:${this.name} Year:${this.year}";
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Car Name : ${this.name} Year : ${this.year}";
  }
}
