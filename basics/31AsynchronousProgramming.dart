import 'dart:io';

void main() {
  performTasks();
}

/*
// 1. Not to wait for a task to complete, make it asynchronous
void performTasks() {
  task1();
  task2();
  task3();
  print('Main Program Exits');
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

void task2() {
/* // Code to cause a Synchronous Delay
  Duration threeSecs = Duration(seconds: 3);
  // sleep() is a synchronous operation causes the calling process
  // to sleep for the passed duration
  sleep(threeSecs);
  */

  // Code to cause a ASynchronous Delay
  Future.delayed(Duration(seconds: 3), () {
    String result = 'task 2 data';
    print('Task 2 complete');
  });
}

void task3() {
  String result = 'task 3 data';
  print('Task 3 complete');
}
*/
/*
// 2. To Pass the result of a task to Another Task for Computation (Not Working)
void performTasks() {
  task1();
  var result = task2();
  task3(result);
  print('Main Program Exits');
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

String task2() {
  // Code to cause a ASynchronous Delay
  String result;
  Future.delayed(Duration(seconds: 3), () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with Passed Data - $task2Data');
}

*/

// 3. To Pass the result of a task to Another Task for Computation (Working)
void performTasks() async {
  task1();
  var result = await task2();
  task3(result);
  print('Main Program Exits');
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

//Future are similar to kind of receipts (Future is like a promise that
// we will get the result in the future) (Future is something that doesnt
// exist right not but after the async task complete, Future will materialize
// into a real object ). Can be more specific about defined Future using
// generics like Future<String> or Future<int>.

//Once task2() completes the Future<String> will be materialized into forming
// a actual real String.
Future task2() async {
  // Code to cause a ASynchronous Delay
  String result;
  await Future.delayed(Duration(seconds: 3), () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with Passed Data - $task2Data');
}
