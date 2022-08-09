import 'package:adash_project/scr/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KeshBekScreen extends StatefulWidget {
  const KeshBekScreen({Key? key}) : super(key: key);

  @override
  _KeshBekScreenState createState() => _KeshBekScreenState();
}

class _KeshBekScreenState extends State<KeshBekScreen> {
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
          "Keshbek",
          style: TextStyle(
            fontFamily: AppColor.fontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: AppColor.darkGrey,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 134,
            width: width,
            margin: const EdgeInsets.only(
              top: 24,
              right: 24,
              left: 24,
            ),
            decoration: BoxDecoration(
              color: AppColor.white,
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
            child: Column(
              children: const [
                Text(
                  "На счету",
                  style: TextStyle(
                    fontFamily: AppColor.fontFamily,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xFFBABEC0),
                  ),
                ),
                Text(
                  "400 баллов",
                  style: TextStyle(
                    fontFamily: AppColor.fontFamily,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: AppColor.darkGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
