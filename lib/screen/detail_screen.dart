import 'package:cinema_showtime_selection/component/details/details_total_cast.dart';
import 'package:cinema_showtime_selection/component/details/ice_row.dart';
import 'package:cinema_showtime_selection/component/details/navigation_bar.dart';
import 'package:cinema_showtime_selection/component/details/amount_row.dart';
import 'package:cinema_showtime_selection/component/details/select_row.dart';
import 'package:cinema_showtime_selection/component/details/shot_row.dart';
import 'package:cinema_showtime_selection/component/details/size_row.dart';
import 'package:cinema_showtime_selection/controllers/coffee_options.dart';
import 'package:cinema_showtime_selection/database.dart';
import 'package:cinema_showtime_selection/variable/cup_of_coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoffeeDetailOrder extends StatefulWidget {
  const CoffeeDetailOrder(this.coffeeName, this.image, this.fromRedeem,
      {Key? key})
      : super(key: key);
  final bool fromRedeem;
  final String coffeeName, image;

  @override
  State<CoffeeDetailOrder> createState() => _CoffeeDetailOrderState();
}

class _CoffeeDetailOrderState extends State<CoffeeDetailOrder> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => QuantityOption()),
          ChangeNotifierProvider(create: (context) => ShotOption()),
          ChangeNotifierProvider(create: (context) => TempOption()),
          ChangeNotifierProvider(create: (context) => SizeOption()),
          ChangeNotifierProvider(create: (context) => IceOption()),
        ],
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 248, 246, 240),
            body: Column(
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
                          widget.image,
                          width: 172,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        AmountRow(widget.coffeeName, widget.fromRedeem),
                        const Divider(
                          color: Color.fromARGB(122, 188, 182, 182),
                          thickness: 0.5,
                        ),
                        const ShotRow(),
                        const Divider(
                          color: Color.fromARGB(122, 188, 182, 182),
                          thickness: 0.5,
                        ),
                        const SelectTypeRow(),
                        const Divider(
                          color: Color.fromARGB(122, 188, 182, 182),
                          thickness: 0.5,
                        ),
                        const SizeSelect(),
                        const Divider(
                          color: Color.fromARGB(122, 188, 182, 182),
                          thickness: 0.5,
                        ),
                        const IceSelect(),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 150, bottom: 20),
                  child: TotalCast(widget.fromRedeem),
                ),
                AddToCartButton(widget.coffeeName)
              ],
            )));
  }
}

class AddToCartButton extends StatelessWidget {
  const AddToCartButton(
    this.coffeeName, {
    super.key,
  });
  final String coffeeName;
  @override
  Widget build(BuildContext context) {
    final quantity = Provider.of<QuantityOption>(context);
    final shot = Provider.of<ShotOption>(context);
    final hot = Provider.of<TempOption>(context);
    final size = Provider.of<SizeOption>(context);
    final ice = Provider.of<IceOption>(context);
    return GestureDetector(
      onTap: () => {
        cart[CupOfCoffee(
            name: coffeeName,
            shot: shot.currentShot,
            hot: hot.hot,
            size: size.currentSize,
            ice: ice.currentIce,
            buyDate: DateTime.now(),
            onGoing: true,
            deliveredLocation: user.address,
            cost: shot.shotCost + size.sizeCost)] = quantity.quantity,
        totalCost += (quantity.quantity * (shot.shotCost + size.sizeCost)),
        Navigator.pop(context)
      },
      child: Container(
        width: 315,
        height: 46,
        decoration: const BoxDecoration(
            color: Color.fromARGB(248, 50, 74, 89),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            )),
        child: const Center(
          child: Text('Add to cart',
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF))),
        ),
      ),
    );
  }
}
