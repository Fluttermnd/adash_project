import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/categories/playstation/playstation_item/play_book_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlaystationScreen extends StatefulWidget {
  const PlaystationScreen({Key? key}) : super(key: key);

  @override
  _PlaystationScreenState createState() => _PlaystationScreenState();
}

class _PlaystationScreenState extends State<PlaystationScreen>
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
      body: Column(
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
                    "assets/images/playstation.png",
                    height: 180,
                    width: width,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Playstation 5",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: AppColor.darkGrey,
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                "Game console",
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
                Tab(text: "About"),
                Tab(text: "Characteristics"),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  height: 400,
                  margin: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                    top: 26,
                  ),
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: TabBarView(
                    controller: controller,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "Lorem ipsum dolor sit amet, "
                                "\ngfghcgfchgfchgfghfchghgf"
                                "\ngfghcgfchgfchgfghfchghgf",
                            style: TextStyle(
                              fontFamily: AppColor.fontFamily,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: AppColor.grey,
                            ),
                          ),
                          SizedBox(height: 100),
                          Text(
                            "Cost: 153\$",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: AppColor.fontFamily,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 21,
                              color: AppColor.darkGrey,
                            ),
                          ),
                          SizedBox(height: 40),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [Text("characteristics")],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PlayBookScreen();
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
                  "Book  appointment",
                  // textAlign: TextAlign.center,
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
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
