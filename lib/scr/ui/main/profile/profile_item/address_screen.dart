import 'package:adash_project/scr/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final TextEditingController _passwordController = TextEditingController();

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
          "Mening manzilarim",
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
          const Padding(
            padding: EdgeInsets.only(
              left: 24,
              top: 16,
            ),
            child: Text(
              "Мой адрес",
              style: TextStyle(
                fontFamily: AppColor.fontFamily,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColor.darkGrey,
              ),
            ),
          ),
          Container(
            height: 44,
            width: width,
            margin: const EdgeInsets.only(
              left: 26,
              top: 20,
              right: 22,
              bottom: 48,
            ),
            padding: const EdgeInsets.only(left: 18),
            decoration: BoxDecoration(
              color: Colors.white,
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
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/location.svg",
                  color: AppColor.darkGrey,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: _passwordController,
                    style: const TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      height: 1.8,
                      letterSpacing: 0.5,
                      color: AppColor.darkGrey,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Адрес",
                      hintStyle: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: AppColor.light,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 56,
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
            child:  const Center(
              child: Text(
                "Изменить",
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
        ],
      ),
    );
  }
}
