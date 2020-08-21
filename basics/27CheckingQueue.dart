// useful for a collection, add entry at one end and delete from other end
import 'dart:collection';

main(List<String> args) {
  var queue = Queue();
  queue.add('Dart');
  queue.add(10);
  queue.add(12.3);
  queue.add('Java');
  print(queue);

  print('Elements in Queue');
  for (dynamic elem in queue) {
    print(elem);
  }

  print('Using for-each');
  queue.forEach((element) {
    print('queue element : $element');
  });

  print('remove first : ${queue.removeFirst()}');
  print(queue);

  print('remove last : ${queue.removeLast()}');
  print(queue);

  print(queue.elementAt(1)); // queue removes from beginning, if internal DS is
  // an array maintained has to shift element above.
  print(queue);
}
