import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int? currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.864,
        height: MediaQuery.of(context).size.height * 0.079,
        decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 0,
            ),
            IconButton(
              onPressed: () => {
                setState(() {
                  currentPage = 0;
                })
              },
              icon: currentPage == 0
                  ? SvgPicture.asset(
                      'assets/svgs/home.svg',
                      width: 21,
                      height: 21,
                    )
                  : SvgPicture.asset(
                      'assets/svgs/home_disable.svg',
                      width: 21,
                      height: 21,
                    ),
            ),
            IconButton(
              onPressed: () => {
                setState(() {
                  currentPage = 1;
                })
              },
              icon: currentPage == 1
                  ? SvgPicture.asset(
                      'assets/svgs/gift.svg',
                      width: 21,
                      height: 21,
                    )
                  : SvgPicture.asset(
                      'assets/svgs/gift_disable.svg',
                      width: 21,
                      height: 21,
                    ),
            ),
            IconButton(
              onPressed: () => {
                setState(() {
                  currentPage = 2;
                })
              },
              icon: currentPage == 2
                  ? SvgPicture.asset(
                      'assets/svgs/receipt.svg',
                      width: 21,
                      height: 21,
                    )
                  : SvgPicture.asset(
                      'assets/svgs/receipt_disable.svg',
                      width: 21,
                      height: 21,
                    ),
            ),
            const SizedBox(
              width: 0,
            ),
          ],
        ));
  }
}
