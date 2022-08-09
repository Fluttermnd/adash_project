import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/categories/hotel/hotel_item/filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DachalarScreen extends StatefulWidget {
  const DachalarScreen({Key? key}) : super(key: key);

  @override
  _DachalarScreenState createState() => _DachalarScreenState();
}

class _DachalarScreenState extends State<DachalarScreen> {
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
    );
  }
}
