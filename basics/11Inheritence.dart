main(List<String> args) {
  var dog = Dog();
  print('');
  dog.name = 'Labrador';
  dog.printMember();
  dog.move();

  print('');
  var animalNamed = Dog.myBaseClass();
}

// Extend a class, its methods, properties etc.
// Theres no multiple inheritence in Dart but can do multi level inheritence

class Animal {
  String name = 'Animal';

  Animal() {
    print('Base Class Constructor');
  }

  Animal.myBaseClass() {
    print('Base Class Named Constructor');
  }

  void printMember() {
    print(this.name);
  }

  void move() {
    print('Animal is walking');
  }
}

class Dog extends Animal {
  // Extending Base constructor, while object creation, super() constructor is
  // invoked then this constructor is invoked
  Dog() : super() {
    print("Dog Class Constructor");
  }

  // Extending Base named constructor, while object creation, super()
  // constructor is invoked first then this constructor is invoked

  Dog.myBaseClass() : super.myBaseClass() {
    print('Dog Class Named Constructor');
  }

  @override
  void printMember() {
    print('Dog name : ${this.name}');
  }

  @override
  void move() {
    //super.move();
    print('${this.name} is Walking');
  }
}
