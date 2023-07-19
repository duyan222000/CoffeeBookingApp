import 'package:flutter/material.dart';

class MovieInformation extends StatefulWidget {
  const MovieInformation({super.key});

  @override
  State<MovieInformation> createState() => _MovieInformationState();
}

class _MovieInformationState extends State<MovieInformation> {
  String movieInfo = "Movie Information";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white, title: Center(child: Text(movieInfo))),
    );
  }
}
