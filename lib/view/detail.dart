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
        backgroundColor: Color.fromARGB(255, 176, 140, 34),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: NavigationBarDetail(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFF7F8FB),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                width: 325,
                height: 146,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/cappuccino.png',
                      width: 172,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AmountRow(),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    ShotRow(),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    SelectTypeRow(),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    SizeSelect(),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    IceSelect()
                  ]),
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
