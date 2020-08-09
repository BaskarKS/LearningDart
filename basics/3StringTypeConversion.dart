void main(List<String> args) {
  var s1 = 'Single Quote String.';
  var s2 = "Double Quote String.";
  // with in single quote string, escape single quote using \
  var s3 = 'it\'s easy to escape string delimiter.';
  // with in double quote string, escape double quote using \
  var s4 = "no need to escape \"the\" string's \n delimiter";
  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print('');
  // using singel quote
  var s = r'its a raw string, \n will not get special treatment';
  // using double quote
  var check = r"its a raw string, \n will not get special treatment";
  print(s);
  print(check);

  // STRING INTERPOLATION
  var age = 36;
  var name = "Baskar";
  // interpolation works with in single quotes
  print("my name is $name and my age is $age");
  // interpolation works with in double quotes
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
  var multi_double = """Aultiline
                        string 
                        using
                        3 double quotes""";
  var newString = "check the dart string";
  print(multi_double.length);
  print(multi_double.codeUnitAt(0)); // ASCII value at position 0
  print(newString.compareTo(multi_double)); // return -1 on not equal
  print(newString.endsWith("eck")); // true
  print(newString.substring(2)); // substring from index 2 till end // "eck"
  print(newString.substring(1, 3)); // substring from start to (end - 1) // "he"
  print(newString.contains('dart')); // true
}
