import 'package:adash_project/scr/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaystationWidget extends StatelessWidget {
  const PlaystationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 8,
      ),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            color: const Color(0xFFCEDAE4).withOpacity(0.71),
            blurRadius: 11,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColor.white,
          width: 2,
        ),
      ),
      height: 140,
      width: width,
      child: Container(
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/images/playstations.png"),
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
                      "Playsations",
                      style: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: AppColor.darkGrey,
                      ),
                    ),
                    const SizedBox(width: 18),
                    SvgPicture.asset(
                      "assets/icons/favorites.svg",
                      color: AppColor.dark,
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/active_star.svg",
                      height: 18,
                      width: 18,
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
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      "assets/icons/location.svg",
                      height: 18,
                      width: 18,
                      color: AppColor.dark,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      "Бочка",
                      style: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColor.dark,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  "magna aqua.",
                  style: TextStyle(
                    fontFamily: AppColor.fontFamily,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: AppColor.grey,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
