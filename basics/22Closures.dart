// Closure is a Special Function
// With in a closure you can mutate(modify) the value of variables present in
// parent scope

// java-8 doesnt allow to modify the parent scope variables.

// Closure Defenition:
main() {
// Definition-1:
// A closure is a function that has access to the parent scope, even after
// the scope is closed
  var strMessage = "Dart is good";
  Function showMessage = () {
    strMessage = "Dart is Awesome"; // with in this method we are able to access
    // parent scope variable and use it
    print(strMessage);
  }; // this function is a "closure"
  showMessage();

//Definition-2:
//A closure is a function object that has access to variables in its
// lexical scope, even when the function is used outside of its original scope
  Function talk() {
    String msg = "Hai";
    Function say = () {
      strMessage = "Changed in inner closure function";
      msg = "Bye";
      print(strMessage);
      print(msg);
    };
    return say;
  }

  var speak = talk();
  speak(); // even say() is used outside the scope of talk(), its able to
  // hold reference of used parent(talk()) variables(msg).

  talk()();
}
