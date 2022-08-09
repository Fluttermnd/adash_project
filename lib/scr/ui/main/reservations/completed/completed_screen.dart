import 'package:adash_project/scr/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({Key? key}) : super(key: key);

  @override
  _CompletedScreenState createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen>
    with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                height: 16,
                width: 16,
              ),
            ),
          ),
        ),
        actions: [
          SvgPicture.asset(
            "assets/icons/favorites.svg",
            height: 24,
            width: 24,
          ),
          const SizedBox(width: 20),
          SvgPicture.asset(
            "assets/icons/send.svg",
            height: 24,
            width: 24,
          ),
          const SizedBox(width: 4),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 1),
                      color: Color(0xFFCEDAE4),
                      blurRadius: 11,
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/images/completed.png",
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Рафаэль Ройтман",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: AppColor.darkGrey,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/tooth.svg"),
                  const SizedBox(width: 10),
                  const Text(
                    "Tooth Specialist",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: AppColor.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 156,
            width: width,
            decoration: BoxDecoration(
              color: AppColor.dark,
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 24,
            ),
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          margin: const EdgeInsets.only(
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.darkBlue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/icons/patients.svg",
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Patients",
                              style: TextStyle(
                                fontFamily: AppColor.fontFamily,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: AppColor.white9,
                              ),
                            ),
                            Text(
                              "5000+",
                              style: TextStyle(
                                fontFamily: AppColor.fontFamily,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 23,
                                color: AppColor.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          margin: const EdgeInsets.only(
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.darkBlue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/icons/reviews.svg",
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Reviews",
                              style: TextStyle(
                                fontFamily: AppColor.fontFamily,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: AppColor.white9,
                              ),
                            ),
                            Text(
                              "50+",
                              style: TextStyle(
                                fontFamily: AppColor.fontFamily,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 23,
                                color: AppColor.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 60),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          margin: const EdgeInsets.only(
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.darkBlue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/icons/experience.svg",
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Experience",
                              style: TextStyle(
                                fontFamily: AppColor.fontFamily,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: AppColor.white9,
                              ),
                            ),
                            Text(
                              "15+",
                              style: TextStyle(
                                fontFamily: AppColor.fontFamily,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 23,
                                color: AppColor.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(width: 60),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          margin: const EdgeInsets.only(
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.darkBlue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/icons/star.svg",
                              color: AppColor.white,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Кating",
                              style: TextStyle(
                                fontFamily: AppColor.fontFamily,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: AppColor.white9,
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/active_star.svg",
                                  color: AppColor.white,
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  "5.0",
                                  style: TextStyle(
                                    fontFamily: AppColor.fontFamily,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: AppColor.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 22),
          Container(
            height: 50,
            width: width,
            margin: const EdgeInsets.only(left: 12, right: 12),
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              top: 4,
              bottom: 4,
            ),
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
            child: TabBar(
              indicator: BoxDecoration(
                color: AppColor.dark,
                borderRadius: BorderRadius.circular(15),
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
                Tab(text: "About doctor"),
                Tab(text: "Reviews"),
              ],
            ),
          ),
          // ListView.builder(
          //   itemCount: 1,
          //   itemBuilder: (context, index) {
          //     return Container(
          //       height: 400,
          //       margin: const EdgeInsets.only(
          //         left: 24,
          //         right: 24,
          //         top: 26,
          //       ),
          //       child: TabBarView(
          //         controller: controller,
          //         children: [
          //           Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             mainAxisAlignment: MainAxisAlignment.start,
          //             children: [
          //               const Text(
          //                 "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
          //                 style: TextStyle(
          //                     fontFamily: AppColor.fontFamily,
          //                     fontStyle: FontStyle.normal,
          //                     fontWeight: FontWeight.w400,
          //                     fontSize: 15,
          //                     color: AppColor.grey),
          //               ),
          //               const SizedBox(height: 12),
          //               const Text(
          //                 "Working time:",
          //                 textAlign: TextAlign.start,
          //                 style: TextStyle(
          //                   fontFamily: AppColor.fontFamily,
          //                   fontStyle: FontStyle.normal,
          //                   fontWeight: FontWeight.w700,
          //                   fontSize: 17,
          //                   color: AppColor.darkGrey,
          //                 ),
          //               ),
          //               const SizedBox(height: 8),
          //               Row(
          //                 children: [
          //                   SvgPicture.asset(
          //                     "assets/icons/time.svg",
          //                     color: AppColor.dark,
          //                   ),
          //                   const SizedBox(width: 8),
          //                   const Text(
          //                     "Mon - Fri, 09.00 AM - 20.00 PM",
          //                     style: TextStyle(
          //                       fontFamily: AppColor.fontFamily,
          //                       fontStyle: FontStyle.normal,
          //                       fontWeight: FontWeight.w400,
          //                       fontSize: 15,
          //                       color: AppColor.dark,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //               Container(
          //                 height: 1,
          //                 width: width,
          //                 color: AppColor.grey,
          //                 margin: const EdgeInsets.only(
          //                   top: 30,
          //                   bottom: 30,
          //                 ),
          //               ),
          //               const Text(
          //                 "Make Appointment:",
          //                 textAlign: TextAlign.start,
          //                 style: TextStyle(
          //                   fontFamily: AppColor.fontFamily,
          //                   fontStyle: FontStyle.normal,
          //                   fontWeight: FontWeight.w700,
          //                   fontSize: 17,
          //                   color: AppColor.darkGrey,
          //                 ),
          //               ),
          //               const SizedBox(height: 8),
          //               Row(
          //                 children: [
          //                   SvgPicture.asset(
          //                     "assets/icons/calendar.svg",
          //                     color: AppColor.dark,
          //                   ),
          //                   const SizedBox(width: 8),
          //                   const Text(
          //                     "22 июня, 2022",
          //                     style: TextStyle(
          //                       fontFamily: AppColor.fontFamily,
          //                       fontStyle: FontStyle.normal,
          //                       fontWeight: FontWeight.w400,
          //                       fontSize: 15,
          //                       color: AppColor.dark,
          //                     ),
          //                   ),
          //                   const SizedBox(width: 20),
          //                   SvgPicture.asset(
          //                     "assets/icons/time.svg",
          //                     color: AppColor.dark,
          //                   ),
          //                   const SizedBox(width: 8),
          //                   const Text(
          //                     "16:00",
          //                     style: TextStyle(
          //                       fontFamily: AppColor.fontFamily,
          //                       fontStyle: FontStyle.normal,
          //                       fontWeight: FontWeight.w400,
          //                       fontSize: 15,
          //                       color: AppColor.dark,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //               Container(
          //                 height: 1,
          //                 width: width,
          //                 color: AppColor.grey,
          //                 margin: const EdgeInsets.only(
          //                   top: 30,
          //                   bottom: 30,
          //                 ),
          //               ),
          //               const Text(
          //                 "Location:",
          //                 textAlign: TextAlign.start,
          //                 style: TextStyle(
          //                   fontFamily: AppColor.fontFamily,
          //                   fontStyle: FontStyle.normal,
          //                   fontWeight: FontWeight.w700,
          //                   fontSize: 17,
          //                   color: AppColor.darkGrey,
          //                 ),
          //               ),
          //               const SizedBox(height: 8),
          //               Row(
          //                 children: [
          //                   SvgPicture.asset(
          //                     "assets/icons/location.svg",
          //                     color: AppColor.dark,
          //                   ),
          //                   const SizedBox(width: 8),
          //                   const Text(
          //                     "Location text",
          //                     style: TextStyle(
          //                       fontFamily: AppColor.fontFamily,
          //                       fontStyle: FontStyle.normal,
          //                       fontWeight: FontWeight.w400,
          //                       fontSize: 15,
          //                       color: AppColor.dark,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //               const SizedBox(height: 24),
          //             ],
          //           ),
          //           Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             mainAxisAlignment: MainAxisAlignment.start,
          //             children: [
          //               const Text(
          //                 "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
          //                 style: TextStyle(
          //                     fontFamily: AppColor.fontFamily,
          //                     fontStyle: FontStyle.normal,
          //                     fontWeight: FontWeight.w400,
          //                     fontSize: 15,
          //                     color: AppColor.grey),
          //               ),
          //               const SizedBox(height: 12),
          //               const Text(
          //                 "Working time:",
          //                 textAlign: TextAlign.start,
          //                 style: TextStyle(
          //                   fontFamily: AppColor.fontFamily,
          //                   fontStyle: FontStyle.normal,
          //                   fontWeight: FontWeight.w700,
          //                   fontSize: 17,
          //                   color: AppColor.darkGrey,
          //                 ),
          //               ),
          //               const SizedBox(height: 8),
          //               Row(
          //                 children: [
          //                   SvgPicture.asset(
          //                     "assets/icons/time.svg",
          //                     color: AppColor.dark,
          //                   ),
          //                   const SizedBox(width: 8),
          //                   const Text(
          //                     "Mon - Fri, 09.00 AM - 20.00 PM",
          //                     style: TextStyle(
          //                       fontFamily: AppColor.fontFamily,
          //                       fontStyle: FontStyle.normal,
          //                       fontWeight: FontWeight.w400,
          //                       fontSize: 15,
          //                       color: AppColor.dark,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //               Container(
          //                 height: 1,
          //                 width: width,
          //                 color: AppColor.grey,
          //                 margin: const EdgeInsets.only(
          //                   top: 30,
          //                   bottom: 30,
          //                 ),
          //               ),
          //               const Text(
          //                 "Make Appointment:",
          //                 textAlign: TextAlign.start,
          //                 style: TextStyle(
          //                   fontFamily: AppColor.fontFamily,
          //                   fontStyle: FontStyle.normal,
          //                   fontWeight: FontWeight.w700,
          //                   fontSize: 17,
          //                   color: AppColor.darkGrey,
          //                 ),
          //               ),
          //               const SizedBox(height: 8),
          //               Row(
          //                 children: [
          //                   SvgPicture.asset(
          //                     "assets/icons/calendar.svg",
          //                     color: AppColor.dark,
          //                   ),
          //                   const SizedBox(width: 8),
          //                   const Text(
          //                     "22 июня, 2022",
          //                     style: TextStyle(
          //                       fontFamily: AppColor.fontFamily,
          //                       fontStyle: FontStyle.normal,
          //                       fontWeight: FontWeight.w400,
          //                       fontSize: 15,
          //                       color: AppColor.dark,
          //                     ),
          //                   ),
          //                   const SizedBox(width: 20),
          //                   SvgPicture.asset(
          //                     "assets/icons/time.svg",
          //                     color: AppColor.dark,
          //                   ),
          //                   const SizedBox(width: 8),
          //                   const Text(
          //                     "16:00",
          //                     style: TextStyle(
          //                       fontFamily: AppColor.fontFamily,
          //                       fontStyle: FontStyle.normal,
          //                       fontWeight: FontWeight.w400,
          //                       fontSize: 15,
          //                       color: AppColor.dark,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //               Container(
          //                 height: 1,
          //                 width: width,
          //                 color: AppColor.grey,
          //                 margin: const EdgeInsets.only(
          //                   top: 30,
          //                   bottom: 30,
          //                 ),
          //               ),
          //               const Text(
          //                 "Location:",
          //                 textAlign: TextAlign.start,
          //                 style: TextStyle(
          //                   fontFamily: AppColor.fontFamily,
          //                   fontStyle: FontStyle.normal,
          //                   fontWeight: FontWeight.w700,
          //                   fontSize: 17,
          //                   color: AppColor.darkGrey,
          //                 ),
          //               ),
          //               const SizedBox(height: 8),
          //               Row(
          //                 children: [
          //                   SvgPicture.asset(
          //                     "assets/icons/location.svg",
          //                     color: AppColor.dark,
          //                   ),
          //                   const SizedBox(width: 8),
          //                   const Text(
          //                     "Location text",
          //                     style: TextStyle(
          //                       fontFamily: AppColor.fontFamily,
          //                       fontStyle: FontStyle.normal,
          //                       fontWeight: FontWeight.w400,
          //                       fontSize: 15,
          //                       color: AppColor.dark,
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //               const SizedBox(height: 24),
          //             ],
          //           ),
          //         ],
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
