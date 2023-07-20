import 'package:cinema_showtime_selection/database.dart';
import 'package:cinema_showtime_selection/variable/cup_of_coffee.dart';
import 'package:flutter/material.dart';

class CoffeeBox extends StatefulWidget {
  final String cupOfCoffee;
  const CoffeeBox(this.cupOfCoffee, {super.key});

  @override
  State<CoffeeBox> createState() => _CoffeeBoxState();
}

class _CoffeeBoxState extends State<CoffeeBox> {
  String? image;
  @override
  Widget build(BuildContext context) {
    image = coffeeImage[widget.cupOfCoffee];
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.width * 0.45,
      decoration: const BoxDecoration(
          color: Color(0xFFF7F8FB),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(image.toString()),
          Text(widget.cupOfCoffee,
              style: const TextStyle(
                color: Color(0xFF001833),
                fontFamily: 'DM Sans',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.2,
                height: 3,
              ))
        ],
      ),
    );
  }
}
