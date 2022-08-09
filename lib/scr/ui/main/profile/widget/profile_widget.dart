import 'package:adash_project/scr/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileWidget extends StatelessWidget {
  final String icon;
  final String name;

  const ProfileWidget({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              icon,
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                  color: AppColor.darkGrey,
                ),
              ),
            ),
            SvgPicture.asset("assets/icons/right.svg"),
            const SizedBox(width: 20),
          ],
        ),
        Container(
          height: 1,
          width: width,
          color: AppColor.light,
          margin: const EdgeInsets.only(
            bottom: 18,
            top: 18,
          ),
        ),
      ],
    );
  }
}
