class Animal {
  String name = 'Animal';
  Animal() {
    print("Animal Constructor");
  }
  void printMember() {
    print('${this.name}');
  }

  void move() {
    print("Animal is Walking..");
  }
}

class Dog extends Animal {
  String name = 'Dog';
  Dog() : super() {
    print('Dog constructor');
  }

  @override
  void printMember() {
    print('${this.name}');
  }
}

class Cow extends Animal {
  String name = 'Cow';
  Cow() : super() {
    print('Cow Constructor');
  }

  @override
  void printMember() {
    print("${this.name}");
  }
}

main(List<String> args) {
  Animal animalOne = Dog();
  Animal animalTwo = Cow();
  animalOne.printMember();
  animalTwo.printMember();

  animalOne.move();
  animalTwo.move();
}
