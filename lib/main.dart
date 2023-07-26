// import 'package:cinema_showtime_selection/component/movie_place_holder.dart';

import 'package:cinema_showtime_selection/component/screen_scroll_view.dart';
import 'package:cinema_showtime_selection/screen/loading_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
// import 'package:provider/provider.dart';

// import 'package:cinema_showtime_selection/controllers/coffee_options.dart';

// import 'screen/detail.dart';

// void main() async {
//   runApp(const MyHomePage());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
// return MultiProvider(
//     providers: [
//       ChangeNotifierProvider(create: (context) => QuantityOption()),
//       ChangeNotifierProvider(create: (context) => ShotOption()),
//       ChangeNotifierProvider(create: (context) => TempOption()),
//       ChangeNotifierProvider(create: (context) => SizeOption()),
//       ChangeNotifierProvider(create: (context) => IceOption()),
//     ],
//     child: MaterialApp(
//       //title: 'Cinema Selection',
//       //theme: ThemeData(
//       //colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
//       //useMaterial3: true,
//       //),
//       // ),
//       //home: const MyHomePage(title: 'Cinema Ticket Selection'),
//       home: CoffeeDetailOrder(),
//     ));
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String constString = "ABCD";
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         const Duration(seconds: 3),
//         () => Navigator.pushReplacement(context,
//             MaterialPageRoute(builder: (context) => const ScreenScrollView())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(color: Colors.white, child: const LoadingScreen());
//   }
// }
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
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const ScreenScrollView())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: const LoadingScreen());
  }
}
