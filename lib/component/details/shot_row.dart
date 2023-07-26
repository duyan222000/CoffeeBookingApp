import 'package:cinema_showtime_selection/controllers/coffee_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShotRow extends StatelessWidget {
  const ShotRow({super.key});

  @override
  Widget build(BuildContext context) {
    final shotChose = Provider.of<ShotOption>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Shot',
          style: TextStyle(
              fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500),
        ),
        SizedBox(
            width: 160,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    shotChose.chooseSingleShot();
                  },
                  child: Container(
                    width: 73,
                    height: 29,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(216, 216, 216, 0.40),
                          width: 1.2,
                        ),
                        color: shotChose.singleShot
                            ? Color.fromRGBO(216, 216, 216, 0.40)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                      child: Text(
                        'Single',
                        style: TextStyle(fontFamily: "Poppins", fontSize: 12),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    shotChose.chooseDoubleShot();
                  },
                  child: Container(
                    width: 73,
                    height: 29,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(216, 216, 216, 0.40),
                          width: 1.2,
                        ),
                        color: shotChose.doubleShot
                            ? const Color.fromRGBO(216, 216, 216, 0.40)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                      child: Text(
                        'Double',
                        style: TextStyle(fontFamily: "Poppins", fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
