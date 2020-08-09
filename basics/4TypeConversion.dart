void main(List<String> args) {
  // convert "String" to "int" using int class static method parse()
  var one = int.parse('23');
  print(one);
  assert(one == 1); // verify the converted value, using inbuilt assert()

  // error: can pass only integer values
  // var getFromDouble = int.parse("112.11");

  // error: can pass only integer values
  // var getFromDouble = int.parse("true");

  // print(getFromDouble);

  // convert "String" to "double" using double class static method parse()
  var decimals = double.parse("112.233444");
  print(decimals);

  //CONVERT OTHER TYPES TO STRING
  print('CONVERT OTHER TYPES TO STRING');
  print(one.toString());
  print(one.toRadixString(2));
  print(99.toString()); // 99 is an int object, converted to string

  print(decimals.toString());
  print(decimals.toStringAsFixed(2)); // gets a string object with 2 precision

  var oneAsString = 1.toString();
  assert(oneAsString == "1");

  int notInit;
  print('Uninitialized variable contains null : $notInit');
}
