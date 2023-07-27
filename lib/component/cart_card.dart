import 'package:cinema_showtime_selection/database.dart';
import 'package:cinema_showtime_selection/variable/cup_of_coffee.dart';
import 'package:flutter/material.dart';

class CartCard extends StatefulWidget {
  const CartCard(this.coffee, this.amount, {super.key});
  final CupOfCoffee coffee;
  final int amount;
  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 217, 217, 218),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0, bottom: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Row(
                  children: [
                    Image.asset(coffeeImage[widget.coffee.name].toString(),
                        width: 82),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.coffee.name,
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF324A59),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          Text(
                              '${widget.coffee.shot} | ${widget.coffee.hot ? "hot" : "iced"} | ${widget.coffee.size} | ${widget.coffee.ice}',
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color.fromRGBO(50, 74, 89, 0.50),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500)),
                          Text("x ${widget.amount.toString()}",
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color.fromRGBO(0, 0, 0, 0.57),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text('\$$totalCost.00',
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
