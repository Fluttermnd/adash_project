import 'package:adash_project/scr/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryWidget extends StatelessWidget {
  final String name;

  const CategoryWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 26,
        right: 26,
        bottom: 20,
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
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(0),
            ),
            child: Image.asset(
              "assets/images/category.png",
              height: 150,
              width: 322,
            ),
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              const SizedBox(width: 24),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                    fontFamily: AppColor.fontFamily,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: AppColor.dark,
                  ),
                ),
              ),
              SvgPicture.asset("assets/icons/star.svg"),
              const SizedBox(width: 10),
              const Text(
                "5,0 ( 100 )",
                style: TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: AppColor.darkGrey,
                ),
              ),
              const SizedBox(width: 24),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
