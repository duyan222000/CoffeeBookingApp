import 'package:cinema_showtime_selection/component/redeem_coffee_card_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cinema_showtime_selection/database.dart';

class RedeemScreen extends StatefulWidget {
  const RedeemScreen({super.key});

  @override
  State<RedeemScreen> createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen> {
  void changeName(String newName) {
    user.fullName = newName;
  }

  void changePhoneNumber(String newPhoneNumber) {
    user.phoneNumber = newPhoneNumber;
  }

  void changeEmail(String newEmail) {
    user.email = newEmail;
  }

  void changeAddress(String newAddress) {
    user.address = newAddress;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 246, 240),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45.0, bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: SvgPicture.asset("assets/svgs/back.svg")),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 85.0),
                      child: Text("Redeem",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF001833),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.26)),
                    ),
                  ],
                ),
              ),
              const Expanded(child: RedeemCoffeeCardScroll())
            ],
          ),
        ],
      ),
    );
  }
}
