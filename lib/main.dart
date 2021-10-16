import 'package:flutter/material.dart';
import 'package:tierra/screens/profile/profile.dart';

import 'screens/bottom_navbar.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Tierra',
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
