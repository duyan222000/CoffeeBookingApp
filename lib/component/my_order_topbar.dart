import 'package:flutter/material.dart';

class MyOrderTopBar extends StatefulWidget {
  MyOrderTopBar(this.onTopBarSelected, this.onGoingChoose, {super.key});
  final Function onTopBarSelected;
  bool onGoingChoose;
  @override
  State<MyOrderTopBar> createState() => _MyOrderTopBarState();
}

class _MyOrderTopBarState extends State<MyOrderTopBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => {
                setState(() {
                  widget.onGoingChoose = true;
                  widget.onTopBarSelected(0);
                })
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text("On going",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: widget.onGoingChoose
                                ? const Color(0xFF001833)
                                : const Color(0xFFD8D8D8),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                  widget.onGoingChoose
                      ? Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFF324A59),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16))),
                          child: const SizedBox(width: 100, height: 2))
                      : const SizedBox(
                          width: 100,
                        )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => {
                setState(() {
                  widget.onGoingChoose = false;
                  widget.onTopBarSelected(1);
                })
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text("History",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: widget.onGoingChoose
                                ? const Color(0xFFD8D8D8)
                                : const Color(0xFF001833),
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ),
                  !widget.onGoingChoose
                      ? Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFF324A59),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16))),
                          child: const SizedBox(width: 100, height: 2))
                      : const SizedBox(
                          width: 100,
                        )
                ],
              ),
            )
          ],
        ),
        Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 230, 227, 227),
            ),
            child:
                SizedBox(width: MediaQuery.of(context).size.width, height: 1))
      ],
    );
  }
}
