import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/categories/doctor/doctor_item/payment_screen.dart';
import 'package:adash_project/scr/ui/categories/hotel/hotel_item/hotel_pay_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  _HotelScreenState createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen>
    with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
          "Hotel",
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
          const SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/hotel.png",
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              const SizedBox(width: 24),
              const Expanded(
                child: Text(
                  "Hotel",
                  style: TextStyle(
                    fontFamily: AppColor.fontFamily,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 21,
                    color: AppColor.darkGrey,
                  ),
                ),
              ),
              SvgPicture.asset(
                "assets/icons/active_star.svg",
              ),
              const SizedBox(width: 8),
              const Text(
                "3,2",
                style: TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: AppColor.dark,
                ),
              ),
              const SizedBox(width: 24),
              SvgPicture.asset(
                "assets/icons/favorites.svg",
              ),
              const SizedBox(width: 24),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 24),
              SvgPicture.asset(
                "assets/icons/location.svg",
                height: 12,
                width: 12,
                color: AppColor.dark,
              ),
              const SizedBox(width: 8),
              const Text(
                "Бочка",
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
          Container(
            height: 50,
            width: width,
            margin: const EdgeInsets.only(left: 4, right: 4, top: 30),
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              top: 4,
              bottom: 4,
            ),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(10),
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
            child: TabBar(
              indicator: BoxDecoration(
                color: AppColor.dark,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 1),
                    color: const Color(0xFFCEDAE4).withOpacity(0.71),
                    blurRadius: 11,
                    spreadRadius: 0,
                  ),
                ],
              ),
              unselectedLabelColor: AppColor.dark,
              unselectedLabelStyle: const TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: AppColor.dark),
              labelStyle: const TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: AppColor.dark),
              controller: controller,
              tabs: const [
                Tab(text: "Active"),
                Tab(text: "Review"),
                Tab(text: "Photo"),
              ],
            ),
          ),

          ///
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
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
                child: TabBarView(
                  controller: controller,
                  children: [
                    Column(
                      children: const [
                        SizedBox(height: 28),
                        Text(
                          "jgdcvjgsdv",
                          style: TextStyle(
                            fontFamily: AppColor.fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: AppColor.grey,
                          ),
                        ),
                        SizedBox(height: 28),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.transparent,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Image.asset("assets/images/avatar.png"),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        "Raphael Roytman",
                                        style: TextStyle(
                                          fontFamily: AppColor.fontFamily,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 21,
                                          color: AppColor.dark,
                                        ),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        "assets/icons/active_star.svg"),
                                    const SizedBox(width: 8),
                                    const Text(
                                      "3,2",
                                      style: TextStyle(
                                        fontFamily: AppColor.fontFamily,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 21,
                                        color: AppColor.dark,
                                      ),
                                    ),
                                    const SizedBox(width: 24),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    right: 24,
                                    top: 14,
                                    bottom: 16,
                                  ),
                                  child: Text(
                                    "hgvgvfjfvjgcvj",
                                    style: TextStyle(
                                      fontFamily: AppColor.fontFamily,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: AppColor.grey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.transparent,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Image.asset("assets/images/avatar.png"),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        "Raphael Roytman",
                                        style: TextStyle(
                                          fontFamily: AppColor.fontFamily,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 21,
                                          color: AppColor.dark,
                                        ),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        "assets/icons/active_star.svg"),
                                    const SizedBox(width: 8),
                                    const Text(
                                      "3,2",
                                      style: TextStyle(
                                        fontFamily: AppColor.fontFamily,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 21,
                                        color: AppColor.dark,
                                      ),
                                    ),
                                    const SizedBox(width: 24),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    right: 24,
                                    top: 14,
                                    bottom: 16,
                                  ),
                                  child: Text(
                                    "hgvgvfjfvjgcvj",
                                    style: TextStyle(
                                      fontFamily: AppColor.fontFamily,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: AppColor.grey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.transparent,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Image.asset("assets/images/avatar.png"),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        "Raphael Roytman",
                                        style: TextStyle(
                                          fontFamily: AppColor.fontFamily,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 21,
                                          color: AppColor.dark,
                                        ),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        "assets/icons/active_star.svg"),
                                    const SizedBox(width: 8),
                                    const Text(
                                      "3,2",
                                      style: TextStyle(
                                        fontFamily: AppColor.fontFamily,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 21,
                                        color: AppColor.dark,
                                      ),
                                    ),
                                    const SizedBox(width: 24),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    right: 24,
                                    top: 14,
                                    bottom: 16,
                                  ),
                                  child: Text(
                                    "hgvgvfjfvjgcvj",
                                    style: TextStyle(
                                      fontFamily: AppColor.fontFamily,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: AppColor.grey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Фотографии",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: AppColor.fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 21,
                            color: AppColor.darkGrey,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return  Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/hotels.png",
                                      height: 96,
                                      width: 104,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/hotels.png",
                                      height: 96,
                                      width: 104,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "assets/images/hotels.png",
                                      height: 96,
                                      width: 104,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),

          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(width: 14),
              Text(
                "Cost: 153\$ / night",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 21,
                  color: AppColor.darkGrey,
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
                    return  const HotelPayScreen();
                  },
                ),
              );
            },
            child: Container(
              height: 50,
              width: width,
              margin: const EdgeInsets.only(
                left: 14,
                right: 14,
                top: 24,
              ),
              decoration: BoxDecoration(
                color: AppColor.dark,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: AppColor.dark,
                    blurRadius: 11,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "Booking now",
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
