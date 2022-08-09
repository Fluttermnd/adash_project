import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/categories/playstation/playstation_item/playstation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaystatonsWidget extends StatefulWidget {
  const PlaystatonsWidget({Key? key}) : super(key: key);

  @override
  _PlaystatonsWidgetState createState() => _PlaystatonsWidgetState();
}

class _PlaystatonsWidgetState extends State<PlaystatonsWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const PlaystationScreen();
            },
          ),
        );
      },
      child: Container(
        height: 237,
        width: width,
        margin: const EdgeInsets.only(
          left: 18,
          right: 18,
          bottom: 22,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/images/playstation.png",
                    width: 152,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    right: 12,
                    left: 120,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/favorites.svg",
                    color: AppColor.dark,
                    height: 22,
                    width: 22,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
                top: 6,
                bottom: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Game console",
                    style: TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: AppColor.dark,
                    ),
                  ),
                  Text(
                    "Playstation 5 Digital Edition",
                    style: TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: AppColor.darkGrey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 65,
                right: 12,
                bottom: 12,
              ),
              child: const Text(
                "Cost: 200\$",
                style: TextStyle(
                  fontFamily: AppColor.fontFamily,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: AppColor.dark,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
