import 'package:adash_project/scr/color/app_color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CarouselSlider(
      options: CarouselOptions(
        height: 160,
        autoPlay: true,
        viewportFraction: 0.95,
        autoPlayAnimationDuration:
        const Duration(milliseconds: 500),
        autoPlayInterval: const Duration(seconds: 7),
        onPageChanged: (_index, _) {
          setState(() {
            activeIndex = _index;
          });
        },
      ),
      items: [1, 2, 3, 4].map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              height: 160,
              width: 330,
              margin: const EdgeInsets.only(
                left: 24,
                top: 28,
              ),
              padding: const EdgeInsets.only(
                top: 12,
                left: 24,
              ),
              decoration: BoxDecoration(
                color: AppColor.dark,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 1),
                    color: const Color(0xFFCEDAE4).withOpacity(0.71),
                    blurRadius: 11,
                    spreadRadius: 0,
                  ),
                ],
                border: Border.all(
                  color: const Color(0xFFEBF0FF).withOpacity(0.72),
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 70),
                  Image.asset(
                    "assets/images/home.png",
                    height: 160,
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
