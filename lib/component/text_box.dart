import 'package:cinema_showtime_selection/variable/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextBox extends StatefulWidget {
  const TextBox(this.icon, this.title, this.body, this.onChange, {super.key});
  final String icon, title, body;
  final Function onChange;
  @override
  State<TextBox> createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  final myController = TextEditingController();
  String? tempValue;
  @override
  void initState() {
    tempValue = widget.body;
    super.initState();
  }

  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  bool editClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 33.0, right: 16),
                child: Container(
                    width: 42,
                    height: 42,
                    decoration: const BoxDecoration(
                        color: Color(0xFFF7F8FB),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    child: Center(
                        child: SvgPicture.asset(
                      widget.icon,
                      height: 20,
                    ))),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title,
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFFD8D8D8),
                            fontSize: 10,
                            fontWeight: FontWeight.w500)),
                    editClicked
                        ? TextFormField(
                            controller: myController,
                            decoration: const InputDecoration(
                              hintText: "",
                            ),
                          )
                        : Text(
                            tempValue.toString(),
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF324A59),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            softWrap: true,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          )
                  ],
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 33),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () => {
                        setState(() {
                          if (editClicked == true && myController.text != "") {
                            widget.onChange(myController.text);
                            tempValue = myController.text;
                          }
                          editClicked = editClicked == false ? true : false;
                        })
                      },
                  child: SvgPicture.asset("assets/svgs/edit.svg")),
            ),
          )
        ],
      ),
    );
  }
}
