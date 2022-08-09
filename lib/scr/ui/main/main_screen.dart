import 'package:adash_project/scr/color/app_color.dart';
import 'package:adash_project/scr/ui/main/favourites/favourites_screen.dart';
import 'package:adash_project/scr/ui/main/home/home_screen.dart';
import 'package:adash_project/scr/ui/main/profile/profile_screen.dart';
import 'package:adash_project/scr/ui/main/reservations/reservations_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomeScreen(
          onTap: () {
            setState(() {
              _currentIndex = 1;
            });
          },
        ),
        const FavouritesScreen(),
        const ReservationsScreen(),
        const ProfileScreen(),
      ][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (_index) {
          setState(() {
            _currentIndex = _index;
          });
        },
        selectedLabelStyle: const TextStyle(
            fontFamily: AppColor.fontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: AppColor.dark,
            letterSpacing: 0.5),
        unselectedLabelStyle: const TextStyle(
            fontFamily: AppColor.fontFamily,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: AppColor.light,
            letterSpacing: 0.5),
        currentIndex: _currentIndex,
        backgroundColor: AppColor.white,
        selectedItemColor: AppColor.dark,
        unselectedItemColor: AppColor.light,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              color: _currentIndex == 0 ? AppColor.dark : AppColor.light,
            ),
            label: "Главная",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/like.svg",
              color: _currentIndex == 1 ? AppColor.dark : AppColor.light,
            ),
            label: "Избранное",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/star.svg",
              color: _currentIndex == 2 ? AppColor.dark : AppColor.light,
            ),
            label: "Бронирования",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/profile.svg",
              color: _currentIndex == 3 ? AppColor.dark : AppColor.light,
            ),
            label: "Профиль",
          ),
        ],
      ),
    );
  }
}
