import 'package:cinema_showtime_selection/controllers/coffee_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SizeSelect extends StatelessWidget {
  const SizeSelect({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Provider.of<SizeOption>(context);
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
                  onTap: () {
                    size.chooseSmall();
                  },
                  child: size.small
                      ? SvgPicture.asset("assets/svgs/size_small_choose.svg")
                      : SvgPicture.asset("assets/svgs/size_small.svg"),
                ),
                GestureDetector(
                  onTap: () {
                    size.chooseMedium();
                  },
                  child: size.medium
                      ? SvgPicture.asset("assets/svgs/size_medium_choose.svg")
                      : SvgPicture.asset("assets/svgs/size_medium.svg"),
                ),
                GestureDetector(
                  onTap: () {
                    size.chooseBig();
                  },
                  child: size.big
                      ? SvgPicture.asset("assets/svgs/size_big_choose.svg")
                      : SvgPicture.asset("assets/svgs/size_big.svg"),
                ),
              ],
            ))
      ],
    );
  }
}
