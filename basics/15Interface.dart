import 'dart:math';

class Order {
  void takeOrder() {
    print('Taking Order.');
  }

  void updateOrder() {
    // can leave them Blank
  }
}

class Payments {
  void acceptPayment() {}
}

class PizzaOrder implements Order, Payments {
  // It takes the structure of 'Order' class and 'Payment' Class
  // can extend only single class / abstract class
  // can implement multiple interface simultaneously
  // interface forces all its methods to be implemented from the implement class
  @override
  void acceptPayment() {
    print('Accept Pizza Payment');
  }

  @override
  void takeOrder() {
    print('Take Pizza Order');
  }

  @override
  void updateOrder() {
    print('Update Pizza Order');
  }
}

main(List<String> args) {
  PizzaOrder pizza = PizzaOrder();
  Order order = pizza;
  order.takeOrder();
  order.updateOrder();
  Payments pay = pizza;
  pay.acceptPayment();
}
