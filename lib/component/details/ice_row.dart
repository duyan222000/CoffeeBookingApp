import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IceSelect extends StatelessWidget {
  const IceSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Ice',
          style: const TextStyle(
              fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Container(
            width: 80,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset("assets/svgs/ice1.svg"),
                ),
                GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset("assets/svgs/ice1.svg")),
              ],
            ))
      ],
    );
  }
}
