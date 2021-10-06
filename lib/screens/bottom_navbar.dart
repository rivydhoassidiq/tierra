import 'package:flutter/material.dart';
import 'komen/komen.dart';
import 'home/home.dart';
import 'favorite/favorite.dart';
import 'article/aritcle.dart';
import 'profile/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _screens = const [
    Home(),
    Article(),
    Favorite(),
    Komen(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: const Color(0xFFEFFDF4),
        //   elevation: 0,
        // ),
        bottomNavigationBar: Material(
          child: Container(
            height: 66,
            child: TabBar(
              labelColor: const Color(0xFF53B175),
              unselectedLabelColor: Color(0xFF181725),
              indicatorPadding:
                  const EdgeInsets.only(right: 10, top: 0, bottom: 0, left: 10),
              indicator: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xFF53B175), width: 3),
                ),
              ),
              onTap: (i) {
                setState(() {
                  _selectedIndex = i;
                });
              },
              indicatorWeight: 2,
              labelPadding: EdgeInsets.only(left: 1),
              tabs: [
                Tab(
                    icon: Image.asset(
                      'assets/icons/home.png',
                      width: 30,
                      height: 21,
                      color: _selectedIndex == 0
                          ? Color(0xFF53B175)
                          : Color(0xFF181725),
                    ),
                    text: 'Home'),
                Tab(
                    icon: Image.asset(
                      'assets/icons/article.png',
                      width: 30,
                      height: 21,
                      color: _selectedIndex == 1
                          ? Color(0xFF53B175)
                          : Color(0xFF181725),
                    ),
                    text: 'Artikel'),
                Tab(
                    icon: Image.asset(
                      'assets/icons/favorit.png',
                      width: 23,
                      height: 19,
                      color: _selectedIndex == 2
                          ? Color(0xFF53B175)
                          : Color(0xFF181725),
                    ),
                    text: 'Favorit'),
                Tab(
                    icon: Image.asset(
                      'assets/icons/komen.png',
                      width: 26,
                      height: 22,
                      color: _selectedIndex == 3
                          ? Color(0xFF53B175)
                          : Color(0xFF181725),
                    ),
                    text: 'Komentar'),
                Tab(
                    icon: Image.asset(
                      'assets/icons/profile.png',
                      width: 25,
                      height: 22,
                      color: _selectedIndex == 4
                          ? Color(0xFF53B175)
                          : Color(0xFF181725),
                    ),
                    text: 'Profile'),
              ],
            ),
          ),
        ),
        body: Stack(
          children: _screens
              .asMap()
              .map((i, screen) => MapEntry(
                  i,
                  Offstage(
                    offstage: _selectedIndex != i,
                    child: screen,
                  )))
              .values
              .toList(),
        ),
      ),
    );
  }
}
