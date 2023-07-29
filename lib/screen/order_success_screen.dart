import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderSuccessScreen extends StatefulWidget {
  const OrderSuccessScreen({super.key});

  @override
  State<OrderSuccessScreen> createState() => _OrderSuccessScreenState();
}

class _OrderSuccessScreenState extends State<OrderSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 246, 240),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svgs/order_success.svg'),
              const Text('Order Success',
                  style: TextStyle(
                      color: Color(0xFF181D2D),
                      fontFamily: 'Poppins',
                      fontSize: 22,
                      fontWeight: FontWeight.w500)),
              const Text('Your order has been placed successfully.',
                  style: TextStyle(
                      color: Color(0xFFAAAAAA),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              const Text('For more details, go to my orders.  ',
                  style: TextStyle(
                      color: Color(0xFFAAAAAA),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: const EdgeInsets.only(right: 33.0),
                child: GestureDetector(
                  onTap: () => {Navigator.pop(context)},
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: 51,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(248, 50, 74, 89),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          )),
                      child: const Center(
                        child: Text('Track My Order',
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF))),
                      )),
                ),
              )
            ],
          ),
        ));
  }
}
