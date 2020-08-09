// Abstract class is used to provide a partial class implementation
// Two key points
// 1. Cant Instantiate and create an object.
// 2. cant declare a abstract method outside abstract class
// can create a abstract class using 'abstract' keyword

abstract class RemoteControler {
  // this class defines / summarize the idea of implementation class.
  int volume = 0;
  void increaseVolume(); // abstract methods
  void decreaseVolume();
  //can have normal properties and methods
  void info() {
    print("this is a remote controller class");
  }
}

class TVRemoteController extends RemoteControler {
  @override
  void decreaseVolume() {
    volume--;
    print('decrease volume : $volume');
  }

  @override
  void increaseVolume() {
    volume++;
    print('increase volume : $volume');
  }

  void tvInfo() {
    print('this is a TV Remote controller info');
  }
}

main(List<String> args) {
  TVRemoteController remoteIns = TVRemoteController();
  remoteIns.increaseVolume();
  remoteIns.increaseVolume();
  remoteIns.decreaseVolume();

  remoteIns.info();
  remoteIns.tvInfo();
}
