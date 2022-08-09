import 'package:adash_project/scr/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _cardController = TextEditingController();
  final TextEditingController _expiryController = TextEditingController();
  final TextEditingController _cVvController = TextEditingController();

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
              ),
            ),
          ),
        ),
        title: const Text(
          "To'lov kartalari",
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
            height: 200,
            width: width,
            margin: const EdgeInsets.only(
              left: 24,
              top: 20,
              right: 24,
              bottom: 34,
            ),
            padding: const EdgeInsets.only(
              left: 14,
              right: 14,
              bottom: 30,
              top: 30,
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/images/card.png",
                height: 200,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 22,
              bottom: 20,
            ),
            child: Text(
              "Full Name",
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
            width: 162,
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
              "Card",
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
              children: [
                SvgPicture.asset(
                  "assets/icons/language.svg",
                  color: AppColor.light,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: _cardController,
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
                      hintText: "8600",
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
          Row(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      // left: 22,
                      bottom: 20,
                    ),
                    child: Text(
                      "Expiry Date",
                      textAlign: TextAlign.start,
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
                    width: 162,
                    margin: const EdgeInsets.only(
                      left: 24,
                      right: 14,
                      bottom: 30,
                    ),
                    padding: const EdgeInsets.only(left: 18),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Expanded(
                      child: TextField(
                        controller: _expiryController,
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
                          hintText: "Expiry Date",
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
                  )
                ],
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 22,
                      bottom: 20,
                    ),
                    child: Text(
                      "CVV",
                      textAlign: TextAlign.start,
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
                    width: 162,
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
                    child: Expanded(
                      child: TextField(
                        controller: _cVvController,
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
                          hintText: "CVV",
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
                  )
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
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
