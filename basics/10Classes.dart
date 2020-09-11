import 'package:meta/meta.dart';

main(List<String> args) {
  // Can create new instance of Car using "new Car() / Car()"
  var myCar = new Car();
  var myCarOne = Car(); // default constructor is invoked
  print(myCarOne);
  // by default getters and setters are created for the properties in class
  // using getter below
  print(myCarOne.model); // null
  print(myCarOne.year); // null
  print(myCarOne.status); // null

  // using setter below
  myCar.model = "Honda";
  myCar.year = 2015;
  myCar.status = true;

// since user defined constructor is defined, cant depend on 'default constructor"
// have to pass the contructor parameter values.
  var myBike = Bike("RoyalEnfield", 1971, true);
  myBike.printProperties();

  print(myBike);

  // Creating "Bike" object using named Constructor (YearMade())
  var yearBike = Bike.YearMade(1971);
  print(yearBike); //Year:1971, Model:null, Status:null

  var truck =
      Truck(); //with named params, can create object without params also
  var newTruck = Truck(model: "Benz", status: true, year: 2020);

  var van = Van(model: "Volvo", year: 1993);
  var vanOne = Van(model: "Volvo", year: 1993, status: false);
  var vanTwo = Van(); // allowed to create object but shows warnings
  print(van);
  print(vanTwo);
}

class Car {
  int year;
  String model;
  bool status;
}

class Truck {
  int year;
  String model;
  bool status;
  // Default Constructor, fields defined in {} makes the fields use as named
  // fields when constructing. To make certain fields as compulsory, prepend
  // the fields with '@required'
  Truck({this.model, this.year, this.status});
}

class Van {
  int year;
  String model;
  bool status;
  // Default Constructor, fields defined in {} makes the fields use as named
  // fields when constructing. To make certain fields as compulsory, prepend
  // the fields with '@required' to intimate the user as warnings. it doesnt
  // force to pass the params when creating object, just show as warnings
  Van({@required this.model, @required this.year, this.status});

  @override
  String toString() {
    // TODO: implement toString
    return 'Van :: year:${this.year} - model:${this.model} - status:${this.status}';
  }
}
/*
class Bike {
  int year;
  String model;
  bool status;

  // User Defined Constructor
  Bike(String model, int year, bool status) {
    this.model = model;
    this.year = year;
    this.status = status;
  }
}
*/

// Another way of defining user defined constructor
class Bike {
  int year;
  String model;
  bool status;

  // User Defined Constructor
  Bike(this.model, this.year, this.status);

  // Named constructor, accepts only "year" value.
  Bike.YearMade(this.year);
  // remaining parameters will be init with "null"
  Bike.Model(this.model);

  void printProperties() {
    print(
        "Year : ${this.year}, Model : ${this.model}, Status : ${this.status}");
  }

  @override
  String toString() {
    return "Year:${this.year}, Model:${this.model}, Status:${this.status}";
  }

  // defining our own getter
  int get getYear {
    if (year == null) {
      // can code explicit validation of values
      return 1999;
    }
    return year;
  }

  String get getModel => model;

  // defining our own setter.
  set setYear(int year) {
    if (year < 2000) {
      // we avoid setting year value less than 2000
      return;
    }
    this.year = year;
  }

  set setModel(String pModel) => model = pModel;

  // Any General Method
  int getCarLife(int currentYear) {
    // can be positional / default / named /
    return currentYear - year; // optional.
  }
}
