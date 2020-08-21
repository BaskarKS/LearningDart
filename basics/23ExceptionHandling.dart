// Exception Handling using {try, catch, on, finally}
// StackTrace
// CustomExceptions.

// When normal flow of execution is distrupted and application crashes

main(List<String> args) {
  int result =
      12 ~/ 4; //('~/' - divide 2 integers and return the result in int)
  print('result is $result');

  //CASE-1 - ON
  try {
    int newVal = 12 ~/ 0; // IntegerDivisionByZeroException
    print(newVal);
  } on IntegerDivisionByZeroException {
    // if we are sure about a particular exception
    // know the name of the exception occur, can use 'on' to catch the exception
    print("Divide by Zero occurred");
  }

  //CASE-2 - CATCH
  // if we are not sure the kind of exception raise / do not know the
  // exception name - use 'catch' clause to catch the exception
  try {
    int newVal = 12 ~/ 0; // IntegerDivisionByZeroException
    print(newVal);
  } catch (e) {
    // if we are sure about a particular exception
    // know the name of the exception occur, can use 'on' to catch the exception
    print("excepton received : $e");
  }

  // CASE-3 : checking stacktrace (stack trace will let us know the events
  //            happenned before exception occurred)

  try {
    int newVal = 12 ~/ 0; // IntegerDivisionByZeroException
    print(newVal);
  } catch (e, s) {
    // if we are sure about a particular exception
    // know the name of the exception occur, can use 'on' to catch the exception
    print("excepton received : $e");
    print("stack trace is : $s");
  }

  //CASE-4 using FINALLY
  print('CASE-4');
  try {
    int newVal = 12 ~/ 0; // IntegerDivisionByZeroException
    print(newVal);
  } catch (e) {
    // if we are sure about a particular exception
    // know the name of the exception occur, can use 'on' to catch the exception
    print("excepton received : $e");
  } finally {
    print("its always executed, with and without exception");
  }

  //CASE-5 : CUSTOM EXCEPTION
  try {
    depositMoney(0);
  } catch (e) {
    print("Received Deposit Exception");
    e.errorMsg();
  }
}

class DepositException implements Exception {
  String errorMsg() {
    print("Cant enter amount less than zero (0)");
  }
}

void depositMoney(int money) {
  if (money <= 0) {
    throw new DepositException();
  }
}
