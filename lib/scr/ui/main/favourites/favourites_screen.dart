import 'package:adash_project/scr/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.screen,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        title: const Text(
          "Избранное",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: AppColor.fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: AppColor.darkGrey),
        ),
      ),
      body: ListView.builder(
        // shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(
              left: 22,
              right: 26,
              top: 30,
            ),
            decoration: BoxDecoration(
              color: AppColor.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 1),
                  color:const Color(0xFFCEDAE4).withOpacity(0.71),
                  blurRadius: 11,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: 
              BorderRadius.circular(10),
              border: Border.all(
                color: AppColor.white,
                width: 2,
              ),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/active.png"),
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
              ],
            ),
          );
        },
      ),
    );
  }
}

