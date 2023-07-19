import 'package:cinema_showtime_selection/component/choose_coffee.dart';
import 'package:cinema_showtime_selection/component/loyalty_card.dart';
import 'package:cinema_showtime_selection/component/personal_app_bar.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 246, 240),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
            PersonalAppBar(),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: LoyaltyCard(),
            ),
            ChooseCoffee()
          ],
        ));
  }
}
