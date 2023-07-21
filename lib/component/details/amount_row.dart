import 'package:flutter/material.dart';
import 'package:cinema_showtime_selection/controllers/coffee_options.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class AmountRow extends StatelessWidget {
  const AmountRow({super.key});

  @override
  Widget build(BuildContext context) {
    final quantity = Provider.of<QuantityOption>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'CAFE NAME',
          style: const TextStyle(
              fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Container(
            width: 79,
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    quantity.decreaseQuantity();
                  },
                  child: const Text('-'),
                ),
                Text(
                  '${quantity.quantity}',
                  style: TextStyle(fontFamily: "Poppins", fontSize: 13),
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
