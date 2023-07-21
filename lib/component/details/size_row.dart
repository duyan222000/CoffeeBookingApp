import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SizeSelect extends StatelessWidget {
  const SizeSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Size',
          style: const TextStyle(
              fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Container(
            width: 120,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset("assets/svgs/size_small.svg"),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset("assets/svgs/size_medium.svg"),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset("assets/svgs/size_big.svg"),
                ),
              ],
            ))
      ],
    );
  }
}
