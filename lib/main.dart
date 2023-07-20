// import 'package:cinema_showtime_selection/component/movie_place_holder.dart';

import 'package:cinema_showtime_selection/screen/loading_screen.dart';
import 'package:cinema_showtime_selection/Screen/home_screen.dart';
import 'package:cinema_showtime_selection/component/bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinema Selection',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Cinema Ticket Selection'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String constString = "ABCD";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        MyHomeScreen(),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: BottomNavigation(),
            ))
      ],
    ));
  }
}
