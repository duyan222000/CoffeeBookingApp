import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalAppBar extends StatefulWidget {
  const PersonalAppBar({super.key});

  @override
  State<PersonalAppBar> createState() => _PersonalAppBarState();
}

class _PersonalAppBarState extends State<PersonalAppBar> {
  String greeting = "Good morning";
  String userName = "Anderson";
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: <Widget>[
              Text(
                greeting,
                style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xFFD8D8D8)),
              ),
              Text(userName,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF001833)))
            ],
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.4),
        IconButton(
          onPressed: () => {},
          icon: SvgPicture.asset(
            'assets/svgs/buy.svg',
            width: 26,
            height: 26,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            onPressed: () => {},
            icon: SvgPicture.asset(
              'assets/svgs/profile.svg',
              width: 26,
              height: 26,
            ),
          ),
        ),
      ],
    );
  }
}
