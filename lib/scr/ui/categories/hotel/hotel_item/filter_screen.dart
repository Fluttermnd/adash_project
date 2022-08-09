import 'package:adash_project/scr/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final TextEditingController _searchController = TextEditingController();

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
          "Фильтр",
          style: TextStyle(
            fontFamily: AppColor.fontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: AppColor.darkGrey,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 16),
            child: Text(
              "Where do you want?",
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
            width: width,
            height: 44,
            margin: const EdgeInsets.only(
              left: 28,
              right: 20,
              top: 20,
              bottom: 26,
            ),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: AppColor.white,
              ),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Color(0xFFCEDAE4),
                  blurRadius: 11,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              children: [
                const SizedBox(width: 16),
                SvgPicture.asset(
                  "assets/icons/location.svg",
                  color: AppColor.light,
                  height: 18,
                  width: 16,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: _searchController,
                    style: const TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: AppColor.lightBlue,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Text",
                      hintStyle: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: AppColor.lightBlue,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24, top: 16),
                    child: Text(
                      "Check in date & time",
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
                    width: 150,
                    height: 44,
                    margin: const EdgeInsets.only(
                      left: 24,
                      right: 26,
                      top: 20,
                      bottom: 26,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: AppColor.white,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Color(0xFFCEDAE4),
                          blurRadius: 11,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 12),
                        SvgPicture.asset(
                          "assets/icons/calendar.svg",
                          color: AppColor.light,
                          height: 18,
                          width: 16,
                        ),
                        const SizedBox(width: 12),
                        SvgPicture.asset(
                          "assets/icons/bottom.svg",
                          color: AppColor.light,
                          height: 18,
                          width: 16,
                        ),
                        const SizedBox(width: 18),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24, top: 16),
                    child: Text(
                      "Checkout date & time",
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
                    width: 150,
                    height: 44,
                    margin: const EdgeInsets.only(
                      left: 24,
                      right: 26,
                      top: 20,
                      bottom: 26,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: AppColor.white,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Color(0xFFCEDAE4),
                          blurRadius: 11,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 12),
                        SvgPicture.asset(
                          "assets/icons/calendar.svg",
                          color: AppColor.light,
                          height: 18,
                          width: 16,
                        ),
                        const SizedBox(width: 12),
                        SvgPicture.asset(
                          "assets/icons/bottom.svg",
                          color: AppColor.light,
                          height: 18,
                          width: 16,
                        ),
                        const SizedBox(width: 18),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24, top: 16),
                    child: Text(
                      "Adults",
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
                    width: 100,
                    height: 44,
                    margin: const EdgeInsets.only(
                      left: 24,
                      right: 12,
                      top: 20,
                      bottom: 26,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: AppColor.white,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Color(0xFFCEDAE4),
                          blurRadius: 11,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 12),
                        const Text(
                          "1",
                          style: TextStyle(
                            fontFamily: AppColor.fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: AppColor.light,
                          ),
                        ),
                        const SizedBox(width: 22),
                        SvgPicture.asset(
                          "assets/icons/bottom.svg",
                          color: AppColor.light,
                          height: 18,
                          width: 16,
                        ),
                        const SizedBox(width: 18),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24, top: 16),
                    child: Text(
                      "Children",
                      style: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: AppColor.light,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 44,
                    margin: const EdgeInsets.only(
                      left: 24,
                      right: 12,
                      top: 20,
                      bottom: 26,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: AppColor.white,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Color(0xFFCEDAE4),
                          blurRadius: 11,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 12),
                        const Text(
                          "2",
                          style: TextStyle(
                            fontFamily: AppColor.fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: AppColor.light,
                          ),
                        ),
                        const SizedBox(width: 22),
                        SvgPicture.asset(
                          "assets/icons/bottom.svg",
                          color: AppColor.light,
                          height: 18,
                          width: 16,
                        ),
                        const SizedBox(width: 18),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24, top: 16),
                    child: Text(
                      "Room",
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
                    width: 100,
                    height: 44,
                    margin: const EdgeInsets.only(
                      left: 24,
                      right: 12,
                      top: 20,
                      bottom: 26,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: AppColor.white,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Color(0xFFCEDAE4),
                          blurRadius: 11,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 12),
                        const Text(
                          "3",
                          style: TextStyle(
                            fontFamily: AppColor.fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: AppColor.light,
                          ),
                        ),
                        const SizedBox(width: 22),
                        SvgPicture.asset(
                          "assets/icons/bottom.svg",
                          color: AppColor.light,
                          height: 18,
                          width: 16,
                        ),
                        const SizedBox(width: 18),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return const YourDetailsScreen();
            //       },
            //     ),
            //   );
            // },
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
                  "Search",
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
