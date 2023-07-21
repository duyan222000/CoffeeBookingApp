import 'package:cinema_showtime_selection/component/bottom_navigation.dart';
import 'package:cinema_showtime_selection/screen/home_screen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        MyHomeScreen(),
        // Align(
        //     alignment: Alignment.bottomCenter,
        //     child: Padding(
        //       padding: EdgeInsets.only(bottom: 15.0),
        //       child: BottomNavigation(),
        //     ))
      ],
    ));
  }
}
