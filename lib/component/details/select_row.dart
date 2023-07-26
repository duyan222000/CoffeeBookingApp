import 'package:cinema_showtime_selection/controllers/coffee_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SelectTypeRow extends StatelessWidget {
  const SelectTypeRow({super.key});

  @override
  Widget build(BuildContext context) {
    final typeDrink = Provider.of<TempOption>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Select',
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
                  //choose hot
                  onTap: () {
                    typeDrink.chooseHot();
                  },
                  child: typeDrink.hot
                      ? SvgPicture.asset("assets/svgs/hot_coffee_choose.svg")
                      : SvgPicture.asset("assets/svgs/hot_coffee.svg"),
                ),
                GestureDetector(
                  onTap: () {
                    typeDrink.chooseCold();
                  },
                  child: typeDrink.hot
                      ? SvgPicture.asset("assets/svgs/cold_coffee.svg")
                      : SvgPicture.asset("assets/svgs/cold_coffee_choose.svg"),
                ),
              ],
            ))
      ],
    );
  }
}
