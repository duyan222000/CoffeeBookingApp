import 'package:cinema_showtime_selection/database.dart';
import 'package:cinema_showtime_selection/screen/redeem_screen.dart';
import 'package:flutter/material.dart';

class PointRedeemCard extends StatefulWidget {
  const PointRedeemCard({super.key});

  @override
  State<PointRedeemCard> createState() => _PointRedeemCardState();
}

class _PointRedeemCardState extends State<PointRedeemCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.14,
            decoration: const BoxDecoration(
                color: Color(0xFF324A59),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "My Points:",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFFD8D8D8),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        (user.personalPoint).toString(),
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFFD8D8D8),
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: GestureDetector(
                      onTap: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RedeemScreen()))
                          },
                      child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(162, 205, 233, 0.19),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: const Center(
                            child: Text(
                              'Redeem drinks',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFD8D8D8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ))),
                )
              ],
            )),
        Positioned(
          right: -10,
          bottom: -23,
          child: Image.asset(
            'assets/images/coffee_bean.png',
            height: 66,
          ),
        ),
      ],
    );
  }
}
