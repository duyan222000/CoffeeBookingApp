import 'package:cinema_showtime_selection/component/details/details_total_cast.dart';
import 'package:cinema_showtime_selection/component/details/ice_row.dart';
import 'package:cinema_showtime_selection/component/details/navigation_bar.dart';
import 'package:cinema_showtime_selection/component/details/amount_row.dart';
import 'package:cinema_showtime_selection/component/details/select_row.dart';
import 'package:cinema_showtime_selection/component/details/shot_row.dart';
import 'package:cinema_showtime_selection/component/details/size_row.dart';
import 'package:flutter/material.dart';

class CoffeeDetailOrder extends StatelessWidget {
  const CoffeeDetailOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: NavigationBarDetail(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 30),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(229, 224, 223, 1),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                width: 350,
                height: 146,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/cappuccino.png',
                      width: 172,
                    )),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AmountRow(),
                    Divider(
                      color: Color.fromARGB(122, 188, 182, 182),
                      thickness: 0.5,
                    ),
                    ShotRow(),
                    Divider(
                      color: Color.fromARGB(122, 188, 182, 182),
                      thickness: 0.5,
                    ),
                    SelectTypeRow(),
                    Divider(
                      color: Color.fromARGB(122, 188, 182, 182),
                      thickness: 0.5,
                    ),
                    SizeSelect(),
                    Divider(
                      color: Color.fromARGB(122, 188, 182, 182),
                      thickness: 0.5,
                    ),
                    IceSelect(),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 150, bottom: 20),
              child: TotalCast(),
            ),
            Container(
              width: 315,
              height: 46,
              decoration: BoxDecoration(
                  color: Color.fromARGB(248, 50, 74, 89),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  )),
              child: Center(
                child: Text('Add to cart',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF))),
              ),
            )
          ],
        )
        // Container(
        //   padding: const EdgeInsets.all(16),
        //   height: 500,
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: <Widget>[
        //       SizedBox(
        //         height: 10,
        //       ),

        //       ListTile(
        //           title: Text('Shot'),
        //           trailing: Row(children: []),
        //           contentPadding: EdgeInsets.symmetric(horizontal: 20)),
        //       ListTile(
        //         title: Text('Select'),
        //         trailing: Row(children: []),
        //       ),
        //       ListTile(
        //           title: Text('Size'),
        //           trailing: Row(
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               IconButton(
        //                   onPressed: () {}, icon: const Icon(Icons.favorite)),
        //               IconButton(
        //                   onPressed: () {}, icon: const Icon(Icons.edit)),
        //               IconButton(
        //                   onPressed: () {}, icon: const Icon(Icons.delete)),
        //             ],
        //           ),
        //           contentPadding: EdgeInsets.symmetric(horizontal: 20)),
        //       ListTile(
        //           title: Text('Ice'),
        //           trailing: Row(children: []),
        //           contentPadding: EdgeInsets.symmetric(horizontal: 20)),
        //     ],
        //   ),
        // )
        );
  }
}
