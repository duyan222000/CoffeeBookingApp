import 'package:cinema_showtime_selection/component/details/stupid_ice_cube.dart';
import 'package:cinema_showtime_selection/controllers/coffee_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class IceSelect extends StatelessWidget {
  const IceSelect({super.key});

  @override
  Widget build(BuildContext context) {
    final iceChoice = Provider.of<IceOption>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Ice',
          style: TextStyle(
              fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500),
        ),
        SizedBox(
            width: 130,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    iceChoice.leastAmount();
                  },
                  child: SizedBox(
                      width: 30,
                      child: iceChoice.leastIce
                          ? SvgPicture.asset("assets/svgs/ice_cube.svg")
                          : SvgPicture.asset(
                              "assets/svgs/ice_cube_disable.svg")),
                ),
                GestureDetector(
                  onTap: () {
                    iceChoice.mediumAmount();
                  },
                  child: Container(
                    width: 40,
                    child: iceChoice.mediumIce
                        ? twoCube(context)
                        : twoCubeDisable(context),
                    padding: EdgeInsets.only(right: 10),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    iceChoice.mostAmount();
                  },
                  child: SizedBox(
                    width: 30,
                    child: iceChoice.mostIce
                        ? threeCube(context)
                        : threeCubeDisable(context),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
