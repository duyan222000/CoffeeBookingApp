import 'package:flutter/material.dart';

class MoviePlaceHolder extends StatelessWidget {
  const MoviePlaceHolder(this.i);
  final int i;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            "assets/images/spider_man.jpg",
            scale: 0.5,
            height: 200,
          ),
        ),
        Text("abc"),
        Text("$i")
      ],
    ));
  }
}
