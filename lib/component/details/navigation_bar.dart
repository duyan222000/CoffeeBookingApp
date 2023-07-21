
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
            onPressed: () {},
            child: SvgPicture.asset("assets/svgs/back_arrow.svg")),
        const Text("Details"),
        TextButton(
            onPressed: () {}, child: SvgPicture.asset("assets/svgs/buy.svg"))
      ],
    );
  }
}
