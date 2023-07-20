import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cinema_showtime_selection/database.dart';

class LoyaltyCard extends StatefulWidget {
  const LoyaltyCard({super.key});

  @override
  State<LoyaltyCard> createState() => _LoyaltyCardState();
}

class _LoyaltyCardState extends State<LoyaltyCard> {
  String loyaltyCard = "Loyalty card";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: const BoxDecoration(
          color: Color(0xFF324A59),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                loyaltyCard,
                style: const TextStyle(
                    color: Color(0xFFD8D8D8),
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.476),
              Text(
                "${coffeeCups.length.toString()}/8",
                style: const TextStyle(
                    color: Color(0xFFD8D8D8),
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.011),
          Container(
            width: MediaQuery.of(context).size.width * 0.744,
            height: MediaQuery.of(context).size.height * 0.075,
            decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              for (int i = 0; i < 8; ++i)
                if (i < coffeeCups.length)
                  SvgPicture.asset('assets/svgs/coffee_cup.svg',
                      height: MediaQuery.of(context).size.height * 0.042)
                else
                  SvgPicture.asset('assets/svgs/coffee_cup_disable.svg',
                      height: MediaQuery.of(context).size.height * 0.042)
            ]),
          )
        ],
      ),
    );
  }
}
