import 'package:flutter/material.dart';

class TotalCast extends StatelessWidget {
  const TotalCast({super.key});
  @override
  Widget build(BuildContext context) {
    final cash = '\$' + 'Tien';
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Total Amount',
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Text(cash,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ))
      ],
    );
  }
}
