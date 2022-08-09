import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/categories/barbers/barber_items/barber_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BarbersScreen extends StatefulWidget {
  const BarbersScreen({Key? key}) : super(key: key);

  @override
  _BarbersScreenState createState() => _BarbersScreenState();
}

class _BarbersScreenState extends State<BarbersScreen> {
  final TextEditingController _searchController = TextEditingController();

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
          "BarBers",
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
            width: 300,
            height: 46,
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 16,
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
                  "assets/icons/search.svg",
                  height: 16,
                  width: 16,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: _searchController,
                    style: const TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: AppColor.dark,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const BarBerScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 166,
                      width: 160,
                      margin: const EdgeInsets.only(
                        bottom: 26,
                        right: 12,
                        left: 24,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/barbers.png",
                            ),
                          ),
                          Positioned(
                            left: 8,
                            bottom: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Eshonov Bahodir",
                                  style: TextStyle(
                                    fontFamily: AppColor.fontFamily,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: AppColor.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/icons/patients.svg",
                                    height: 10,
                                    width: 10,),
                                    const SizedBox(width: 6),
                                    const Text(
                                      "448 clients",
                                      style: TextStyle(
                                        fontFamily: AppColor.fontFamily,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: AppColor.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const BarBerScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 166,
                      width: 160,
                      margin: const EdgeInsets.only(
                        bottom: 26,
                        right: 12,
                        left: 24,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/barbers.png",
                            ),
                          ),
                          Positioned(
                            left: 8,
                            bottom: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Eshonov Bahodir",
                                  style: TextStyle(
                                    fontFamily: AppColor.fontFamily,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: AppColor.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/icons/patients.svg",
                                    height: 10,
                                    width: 10,),
                                    const SizedBox(width: 6),
                                    const Text(
                                      "448 clients",
                                      style: TextStyle(
                                        fontFamily: AppColor.fontFamily,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: AppColor.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const BarBerScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 166,
                      width: 160,
                      margin: const EdgeInsets.only(
                        bottom: 26,
                        right: 12,
                        left: 24,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/barbers.png",
                            ),
                          ),
                          Positioned(
                            left: 8,
                            bottom: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Eshonov Bahodir",
                                  style: TextStyle(
                                    fontFamily: AppColor.fontFamily,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: AppColor.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/icons/patients.svg",
                                    height: 10,
                                    width: 10,),
                                    const SizedBox(width: 6),
                                    const Text(
                                      "448 clients",
                                      style: TextStyle(
                                        fontFamily: AppColor.fontFamily,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: AppColor.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const BarBerScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 166,
                      width: 160,
                      margin: const EdgeInsets.only(
                        top: 72,
                        bottom: 26,
                        right: 24,
                        left: 12,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/barbers.png",
                            ),
                          ),
                          Positioned(
                            left: 8,
                            bottom: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Eshonov Bahodir",
                                  style: TextStyle(
                                    fontFamily: AppColor.fontFamily,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: AppColor.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/icons/patients.svg",
                                    height: 10,
                                    width: 10,),
                                    const SizedBox(width: 6),
                                    const Text(
                                      "448 clients",
                                      style: TextStyle(
                                        fontFamily: AppColor.fontFamily,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: AppColor.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const BarBerScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 166,
                      width: 160,
                      margin: const EdgeInsets.only(
                        bottom: 26,
                        right: 24,
                        left: 12,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/barbers.png",
                            ),
                          ),
                          Positioned(
                            left: 8,
                            bottom: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Eshonov Bahodir",
                                  style: TextStyle(
                                    fontFamily: AppColor.fontFamily,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: AppColor.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/icons/patients.svg",
                                      height: 10,
                                      width: 10,),
                                    const SizedBox(width: 6),
                                    const Text(
                                      "448 clients",
                                      style: TextStyle(
                                        fontFamily: AppColor.fontFamily,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: AppColor.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const BarBerScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 166,
                      width: 160,
                      margin: const EdgeInsets.only(
                        bottom: 26,
                        right: 24,
                        left: 12,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/barbers.png",
                            ),
                          ),
                          Positioned(
                            left: 8,
                            bottom: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Eshonov Bahodir",
                                  style: TextStyle(
                                    fontFamily: AppColor.fontFamily,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: AppColor.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/icons/patients.svg",
                                      height: 10,
                                      width: 10,),
                                    const SizedBox(width: 6),
                                    const Text(
                                      "448 clients",
                                      style: TextStyle(
                                        fontFamily: AppColor.fontFamily,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: AppColor.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
