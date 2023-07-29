import 'package:cinema_showtime_selection/controllers/coffee_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TotalCast extends StatefulWidget {
  const TotalCast(this.fromRedeem, {super.key});
  final bool fromRedeem;
  @override
  State<TotalCast> createState() => _TotalCastState();
}

class _TotalCastState extends State<TotalCast> {
  @override
  Widget build(BuildContext context) {
    final int cash = (Provider.of<QuantityOption>(context).quantity *
        (Provider.of<ShotOption>(context).shotCost +
            Provider.of<SizeOption>(context).sizeCost));
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Total Amount',
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Text(
            '\$ ${widget.fromRedeem ? cash - 5 > 0 ? cash - 5 : 0 : cash}',
            style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ))
      ],
    );
  }
}
