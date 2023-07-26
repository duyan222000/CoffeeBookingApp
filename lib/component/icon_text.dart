import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconText extends StatelessWidget {
  const IconText(this.icon, this.text, {super.key});
  final String icon, text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: 15),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(text,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF324A59),
                  fontSize: 14,
                  fontWeight: FontWeight.w500)),
        )
      ],
    );
  }
}
