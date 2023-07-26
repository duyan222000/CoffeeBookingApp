import 'package:cinema_showtime_selection/component/bottom_navigation.dart';
import 'package:cinema_showtime_selection/screen/home_screen.dart';
import 'package:cinema_showtime_selection/screen/receipt_screen.dart';
import 'package:cinema_showtime_selection/screen/reward_screen.dart';
import 'package:flutter/material.dart';

class ScreenScrollView extends StatefulWidget {
  const ScreenScrollView({super.key});

  @override
  State<ScreenScrollView> createState() => _ScreenScrollViewState();
}

class _ScreenScrollViewState extends State<ScreenScrollView> {
  int _index = 0;
  PageController? _pageController;
  @override
  void initState() {
    _pageController = PageController()..addListener(_listener);
    super.initState();
  }

  void onIconChange(int index) {
    setState(() {
      _pageController?.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  _listener() {
    print(_pageController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            height: MediaQuery.of(context).size.height, // card height
            width: MediaQuery.of(context).size.width, // card height
            child: Stack(children: [
              PageView.builder(
                itemCount: 3,
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (int index) => setState(() => _index = index),
                itemBuilder: (_, i) {
                  return i == 0
                      ? const MyHomeScreen()
                      : i == 1
                          ? const RewardScreen()
                          : const ReceiptScreen();
                },
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: BottomNavigation(onChange: onIconChange))),
            ])),
      ),
    );
  }
}
