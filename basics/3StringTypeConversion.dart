void main(List<String> args) {
  var s1 = 'Single Quote String.';
  var s2 = "Double Quote String.";
  // with in single quote string, only single quote needs to be escaped
  // using \, double quotes need not be escaped
  var s3 = 'it\'s easy to escape "string" delimiter.';
  // with in double quote string, only double quote needs to be escaped
  // using \, single quotes need not be escaped
  var s4 = "no need to escape \"the\" string's \n delimiter";
  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print('');
  // defining RAW string using singel quote
  var s = r'its a raw string, \n will not get special treatment';
  // defining RAW string using double quote
  var check = r"its a raw string, \n will not get special treatment";
  print("Defining RAW string");
  print(s);
  print(s.runtimeType);
  print(check);
  print(check.runtimeType);

  // STRING INTERPOLATION
  var age = 36;
  var name = "Baskar";
  // interpolation works with in double quotes
  print("my name is $name and my age is $age");
  // interpolation works with in single quotes
  print('my name is $name and my age is $age');

  // MULTILINE STRINGS
  //using 3 single quotes
  var multi_single = '''multiline
                        string 
                        using
                        3 single quotes''';
  var multi_double = """multiline
                        string 
                        using
                        3 double quotes""";
  print(multi_single);
  print(multi_double);

  checkingString();
}

void checkingString() {
  print('Checking String');
  var multi_double = """Multiline
                        string 
                        using
                        3 double quotes""";
  var newString = "check the dart string";
  print(multi_double.length);
  print(multi_double.codeUnitAt(0)); // ASCII value at position 0
  print(multi_double.codeUnitAt(0).runtimeType); // ASCII value at position 0
  print(newString.compareTo(multi_double)); // return -1 on not equal
  print(newString.endsWith("ng")); // true
  print(newString.substring(2)); // substring from index 2 till end // "eck"
  print(newString.substring(1, 3)); // substring from start to (end - 1) // "he"
  print(newString.contains('dart')); // true
}
