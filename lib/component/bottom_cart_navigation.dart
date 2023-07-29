import 'package:cinema_showtime_selection/database.dart';
import 'package:cinema_showtime_selection/screen/order_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomCartNavigation extends StatefulWidget {
  const BottomCartNavigation({super.key});

  @override
  State<BottomCartNavigation> createState() => _BottomCartNavigationState();
}

class _BottomCartNavigationState extends State<BottomCartNavigation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 33.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("Total Price",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color.fromRGBO(0, 24, 51, 0.22),
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
              Text('\$${totalCost.toString()}.00',
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF001833),
                      fontSize: 22,
                      fontWeight: FontWeight.w600))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 33.0),
          child: GestureDetector(
            onTap: () => {
              setState(() {
                for (var e in cart.keys) {
                  coffeeCups.add(e);
                }
                totalCost = 0;
                cart.clear();
              }),
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OrderSuccessScreen()))
            },
            child: Container(
                width: 162,
                height: 51,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(248, 50, 74, 89),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: SvgPicture.asset('assets/svgs/buy_white.svg'),
                    ),
                    const Text('Checkout',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF))),
                  ],
                )),
          ),
        )
      ],
    );
  }
}
