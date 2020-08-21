import 'dart:ffi';
import 'dart:io';

main(List<String> args) {
  // Checking IF-ELSE
  int num = int.parse(stdin.readLineSync());
  if (num % 2 == 0)
    print("Divisible by 2");
  else if (num % 3 == 0)
    print("Divisible by 3");
  else
    print("Not Divisible by 2 / 3");

  // Checking Switch - applicable only for 'int' and 'String'
  print('');
  print("Enter 0 to select case 0:");
  print("Enter 1 to select case 1:");
  print("Enter Anything to select default");
  int caseVal = int.parse(stdin.readLineSync());
  switch (caseVal) {
    case 0:
      print("Case 0 is Selected");
      break;
    case 1:
      print("Case 1 is Selected");
      break;
    default:
      print("Default is Selected");
  }

  // Conditional Expression - Ternary Operator ?:
  int a = 3;
  int b = 4;
  int small = a < b ? a : b;
  print(small);

  // Conditional expression - non null operator ??

  // expression1 ?? expression2;

  // expression1 is evaluated first and returned if its not null, if its null
  // then expression2 is evaluated and returned

  String input;
  String loginName = input ?? "Guest User";
  print(loginName);
}
