import 'package:cinema_showtime_selection/component/my_order_scroll.dart';
import 'package:cinema_showtime_selection/database.dart';
import 'package:cinema_showtime_selection/variable/cup_of_coffee.dart';
import 'package:flutter/material.dart';

class PageViewReceipt extends StatefulWidget {
  const PageViewReceipt(this._pageController1, this.setTopBarButton,
      {super.key});
  final PageController? _pageController1;
  final Function setTopBarButton;
  @override
  State<PageViewReceipt> createState() => _PageViewReceiptState();
}

class _PageViewReceiptState extends State<PageViewReceipt> {
  int _indexPageView = 0;

  List<CupOfCoffee> onGoingCup =
      coffeeCups.where((element) => element.onGoing == true).toList();
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 2,
      controller: widget._pageController1,
      onPageChanged: (int indexPageView) => {
        widget.setTopBarButton(indexPageView),
        setState(() => _indexPageView = indexPageView)
      },
      itemBuilder: (_, i) {
        return i == 0
            ? MyOrderScroll(
                coffeeCups.where((element) => element.onGoing == true).toList())
            : MyOrderScroll(coffeeCups
                .where((element) => element.onGoing == false)
                .toList());
      },
    );
  }
}
