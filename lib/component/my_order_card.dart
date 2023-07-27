import 'package:cinema_showtime_selection/component/icon_text.dart';
import 'package:cinema_showtime_selection/variable/cup_of_coffee.dart';
import 'package:flutter/material.dart';
import 'package:cinema_showtime_selection/database.dart';

class MyOrderCard extends StatelessWidget {
  const MyOrderCard(this.coffee, {super.key});
  final CupOfCoffee coffee;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                    '${coffee.buyDate.day.toString()} ${month[coffee.buyDate.month]} | ${(coffee.buyDate.hour % 12).toString()}:${coffee.buyDate.minute.toString()} ${(coffee.buyDate.hour / 12).floor() == 0 ? 'AM' : 'PM'}',
                    style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(50, 74, 89, 0.22),
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: IconText('assets/svgs/coffee.svg', coffee.name),
              ),
              IconText('assets/svgs/location.svg', coffee.deliveredLocation)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text("\$${coffee.cost}.00",
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF324A59),
                    fontSize: 20,
                    fontWeight: FontWeight.w500)),
          ),
        )
      ],
    );
  }
}
