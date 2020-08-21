class MyMath {
  int numOne;
  int numTwo;
  int _numThree; // its private, accessed only with in the file
  MyMath() {
    this.numOne = 0;
    this.numTwo = 0;
    this._numThree = 0;
  }
  int add() {
    return numOne + numTwo + _numThree;
  }

  int _subAll() {
    // private method can be accessed only with in this file
    return numOne - numTwo - _numThree;
  }

  int sub() {
    return _subAll();
  }
}

// These are global Functions
int subtract(int a, int b) {
  return _sub(a, b);
}

// global function, still its private with in this file
int _sub(int a, int b) {
  return a - b;
}
