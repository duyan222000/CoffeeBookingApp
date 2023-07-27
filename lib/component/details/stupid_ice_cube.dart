import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget twoCube(BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        // width: 40,
        // height: 40,
        padding: const EdgeInsets.only(right: 10, top: 5),
        child: Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset("assets/svgs/ice_cube.svg"),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 15, top: 5),
        child: Align(
          alignment: Alignment.centerRight,
          child: SvgPicture.asset("assets/svgs/ice_cube.svg"),
        ),
      ),
    ],
  );
}

Widget twoCubeDisable(BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        padding: const EdgeInsets.only(right: 10, top: 5),
        child: Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset("assets/svgs/ice_cube_disable.svg"),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 15, top: 5),
        child: Align(
          alignment: Alignment.centerRight,
          child: SvgPicture.asset("assets/svgs/ice_cube_disable.svg"),
        ),
      ),
    ],
  );
}

Widget threeCube(BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        padding: const EdgeInsets.only(right: 10, top: 5),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: SvgPicture.asset("assets/svgs/ice_cube.svg"),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 15, top: 5),
        child: Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset("assets/svgs/ice_cube.svg"),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: Align(
          alignment: Alignment.center,
          child: SvgPicture.asset("assets/svgs/ice_cube.svg"),
        ),
      ),
    ],
  );
}

Widget threeCubeDisable(BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        padding: const EdgeInsets.only(right: 10, top: 10),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: SvgPicture.asset("assets/svgs/ice_cube_disable.svg"),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 15, top: 10),
        child: Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset("assets/svgs/ice_cube_disable.svg"),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: Align(
          alignment: Alignment.center,
          child: SvgPicture.asset("assets/svgs/ice_cube_disable.svg"),
        ),
      ),
    ],
  );
}
