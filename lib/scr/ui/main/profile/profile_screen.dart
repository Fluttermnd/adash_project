import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/main/profile/profile_item/address_screen.dart';
import 'package:adash_project/scr/ui/main/profile/profile_item/card_screen.dart';
import 'package:adash_project/scr/ui/main/profile/profile_item/help_screen.dart';
import 'package:adash_project/scr/ui/main/profile/profile_item/keshBek_screen.dart';
import 'package:adash_project/scr/ui/main/profile/profile_item/language_screen.dart';
import 'package:adash_project/scr/ui/main/profile/widget/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.screen,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        title: const Text(
          "Профиль",
          textAlign: TextAlign.center,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              const SizedBox(width: 22),
              const Text(
                "Изменить фото",
                style: TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xFFD9D9D9),
                ),
              ),
            ],
          ),
          const Text(
            "Рафаэль Ройтман",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppColor.fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 23,
              color: AppColor.darkGrey,
            ),
          ),
          const Text(
            "+998 90 757 40 00",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppColor.fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFFD9D9D9),
            ),
          ),
          const Text(
            "Balans: 420 ball",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppColor.fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: AppColor.dark,
            ),
          ),
          const SizedBox(height: 26),
          Container(
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            padding: const EdgeInsets.only(
              top: 18,
              left: 20,
              bottom: 18,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: AppColor.white,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Color(0xFFCEDAE4),
                  blurRadius: 11,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AddressScreen();
                        },
                      ),
                    );
                  },
                  child: const ProfileWidget(
                    icon: "assets/icons/location.svg",
                    name: "Mening manzilarim",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const CardScreen();
                        },
                      ),
                    );
                  },
                  child: const ProfileWidget(
                    icon: "assets/icons/card.svg",
                    name: "To'lov kartalari",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const HelpScreen();
                        },
                      ),
                    );
                  },
                  child: const ProfileWidget(
                    icon: "assets/icons/help.svg",
                    name: "Yordam xizmati",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const LanguageScreen();
                        },
                      ),
                    );
                  },
                  child: const ProfileWidget(
                    icon: "assets/icons/language.svg",
                    name: "Til",
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const KeshBekScreen();
                  },
                ),
              );
            },
            child: Container(
              height: 58,
              width: width,
              margin: const EdgeInsets.only(
                bottom: 30,
                top: 30,
                left: 24,
                right: 24,
              ),
              padding: const EdgeInsets.only(left: 18),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Color(0xFFCEDAE4),
                    blurRadius: 11,
                    spreadRadius: 0,
                  ),
                ],
                border: Border.all(
                  color: AppColor.white,
                  width: 2,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/icons/keshBek.svg"),
                  const SizedBox(width: 18),
                  const Expanded(
                    child: Text(
                      "KeshBek",
                      style: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 19,
                        color: AppColor.darkGrey,
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/right.svg"),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          ),
          Container(
            height: 56,
            width: width,
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 30,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Exit",
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppColor.fontFamily,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: AppColor.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
