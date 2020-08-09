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

  // Checking Switch
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
}
