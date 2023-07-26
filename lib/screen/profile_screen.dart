import 'package:cinema_showtime_selection/component/text_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cinema_showtime_selection/database.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void changeName(String newName) {
    user.fullName = newName;
  }

  void changePhoneNumber(String newPhoneNumber) {
    user.phoneNumber = newPhoneNumber;
  }

  void changeEmail(String newEmail) {
    user.email = newEmail;
  }

  void changeAddress(String newAddress) {
    user.address = newAddress;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 246, 240),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45.0, bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: SvgPicture.asset("assets/svgs/back.svg")),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 85.0),
                      child: Text("Profile",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF001833),
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
              TextBox("assets/svgs/profile.svg", "Full name", user.fullName,
                  changeName),
              TextBox("assets/svgs/phone.svg", "Phone number", user.phoneNumber,
                  changePhoneNumber),
              TextBox(
                  "assets/svgs/email.svg", "Email", user.email, changeEmail),
              TextBox("assets/svgs/location.svg", "Address", user.address,
                  changeAddress),
            ],
          ),
        ],
      ),
    );
  }
}
