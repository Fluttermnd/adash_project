import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/categories/doctor/doctor_item/doctor_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  @override
  Widget build(BuildContext context) {
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
              ),
            ),
          ),
        ),
        title: const Text(
          "Стоматологи",
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
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DoctorScreen();
                      },
                    ),
                  );
                },
                child: Container(
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
                  height: 122,
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
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
                            const Text(
                              "Stomotology specialist in ",
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
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
