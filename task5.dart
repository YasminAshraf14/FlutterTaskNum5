import 'dart:io';

void main() {
  // Q 1
  var bankAccount = BankAccount(0);

  stdout.write('Enter amount of deposit : ');
  var deposit = double.parse(stdin.readLineSync()!);
  bankAccount.deposit(deposit);
  bankAccount.displayBalance();
  print('');

  stdout.write('Enter amount of withdraw : ');
  var withdraw = double.parse(stdin.readLineSync()!);
  bankAccount.withdraw(withdraw);
  bankAccount.displayBalance();
  print('');

  // Q 2
  print("Enter two numbers to calculate Rectangle's Area : ");
  var num1 = double.parse(stdin.readLineSync()!);
  var num2 = double.parse(stdin.readLineSync()!);
  Shape shape1 = Rectangle(num1, num2);
  print('Area -> ${shape1.area()}');
  print('');

  print("Enter two numbers to calculate Triangle's Area : ");
  var num3 = double.parse(stdin.readLineSync()!);
  var num4 = double.parse(stdin.readLineSync()!);
  Shape shape2 = Triangle(num3, num4);
  print('Area -> ${shape2.area()}');
}

// Q 1
class BankAccount {

  double _balance;

  BankAccount(this._balance);

  double get balance => _balance;

  void deposit(double money) {
    _balance += money;
  }

  void withdraw(double money) {
    _balance -= money;
  }

  void displayBalance() {
    print('Balance after deposit: $balance');
  }

}

// Q 2
abstract class Shape {

  double diameter1;
  double diameter2;

  Shape(this.diameter1, this.diameter2);

  double area();

}
class Rectangle extends Shape {

  Rectangle(double length, double width) : super(length, width);

  @override
  double area() {
    return diameter1 * diameter2;
  }

}
class Triangle extends Shape {

  Triangle(double base, double height) : super(base, height);

  @override
  double area() {
    return 0.5 * diameter1 * diameter2;
  }

}
