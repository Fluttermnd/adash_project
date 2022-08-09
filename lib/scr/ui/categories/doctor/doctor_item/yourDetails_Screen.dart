import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/categories/doctor/doctor_item/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class YourDetailsScreen extends StatefulWidget {
  const YourDetailsScreen({Key? key}) : super(key: key);

  @override
  _YourDetailsScreenState createState() => _YourDetailsScreenState();
}

class _YourDetailsScreenState extends State<YourDetailsScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _problemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.screen,
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 24,
              left: 22,
              bottom: 20,
            ),
            child: Text(
              "Full name",
              style: TextStyle(
                fontFamily: AppColor.fontFamily,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColor.darkGrey,
              ),
            ),
          ),
          Container(
            height: 44,
            width: width,
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 30,
            ),
            padding: const EdgeInsets.only(left: 18),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/profile.svg",
                  color: AppColor.light,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: _nameController,
                    style: const TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      height: 1.8,
                      letterSpacing: 0.5,
                      color: AppColor.darkGrey,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Full name",
                      hintStyle: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: AppColor.light,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(
              left: 22,
              bottom: 20,
            ),
            child: Text(
              "Select Your Age Range",
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
                height: 38,
                width: 60,
                margin: const EdgeInsets.only(
                  left: 24,
                  right: 6,
                  bottom: 30,
                ),
                padding: const EdgeInsets.only(left: 18),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "10+",
                    style: TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: AppColor.light,
                    ),
                  ),
                ),
              ),
              Container(
                height: 38,
                width: 60,
                margin: const EdgeInsets.only(
                  right: 6,
                  bottom: 30,
                ),
                padding: const EdgeInsets.only(left: 18),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "10+",
                    style: TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: AppColor.light,
                    ),
                  ),
                ),
              ),
              Container(
                height: 38,
                width: 60,
                margin: const EdgeInsets.only(
                  right: 24,
                  bottom: 30,
                ),
                padding: const EdgeInsets.only(left: 18),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "10+",
                    style: TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: AppColor.light,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const Padding(
            padding: EdgeInsets.only(
              left: 22,
              bottom: 20,
            ),
            child: Text(
              "Phone number",
              style: TextStyle(
                fontFamily: AppColor.fontFamily,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColor.darkGrey,
              ),
            ),
          ),
          Container(
            height: 44,
            width: width,
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 30,
            ),
            padding: const EdgeInsets.only(left: 18),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/phone.svg",
                  color: AppColor.light,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _phoneController,
                    style: const TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      height: 1.8,
                      letterSpacing: 0.5,
                      color: AppColor.darkGrey,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Phone number",
                      hintStyle: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: AppColor.light,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(
              left: 22,
              bottom: 20,
            ),
            child: Text(
              "Gender",
              style: TextStyle(
                fontFamily: AppColor.fontFamily,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColor.darkGrey,
              ),
            ),
          ),
          Container(
            height: 44,
            width: width,
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 30,
            ),
            padding: const EdgeInsets.only(left: 18),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/profile.svg",
                  color: AppColor.light,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: _genderController,
                    style: const TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      height: 1.8,
                      letterSpacing: 0.5,
                      color: AppColor.darkGrey,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Gender",
                      hintStyle: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: AppColor.light,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(
              left: 22,
              bottom: 20,
            ),
            child: Text(
              "Write Your Problem",
              style: TextStyle(
                fontFamily: AppColor.fontFamily,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColor.darkGrey,
              ),
            ),
          ),
          Container(
            height: 96,
            width: width,
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 30,
            ),
            padding: const EdgeInsets.only(
              left: 14,
              right: 14,
            ),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              controller: _problemController,
              style: const TextStyle(
                fontFamily: AppColor.fontFamily,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                letterSpacing: 0.5,
                color: AppColor.darkGrey,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Write Your Problem",
                hintStyle: TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColor.light,
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PaymentScreen();
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
