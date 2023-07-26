import 'package:cinema_showtime_selection/component/my_order_card.dart';
import 'package:cinema_showtime_selection/variable/cup_of_coffee.dart';
import 'package:flutter/material.dart';

class MyOrderScroll extends StatefulWidget {
  const MyOrderScroll(this.orders, {super.key});
  final List<CupOfCoffee> orders;
  @override
  State<MyOrderScroll> createState() => _MyOrderScrollScrollState();
}

class _MyOrderScrollScrollState extends State<MyOrderScroll> {
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
              child: Column(children: <Widget>[
                for (int i = 0; i < widget.orders.length; ++i)
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: MyOrderCard(widget.orders[i]),
                      ),
                      i < widget.orders.length - 1
                          ? Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                height: 1,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 230, 227, 227)),
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
