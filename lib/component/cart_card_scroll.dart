import 'package:cinema_showtime_selection/component/cart_card.dart';
import 'package:cinema_showtime_selection/component/redeem_coffee_card.dart';
import 'package:cinema_showtime_selection/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartCardScroll extends StatefulWidget {
  const CartCardScroll({super.key});
  @override
  State<CartCardScroll> createState() => _CartCardScrollState();
}

class _CartCardScrollState extends State<CartCardScroll> {
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
                for (var e in cart.keys)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Slidable(
                      endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          extentRatio: 0.15,
                          children: [
                            GestureDetector(
                              onTap: () => {setState(() => cart.remove(e))},
                              child: Container(
                                width: 48,
                                height: 96,
                                decoration: const BoxDecoration(
                                    color: Color(0xFFFFE5E5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: SvgPicture.asset(
                                  "assets/svgs/trash_can.svg",
                                  width: 10,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            )
                          ]),
                      child: CartCard(e, cart[e]!),
                    ),
                  )
              ]),
            )),
      );
    });
  }
}
