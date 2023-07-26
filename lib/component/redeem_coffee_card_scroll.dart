import 'package:cinema_showtime_selection/component/redeem_coffee_card.dart';
import 'package:cinema_showtime_selection/database.dart';
import 'package:flutter/material.dart';

class RedeemCoffeeCardScroll extends StatefulWidget {
  const RedeemCoffeeCardScroll({super.key});
  @override
  State<RedeemCoffeeCardScroll> createState() => _RedeemCoffeeCardScrollState();
}

class _RedeemCoffeeCardScrollState extends State<RedeemCoffeeCardScroll> {
  final ScrollController _redeemScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scrollbar(
        controller: _redeemScrollController,
        thumbVisibility: true,
        child: SingleChildScrollView(
            controller: _redeemScrollController,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(children: <Widget>[
                for (int i = 0; i < redeemList.length; ++i)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: RedeemCoffeeCard(
                        redeemList[i], coffeeImage[redeemList[i]].toString()),
                  ),
              ]),
            )),
      );
    });
  }
}
