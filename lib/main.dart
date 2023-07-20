// import 'package:cinema_showtime_selection/component/movie_place_holder.dart';

import 'package:cinema_showtime_selection/screen/loading_screen.dart';
import 'package:cinema_showtime_selection/Screen/home_screen.dart';
import 'package:cinema_showtime_selection/component/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:cinema_showtime_selection/controllers/coffee_options.dart';

import 'view/detail.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => QuantityOption()),
          ChangeNotifierProvider(create: (_) => ShotOption()),
          ChangeNotifierProvider(create: (_) => CupTypeOption()),
          ChangeNotifierProvider(create: (_) => SizeOption()),
          ChangeNotifierProvider(create: (_) => IceOption()),
        ],
        child: MaterialApp(
          //title: 'Cinema Selection',
          //theme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          //useMaterial3: true,
          //),
          // ),
          //home: const MyHomePage(title: 'Cinema Ticket Selection'),
          home: CoffeeDetailOrder(),
        ));
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
