import 'package:flutter/material.dart';
import 'package:cinema_showtime_selection/controllers/coffee_options.dart';
import 'package:provider/provider.dart';

class AmountRow extends StatelessWidget {
  const AmountRow(this.coffeeName, {super.key});
  final String coffeeName;
  @override
  Widget build(BuildContext context) {
    final quantity = Provider.of<QuantityOption>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          coffeeName,
          style: const TextStyle(
              fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Container(
            width: 79,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                border: Border.all(
                    width: 1.2,
                    color: const Color.fromRGBO(216, 216, 216, 0.40))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    quantity.decreaseQuantity();
                  },
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  '${quantity.quantity}',
                  style: const TextStyle(fontFamily: "Poppins", fontSize: 13),
                ),
                GestureDetector(
                  onTap: () {
                    quantity.increaseQuantity();
                  },
                  child: const Text('+'),
                ),
              ],
            ))
      ],
    );
  }
}
