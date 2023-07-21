import 'package:cinema_showtime_selection/variable/cup_of_coffee.dart';
import 'package:flutter/material.dart';
import 'package:cinema_showtime_selection/database.dart';

class CoffeePoint extends StatelessWidget {
  const CoffeePoint(this.coffee, {super.key});
  final CupOfCoffee coffee;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(coffee.name,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF324A59),
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
              Text(
                  '${coffee.buyDate.day.toString()} ${month[coffee.buyDate.month]} | ${(coffee.buyDate.hour % 12).toString()}:${coffee.buyDate.minute.toString()} ${(coffee.buyDate.hour / 12).floor() == 0 ? 'AM' : 'PM'}',
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Color.fromRGBO(50, 74, 89, 0.22),
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 30.0),
          child: Text("+ 12 Pts",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF324A59),
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
        )
      ],
    );
  }
}
