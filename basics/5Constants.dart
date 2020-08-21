void main(List<String> args) {
  const numberConstant = 10;
  const decimalConstant = 112.22;
  const booleanConstant = true;
  const stringConstant = 'Baskar K S';
  final String name = "Baskar";

  // final and const serves the same purpose of defining unchangeable values
  // cant change the value after its initialized.
  // const - using const will allocate memory for the defined constant in compile
  //         time itself, irrelevently the variable is used or not in program.
  // final - using final will not allocate memory for the defined constant in compile
  //         time itself, its memory is allocated only when variable is used in program.

  // instance variable can be final but cannot be constant.

  // if you want a constant at class level make it 'static constant'.
  // if defined, inside class, using 'static' along with const is compulsory.
  // if defined, ouside class we can define 'const' without 'static' keyword
  print(numberConstant);
  print(decimalConstant);
  print(booleanConstant);
  print(stringConstant);

  print('Checking Constant variable types');
  print(numberConstant.runtimeType);
  print(decimalConstant.runtimeType);
  print(booleanConstant.runtimeType);
  print(stringConstant.runtimeType);
}

class House {
  final entry = 'Doors'; // mentioning data type is optional
  static const keys = 4; // static is compulsory with const. (memory compulsorly
  //                       created for const hence we should make it static)
}
