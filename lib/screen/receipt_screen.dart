import 'package:cinema_showtime_selection/component/my_order_topbar.dart';
import 'package:cinema_showtime_selection/component/page_view_receipt.dart';
import 'package:flutter/material.dart';

class ReceiptScreen extends StatefulWidget {
  const ReceiptScreen({super.key});

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  PageController? _pageController1;
  bool onGoingChoose = true;
  @override
  void initState() {
    _pageController1 = PageController()..addListener(() {});
    super.initState();
  }

  void onTopBarSelect(int indexPageView) {
    setState(() {
      _pageController1?.animateToPage(indexPageView,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  void setTopBarButton(int indexPageView) {
    setState(() {
      onGoingChoose = indexPageView == 0 ? true : false;
    });
  }

  String title = 'My Order';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 246, 240),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 57.0, bottom: 27),
              child: Text(title,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF001833),
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: MyOrderTopBar(onTopBarSelect, onGoingChoose),
            ),
            Expanded(child: PageViewReceipt(_pageController1, setTopBarButton)),
            const SizedBox(
              height: 90,
            )
          ],
        ));
  }
}
