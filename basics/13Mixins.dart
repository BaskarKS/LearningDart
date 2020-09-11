// Mixins : Its a way of reusing any class code in multiple class hierarchy
// without duplicating the code, and also avoid inheritence

/*

*/
import 'dart:io';

class Animal {
  String name = 'Animal';
  Animal() {
    print('Animal Constructor');
  }

  void move() {
    print("change position");
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

  print('');
  Fish().move();

  print('');
  WildDuck().fly();
}

class Fish extends Animal {
  Fish() : super() {
    print('Fish Constructor');
  }

  @override
  void move() {
    super.move();
    print("by swimming");
  }
}

class Bird extends Animal {
  @override
  void move() {
    super.move();
    print('by flying');
  }
}

// wild duck can fly and swim, but we cant extend fish class and bird class
// an animal class simultaneously, to adapt both the class qualities we go for
// mixins

mixin getFlyAbility {
  void fly() {
    print('changing position by flying');
  }
}

mixin getSwimAbility {
  void swim() {
    print('Change position by swimming');
  }

  void fly() {
    print('Fly implementation from swim mixin');
  }
}

// using the above mixins we can get both fly and swim ability along with
// animal properties to duck

// if theres same method(fly()) from getFlyAbility and getSwimAbility mixins
// then the WildDuck will get the implementation of the last specified mixin
// in the class defenition, here we specify getSwimAbility mixin as the last
// hence wildduck will get the fly implementation of getSwimAbility mixin.

//mixin - reuse class code in multiple class hierarchies, they provide
// alternative to using a subclass.
class WildDuck extends Animal with getFlyAbility, getSwimAbility {
  @override
  void fly() {
    super.fly();
    print('get more fly ability');
  }
}
