import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String appName = "Ordinary Coffee House";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(children: <Widget>[
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/background_photo.png"),
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 216, 216, 216), BlendMode.darken))),
        ),
        Container(
          color: const Color.fromRGBO(29, 35, 53, 0.37),
          width: double.infinity,
          height: double.infinity,
        ),
        Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/svgs/icon.svg"),
                const SizedBox(height: 25),
                Text(appName,
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                        color: Colors.white)),
                const SizedBox(
                  height: 100,
                )
              ]),
        )
      ]),
    );
  }
}
