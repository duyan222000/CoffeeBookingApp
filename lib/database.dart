import 'package:cinema_showtime_selection/variable/cup_of_coffee.dart';

final List<CupOfCoffee> coffeeCups = [
  const CupOfCoffee(
      name: "Americano",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full"),
  const CupOfCoffee(
      name: "Cappuccino",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full"),
  const CupOfCoffee(
      name: "Mocha", shot: "Single", hot: false, size: "Large", ice: "Full"),
  const CupOfCoffee(
      name: "Flat White",
      shot: "Single",
      hot: false,
      size: "Large",
      ice: "Full"),
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
