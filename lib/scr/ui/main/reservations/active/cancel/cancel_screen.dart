import 'package:adash_project/scr/color/app_color.dart';
import 'package:flutter/material.dart';

class CancelScreen extends StatefulWidget {
  const CancelScreen({Key? key}) : super(key: key);

  @override
  _CancelScreenState createState() => _CancelScreenState();
}

class _CancelScreenState extends State<CancelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.screen,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image.asset("assets/images/animation.png"),
          const SizedBox(height: 40),
          const Text(
            "Вы действительно хотите отменить бронирование?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppColor.fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: AppColor.darkGrey,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 42,
                width: 108,
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
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: AppColor.blue,
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "YES",
                    style: TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColor.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 62),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 42,
                  width: 108,
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
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: AppColor.blue,
                      width: 2,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "NO",
                      style: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColor.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
