import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/main/reservations/active/cancel/cancel_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookingHotel extends StatefulWidget {
  const BookingHotel({Key? key}) : super(key: key);

  @override
  _BookingHotelState createState() => _BookingHotelState();
}

class _BookingHotelState extends State<BookingHotel> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.screen,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 70),
          Image.asset("assets/images/hotel_booking.png"),
          const SizedBox(height: 44),
          const Text(
            "Номер забронирован",
            style: TextStyle(
              fontFamily: AppColor.fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 19,
              color: AppColor.darkGrey,
            ),
          ),
          Container(
            height: 128,
            width: width,
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 30,
              bottom: 18,
            ),
            decoration: BoxDecoration(
              color: AppColor.white,
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
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: const EdgeInsets.only(
                        top: 20,
                        right: 28,
                        left: 24,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.dark,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 1),
                            color: AppColor.light.withOpacity(0.71),
                            blurRadius: 11,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/location.svg",
                          color: AppColor.white,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Text(
                        "Picccola Cucina",
                        style: TextStyle(
                          fontFamily: AppColor.fontFamily,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: AppColor.darkGrey,
                        ),
                      ),
                    ),
                    const Text(
                      "Изменить",
                      style: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColor.dark,
                      ),
                    ),
                    const SizedBox(width: 24),
                  ],
                ),
                Container(
                  height: 1,
                  width: width,
                  margin: const EdgeInsets.only(top: 14, bottom: 16),
                  color: const Color(0xFFA9A9AA).withOpacity(0.15),
                ),
                Row(
                  children: [
                    const SizedBox(width: 30),
                    SvgPicture.asset(
                      "assets/icons/time.svg",
                      color: AppColor.dark,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "9:30 PM, Tuesday, 28 Oct 2018",
                      style: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColor.dark,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CancelScreen();
                  },
                ),
              );
            },
            child: Container(
              height: 50,
              width: width,
              margin: const EdgeInsets.only(
                right: 28,
                left: 24,
                bottom: 74,
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
              child: const Center(
                child: Text(
                  "Отменить бронирование",
                  style: TextStyle(
                    fontFamily: AppColor.fontFamily,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColor.dark,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: width,
            margin: const EdgeInsets.only(
              right: 28,
              left: 24,
              bottom: 74,
            ),
            decoration: BoxDecoration(
              color: AppColor.dark,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Center(
              child: Text(
                "На главную",
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
        ],
      ),
    );
  }
}
