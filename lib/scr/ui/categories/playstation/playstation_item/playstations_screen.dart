import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/categories/playstation/widget/playstations_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaystationsScreen extends StatefulWidget {
  const PlaystationsScreen({Key? key}) : super(key: key);

  @override
  _PlaystationsScreenState createState() => _PlaystationsScreenState();
}

class _PlaystationsScreenState extends State<PlaystationsScreen> {
  final TextEditingController _searchController = TextEditingController();
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
          "Playstations",
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
            width: 300,
            height: 46,
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 16,
              bottom: 34,
            ),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: AppColor.white,
              ),
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
                const SizedBox(width: 16),
                SvgPicture.asset(
                  "assets/icons/search.svg",
                  height: 16,
                  width: 16,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: _searchController,
                    style: const TextStyle(
                      fontFamily: AppColor.fontFamily,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: AppColor.dark,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontFamily: AppColor.fontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: AppColor.lightBlue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const PlaystationsScreen();
                            },
                          ),
                        );
                      },
                      child: const PlaystatonsWidget(),
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const PlaystationsScreen();
                            },
                          ),
                        );
                      },
                      child: const PlaystatonsWidget(),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
