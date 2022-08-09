import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/categories/hotel/hotel_item/filter_screen.dart';
import 'package:adash_project/scr/ui/categories/hotel/hotel_item/hotel_screen.dart';
import 'package:adash_project/scr/ui/categories/hotel/widget/hotels_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({Key? key}) : super(key: key);

  @override
  _HotelsScreenState createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
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
          "Отели",
          style: TextStyle(
            fontFamily: AppColor.fontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: AppColor.darkGrey,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const FilterScreen();
                  },
                ),
              );
            },
            child: Container(
              height: 40,
              width: 40,
              margin: const EdgeInsets.only(
                top: 8,
                bottom: 8,
                right: 8,
                left: 8,
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
                  "assets/icons/sort.svg",
                ),
              ),
            ),
          ),
        ],
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
              bottom: 18,
            ),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(6),
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
                      fontSize: 20,
                      color: AppColor.darkGrey,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: width,
                    height: 250,
                    color: Colors.transparent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/hotel.png",
                        height: 250,
                        width: width,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 70,
                        height: 24,
                        margin: const EdgeInsets.only(
                          top: 210,
                          left: 40,
                          bottom: 20,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: AppColor.white,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/active_star.svg"),
                            const SizedBox(width: 8),
                            const Text(
                              "3,2",
                              style: TextStyle(
                                fontFamily: AppColor.fontFamily,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: AppColor.dark,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 98,
                        height: 24,
                        margin: const EdgeInsets.only(
                          top: 210,
                          bottom: 20,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: AppColor.white,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/location.svg",
                              height: 18,
                              width: 18,
                              color: AppColor.dark,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              "Ташкент",
                              style: TextStyle(
                                fontFamily: AppColor.fontFamily,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: AppColor.dark,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 34,
              ),
              Text(
                "Hotel",
                style: TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: AppColor.darkGrey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 34,
              ),
              Text(
                "Start from 35 per night",
                style: TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: AppColor.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 34,
              ),
              Text(
                "Best Hotels",
                style: TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: AppColor.darkGrey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
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
                        return const HotelScreen();
                      },
                    ),
                  );
                },
                child: const HotelsWidget(),
              );
            },
          )
        ],
      ),
    );
  }
}
