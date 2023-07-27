import 'package:cinema_showtime_selection/screen/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBarDetail extends StatelessWidget {
  const NavigationBarDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset("assets/svgs/back_arrow.svg")),
        const Text("Details",
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFF001833),
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.26)),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartScreen()));
            },
            child: SvgPicture.asset("assets/svgs/buy.svg"))
      ],
    );
  }
}
