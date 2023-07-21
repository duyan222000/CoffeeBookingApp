import 'package:cinema_showtime_selection/component/coffee_point.dart';
import 'package:cinema_showtime_selection/database.dart';
import 'package:flutter/material.dart';

class CoffeePointScroll extends StatefulWidget {
  const CoffeePointScroll({super.key});

  @override
  State<CoffeePointScroll> createState() => _CoffeePointScrollState();
}

class _CoffeePointScrollState extends State<CoffeePointScroll> {
  final ScrollController _firstController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scrollbar(
        controller: _firstController,
        thumbVisibility: true,
        child: SingleChildScrollView(
            controller: _firstController,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for (int i = 0; i < coffeeCups.length; ++i)
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: CoffeePoint(coffeeCups[i]),
                          ),
                          i < coffeeCups.length - 1
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: 3,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 230, 227, 227)),
                                  ),
                                )
                              : Container()
                        ],
                      ),
                  ]),
            )),
      );
    });
  }
}
