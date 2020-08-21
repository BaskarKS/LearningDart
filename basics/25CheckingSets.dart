// Set : unordered collection of unique items.
main(List<String> args) {
  Set<String> progLang = {'C', "Java", 'Dart', "Java"};
  print(progLang);
  progLang.add('Python');
  print(progLang);

  Set<String> names =
      Set.from(['baskar', 'jashi', 'geetha']); // Create Set from List
  print(names);

  Set<int> numSet = Set();
  numSet.add(10);
  print(numSet);

  for (String name in names) print('name : $name');

  print('Checking For-Each');
  progLang.forEach((element) {
    print('prog Lang : $element');
  });

  print(progLang.contains('c'));
  print(progLang.isEmpty);

  print(progLang.remove('C'));
  print(progLang);

  print(progLang.isEmpty);
  print(progLang.length);

  progLang.clear();
}
