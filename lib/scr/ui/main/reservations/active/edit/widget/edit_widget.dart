import 'package:adash_project/scr/color/app_color.dart';
import 'package:flutter/material.dart';

class EditWidget extends StatelessWidget {
  final String name;
  final String number;
  final Color color;
  final Color textColor;
  final double height;

  const EditWidget({
    Key? key,
    required this.name,
    required this.number,
    required this.color,
    required this.textColor,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 82,
      margin: const EdgeInsets.only(
        bottom: 28,
        left: 8,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            color: AppColor.dark.withOpacity(0.71),
            blurRadius: 11,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style:  TextStyle(
              fontFamily: AppColor.fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: textColor,
            ),
          ),
          Text(
            number,
            style:  TextStyle(
              fontFamily: AppColor.fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
