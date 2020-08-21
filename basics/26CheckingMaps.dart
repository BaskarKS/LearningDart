// unordered collection of Key-value pair data structute,
// key-value can be any type,
// key has to be unique, otherwise the last value is taken
// size of the map is not fixed, HashMap is implementation of Map
main(List<String> args) {
  Map<String, int> grades = Map();
  grades['pass'] = 50;
  grades['fail'] = 0;
  grades['perfect'] = 100;
  print(grades);
  print(grades['pass']);

  print("Printing Keys");
  for (var key in grades.keys) {
    print(key);
  }

  print("Printing Values");
  for (var key in grades.values) {
    print(key);
  }

  print("Printing Keys and Values");
  grades.forEach((key, value) {
    print('Key:$key : Value:$value');
  });

  print('checking contains:');
  print(grades.containsKey('pass'));
  print(grades.containsKey('average'));
  print(grades.containsValue(20));
  print(grades);
  grades.update("perfect", (value) => 75);
  print(grades);
  grades.remove('perfect');
  print(grades);
  print(grades.length);
  //Another way of creating Map:
  Map<int, int> mymap = {1: 0, 2: 50, 3: 100, 2: 90};
  print(mymap);
  mymap[4] = 45;
  print(mymap);
}
