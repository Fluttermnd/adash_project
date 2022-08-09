import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/categories/barbers/barber_shops_screen.dart';
import 'package:adash_project/scr/ui/categories/choyxona/choyxonalar_screen.dart';
import 'package:adash_project/scr/ui/categories/doctor/dentistry_screen.dart';
import 'package:adash_project/scr/ui/categories/hotel/hotels_screen.dart';
import 'package:adash_project/scr/ui/categories/playstation/playstations_places_screen.dart';
import 'package:adash_project/scr/ui/categories/restaurant/restaurant_screen.dart';
import 'package:adash_project/scr/ui/main/home/widget/carousel_slider_widget.dart';
import 'package:adash_project/scr/ui/main/home/widget/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  final Function() onTap;

  const HomeScreen({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _mailController = TextEditingController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.screen,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 12, right: 14, top: 14),
            child: Row(
              children: [
                Container(
                  width: 300,
                  height: 46,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: AppColor.white,
                    ),
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
                          controller: _mailController,
                          style: const TextStyle(
                            fontFamily: AppColor.fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: AppColor.lightBlue,
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
                const SizedBox(width: 14),
                Container(
                  height: 38,
                  width: 38,
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
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
                  child: SvgPicture.asset(
                    "assets/icons/notification.svg",
                    height: 16,
                    width: 16,
                  ),
                ),
                const SizedBox(width: 5),
              ],
            ),
          ),
            // Expanded(
            //   child: Container(
            //     color: Colors.transparent,
            //     height: 160,
            //     width: 330,
            //     child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: 4,
            //       itemBuilder: (context, index) {
            //         return const CarouselWidget();
            //       },
            //     ),
            //   ),
            // ),
          const Padding(
            padding: EdgeInsets.only(
              left: 24,
              top: 22,
              bottom: 22,
            ),
            child: Text(
              "Категории",
              style: TextStyle(
                fontFamily: AppColor.fontFamily,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: AppColor.darkGrey,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HotelsScreen();
                  },
                ),
              );
            },
            child: const CategoryWidget(name: 'Отели'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const RestaurantsScreen();
                  },
                ),
              );
            },
            child: const CategoryWidget(name: 'Рестораны'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ChoyxonalarScreen();
                  },
                ),
              );
            },
            child: const CategoryWidget(name: 'Чайхоны'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const BarBerShopsScreen();
                  },
                ),
              );
            },
            child: const CategoryWidget(name: 'Барбершопы'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const BarBerShopsScreen();
                  },
                ),
              );
            },
            child: const CategoryWidget(name: 'Дачи'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const DentistryScreen();
                  },
                ),
              );
            },
            child: const CategoryWidget(name: 'Стоматологии'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PlayStationsPlacesScreen();
                  },
                ),
              );
            },
            child: const CategoryWidget(name: 'Плейстейшн'),
          ),
        ],
      ),
    );
  }
}
