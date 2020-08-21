void main(List<String> args) {
  // Arithmetic : +, -, *, /, %, +=, -=, *=, /=, %=
  // Relational : ==, !=, <= >=
  // Unary Operator : ++x, x++, --x, x--
  // logical Operator : &&, ||

  // Null Aware Operator: ?. , ?? , ??=
  var n = Num();
  int getVal;

  if (n != null) {
    getVal = n.num;
  }

  // Another way to initialize, to be safe from null check
  // ?. => null aware operator.
  getVal = n?.num; // if n is not null then only 'num' value is accessed.

  // when 'n' is null then to initialize a default value use '??'
  getVal = n?.num ?? 0; // if n is null then 0 is initialized to getVal
  print(getVal);

  print('Checking ?? Operator:');
  // LeftSideVal ?? RightSideVal => Use LeftSideVal if not null, otherwise RightSideVal
  int number;
  print(number ?? 100); // use the right side value if left side object is null
  print('default value is not set to number variable : $number');

  print('');
  print(number ??= 100); //if null, assign right side value to left and then use
  print('default value is set to number variable : $number');

  // TERNARY OPERATOR
  int val = 100;
  var evenOrOdd = val % 2 == 0 ? 'Even' : 'Odd';
  print(evenOrOdd);

  // TYPE TEST OPERATOR ('is')
  // Checking a variable is integer
  var x = 1;
  if (x is int) print("x is Integer : $x");
}

class Num {
  int num = 20;
}
