// Mixins : Its a way of reusing any class code in multiple class hierarchy
// without duplicating the code, and also avoid inheritence

class Animal {
  String name = 'Animal';
  Animal() {
    print('Animal Constructor');
  }

  void printName() {
    print('${this.name}');
  }
}

class Dog extends Animal with Cat {
  // Cat class code is reused here using 'with' keyword - Its 'mixin'
  String name = 'Dog';
  Dog() : super() {
    print('Dog Constructor.');
  }
}

class Cat {
  void run() {
    print('Run with the four legs');
  }
}

main(List<String> args) {
  Dog dog = Dog();
  dog.printName();
  dog.run(); // Its code defined in Cat class, but can be used in Dog.
  // Dog class without inheriting Cat class, Cat class code(run()) is
  // reused in Dog
}
