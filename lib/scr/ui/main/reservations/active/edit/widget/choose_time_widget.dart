import 'package:adash_project/scr/color/app_color.dart';
import 'package:flutter/material.dart';

class ChooseTimeWidget extends StatelessWidget {
  final String name;

  const ChooseTimeWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 102,
      margin: const EdgeInsets.only(
        bottom: 4,
        left: 24,
      ),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            color: AppColor.light.withOpacity(0.71),
            blurRadius: 11,
            spreadRadius: 0,
          ),
        ],
        border: Border.all(
          color: AppColor.light,
          width: 2,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text(
            name,
            style: const TextStyle(
              fontFamily: AppColor.fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 17,
              color: AppColor.light,
            ),
          ),
        ],
      ),
    );
  }
}
