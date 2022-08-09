import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/size_config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 72,
            width: width,
          ),
          SvgPicture.asset(
            "assets/icons/logo.svg",
          ),
          const Text(
            "Band Qil",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppColor.fontFamily,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 35,
              letterSpacing: 0.5,
              color: Color(0xFF37364A),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: getProportionateScreenWidth(30),
                  top: getProportionateScreenHeight(72),
                ),
                color: Colors.transparent,
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                    fontFamily: AppColor.fontFamily,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xFF120D26),
                  ),
                ),
              ),
              Container(
                height: 56,
                width: width,
                margin: const EdgeInsets.only(
                  left: 28,
                  top: 22,
                  right: 30,
                ),
                padding: const EdgeInsets.only(left: 18),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/phone.svg",
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: _mailController,
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
                          hintText: "Telefon raqamingiz?",
                          hintStyle: TextStyle(
                            fontFamily: AppColor.fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            letterSpacing: 0.5,
                            color: Color(0xFF747688),
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
                  left: 28,
                  top: 20,
                  right: 30,
                  bottom: 20,
                ),
                padding: const EdgeInsets.only(left: 18),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/message.svg",
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
                          hintText: "Sms kiriting",
                          hintStyle: TextStyle(
                            fontFamily: AppColor.fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            letterSpacing: 0.5,
                            color: Color(0xFF747688),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(170)),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: getProportionateScreenHeight(58),
                  width: getProportionateScreenWidth(260),
                  margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(55),
                    top: getProportionateScreenHeight(40),
                    right: getProportionateScreenWidth(52),
                    bottom: getProportionateScreenHeight(145),
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF5669FF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "SIGN IN",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(18)),
                      SvgPicture.asset(
                        "assets/icons/right.svg",
                      ),
                      SizedBox(width: getProportionateScreenWidth(14)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  res() {
    return SizedBox(
      height: getProportionateScreenHeight(812),
      width: getProportionateScreenWidth(375),
    );
  }
}
