import 'package:cinema_showtime_selection/component/coffee_point_scroll.dart';
import 'package:cinema_showtime_selection/component/loyalty_card.dart';
import 'package:cinema_showtime_selection/component/point_redeem_card.dart';
import 'package:flutter/material.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  String title = 'Rewards';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 246, 240),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 50),
              child: Center(
                  child: Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF001833),
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.26,
                ),
              )),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: LoyaltyCard(),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 31.0),
                child: PointRedeemCard(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 10),
              child: Text('History Reward',
                  style: TextStyle(
                      color: Color(0xFF324A59),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
            ),
            const Flexible(child: CoffeePointScroll()),
            const SizedBox(
              height: 90,
            )
          ]),
    );
  }
}
