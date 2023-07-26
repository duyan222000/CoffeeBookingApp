import 'package:flutter/material.dart';

class RedeemCoffeeCard extends StatefulWidget {
  const RedeemCoffeeCard(this.coffeeName, this.image, {super.key});
  final String coffeeName;
  final String image;
  @override
  State<RedeemCoffeeCard> createState() => _RedeemCoffeeCardState();
}

class _RedeemCoffeeCardState extends State<RedeemCoffeeCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: Row(
              children: [
                Image.asset(widget.image, width: 82),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.coffeeName,
                          style: const TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF324A59),
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text('Valid until 04.07.22',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color.fromRGBO(50, 74, 89, 0.50),
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Container(
            width: 76,
            height: 32,
            decoration: const BoxDecoration(
                color: Color(0xFF324A59),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: const Center(
              child: Text("1340 pts",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
            ),
          ),
        )
      ],
    );
  }
}
