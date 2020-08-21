main(List<String> args) {
  // Fixed Length List - Length cant change at runtime
  List<int> fixList = List(4);
  // fixList.add(10);// exception
  fixList[0] = 10;
  fixList[fixList.length - 1] = 30;
  print(fixList);

  // Printing elements in List
  print("Iterating list ");
  for (var i in fixList) print(i);
  // Growable Length List
  var mylist = List();
  mylist.add(5);
  mylist.add(8);
  mylist.add(4);
  print(mylist);

  print("Checking For-Each Fat Arrow");
  mylist.forEach((element) => print(element));

  print("Checking For-Each Lambda");
  mylist.forEach((element) {
    print("Element : $element");
  });

  print(mylist.removeAt(0));
  print(mylist);

  mylist.clear(); // remove all elements

  //TYPE-3
  var newList = [1, 2, 3, 4, 5, 6];
  newList.add(7);
  print(newList);
  print(newList.runtimeType);
  var subList = newList.take(4).toList(); // from beg to passed index count
  print(subList);
  print(newList);

  var endList = newList.skip(3).toList(); // skip from beg to passed index count
  // extract remaining elements to list
  print(endList);
  print(newList);

  print(newList.contains(6));
}
