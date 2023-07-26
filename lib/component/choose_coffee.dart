import 'package:cinema_showtime_selection/component/coffee_box.dart';
import 'package:cinema_showtime_selection/database.dart';
import 'package:cinema_showtime_selection/screen/detail_screen.dart';
import 'package:flutter/material.dart';

class ChooseCoffee extends StatefulWidget {
  const ChooseCoffee({super.key});

  @override
  State<ChooseCoffee> createState() => _ChooseCoffeeState();
}

class _ChooseCoffeeState extends State<ChooseCoffee> {
  String chooseYourCoffee = "Choose your coffee";
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.63054187192,
            decoration: const BoxDecoration(
                color: Color(0xFF324A59),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24.0, left: 31),
                    child: Text(
                      chooseYourCoffee,
                      style: const TextStyle(
                          color: Color(0xFFD8D8D8),
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                // const CoffeeBox("Flat White")
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    padding: const EdgeInsets.all(25),
                    primary: false,
                    children: <Widget>[
                      for (int i = 0; i < 4; ++i)
                        IconButton(
                            onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CoffeeDetailOrder()))
                                },
                            icon: CoffeeBox(coffeeList[i]))
                    ],
                  ),
                )
              ],
            )));
  }
}
