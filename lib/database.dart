import 'package:cinema_showtime_selection/variable/cup_of_coffee.dart';
import 'package:cinema_showtime_selection/variable/user.dart';

List<CupOfCoffee> coffeeCups = [
  CupOfCoffee(
      name: "Americano",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: false),
  CupOfCoffee(
      name: "Cappuccino",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: false),
  CupOfCoffee(
      name: "Mocha",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: false),
  CupOfCoffee(
      name: "Flat White",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: false),
  CupOfCoffee(
      name: "Flat White",
      shot: "Double",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: false),
  CupOfCoffee(
      name: "Americano",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: false),
  CupOfCoffee(
      name: "Cappuccino",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: false),
  CupOfCoffee(
      name: "Mocha",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: false),
  CupOfCoffee(
      name: "Flat White",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: true),
  CupOfCoffee(
      name: "Flat White",
      shot: "Double",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: true),
  CupOfCoffee(
      name: "Americano",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: true),
  CupOfCoffee(
      name: "Cappuccino",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: false),
  CupOfCoffee(
      name: "Mocha",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: true),
  CupOfCoffee(
      name: "Flat White",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: false),
  CupOfCoffee(
      name: "Flat White",
      shot: "Double",
      hot: false,
      size: "Large",
      ice: "Full",
      buyDate: DateTime.parse('1969-07-20 20:18:04Z'),
      deliveredLocation: '120/11 Thich Quang Duc P4 Phu Nhuan',
      onGoing: true),
];

final List<String> coffeeList = [
  "Americano",
  "Cappuccino",
  "Mocha",
  "Flat White"
];

final Map<String, String> coffeeImage = {
  "Americano": "assets/images/americano.png",
  "Cappuccino": "assets/images/cappuccino.png",
  "Mocha": "assets/images/mocha.png",
  "Flat White": "assets/images/flat_white.png"
};

final List<String> redeemList = ["Americano", "Cappuccino", "Flat White"];

User user = User(
    fullName: "Van Duy An",
    phoneNumber: "0938549372",
    email: "vdan18@apcs.fitus.edu.vn",
    address: "120/11 Thich Quang Duc, Phuong 4, Phu Nhuan",
    personalPoint: 180);

final Map<int, String> month = {
  1: 'January',
  2: 'February',
  3: 'March',
  4: 'April',
  5: 'May',
  6: 'June',
  7: 'July',
  8: 'August',
  9: 'September',
  10: 'October',
  11: 'November',
  12: 'December'
};
