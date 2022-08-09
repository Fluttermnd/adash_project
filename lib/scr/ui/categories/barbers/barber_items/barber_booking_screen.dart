import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/categories/doctor/doctor_item/yourDetails_Screen.dart';
import 'package:adash_project/scr/ui/main/reservations/active/edit/widget/choose_time_widget.dart';
import 'package:adash_project/scr/ui/main/reservations/active/edit/widget/edit_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BarBerBookingScreen extends StatefulWidget {
  const BarBerBookingScreen({Key? key}) : super(key: key);

  @override
  _BarBerBookingScreenState createState() => _BarBerBookingScreenState();
}

class _BarBerBookingScreenState extends State<BarBerBookingScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.screen,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 38,
            width: 38,
            margin: const EdgeInsets.only(
              top: 4,
              bottom: 4,
              right: 4,
              left: 4,
            ),
            decoration: BoxDecoration(
              color: AppColor.dark,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 1),
                  color: AppColor.dark.withOpacity(0.71),
                  blurRadius: 11,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/icons/left.svg",
                height: 16,
                width: 16,
              ),
            ),
          ),
        ),
        title: const Text(
          "Забронировать",
          style: TextStyle(
            fontFamily: AppColor.fontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: AppColor.darkGrey,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.transparent,
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 28,
              top: 24,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/barber_shops.png"),
                ),
                const SizedBox(width: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Рафаэль Ройтман",
                          style: TextStyle(
                            fontFamily: AppColor.fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            color: AppColor.darkGrey,
                          ),
                        ),
                        const SizedBox(width: 18),
                        SvgPicture.asset("assets/icons/favorites.svg"),
                        const SizedBox(width: 20),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/active_star.svg",
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          "3,2",
                          style: TextStyle(
                            fontFamily: AppColor.fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColor.dark,
                            letterSpacing: 0.5,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/calendar.svg"),
                        const SizedBox(width: 4),
                        const Text(
                          "22 июня, 2022",
                          style: TextStyle(
                            fontFamily: AppColor.fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColor.grey,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(width: 4),
                        SvgPicture.asset("assets/icons/time.svg"),
                        const SizedBox(width: 4),
                        const Text(
                          "16:00",
                          style: TextStyle(
                            fontFamily: AppColor.fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColor.grey,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 24,
              bottom: 26,
            ),
            child: Text(
              "Make Appointment",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: AppColor.fontFamily,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: AppColor.darkGrey,
              ),
            ),
          ),
          Row(
            children: const [
              SizedBox(width: 16),
              EditWidget(
                name: "Mon",
                number: "12",
                color: AppColor.white,
                textColor: AppColor.dark,
                height: 80,
              ),
              EditWidget(
                name: "Thu",
                number: "13",
                color: AppColor.dark,
                textColor: AppColor.white,
                height: 90,
              ),
              EditWidget(
                name: "Wen",
                number: "14",
                color: AppColor.white,
                textColor: AppColor.dark,
                height: 80,
              ),
              EditWidget(
                name: "Thur",
                number: "15",
                color: AppColor.white,
                textColor: AppColor.dark,
                height: 80,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 24,
              bottom: 26,
            ),
            child: Text(
              "Monday, March 25 2022",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: AppColor.fontFamily,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: AppColor.darkGrey,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: 44,
                width: 150,
                margin: const EdgeInsets.only(
                  bottom: 4,
                  left: 24,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      color: AppColor.light.withOpacity(0.71),
                      blurRadius: 11,
                      spreadRadius: 0,
                    ),
                  ],
                  border: Border.all(
                    color: AppColor.dark,
                    width: 1,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/sun.svg",
                      color: AppColor.dark,
                    ),
                    const SizedBox(width: 14),
                    const Text(
                      "Morning",
                      style: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: AppColor.dark,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Container(
                height: 44,
                width: 150,
                margin: const EdgeInsets.only(
                  bottom: 24,
                  right: 24,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      color: AppColor.light.withOpacity(0.71),
                      blurRadius: 11,
                      spreadRadius: 0,
                    ),
                  ],
                  border: Border.all(
                    color: AppColor.light,
                    width: 2,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/lamp.svg"),
                    const SizedBox(width: 14),
                    const Text(
                      "Evening",
                      style: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: AppColor.light,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 24,
              bottom: 26,
            ),
            child: Text(
              "Choose the hour",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: AppColor.fontFamily,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: AppColor.darkGrey,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: const [
                  ChooseTimeWidget(name: "09:00 AM"),
                  SizedBox(width: 8),
                  ChooseTimeWidget(name: "10:00 AM"),
                  SizedBox(width: 8),
                  ChooseTimeWidget(name: "11:00 AM"),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  ChooseTimeWidget(name: "12:00 PM"),
                  SizedBox(width: 8),
                  ChooseTimeWidget(name: "13:00 PM"),
                  SizedBox(width: 8),
                  ChooseTimeWidget(name: "14:00 PM"),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              "Fee information",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: AppColor.fontFamily,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize: 17,
                color: AppColor.darkGrey,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: 78,
                width: 350,
                margin: const EdgeInsets.only(
                  bottom: 42,
                  top: 26,
                  left: 24,
                  right: 24,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      color: const Color(0xFFCEDAE4).withOpacity(0.71),
                      blurRadius: 11,
                      spreadRadius: 0,
                    ),
                  ],
                  border: Border.all(
                    color: AppColor.dark,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEAF1FF),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 1),
                            color: const Color(0xFFCEDAE4).withOpacity(0.71),
                            blurRadius: 11,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset("assets/icons/phone.svg"),
                      ),
                    ),
                    const SizedBox(width: 14),
                    const Text(
                      "Voice call",
                      style: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: AppColor.darkGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const YourDetailsScreen();
                  },
                ),
              );
            },
            child: Container(
              height: 50,
              width: width,
              margin: const EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: 24,
              ),
              decoration: BoxDecoration(
                color: AppColor.dark,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Color(0xFFCEDAE4),
                    blurRadius: 11,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontFamily: AppColor.fontFamily,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: AppColor.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
