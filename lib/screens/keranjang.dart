import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KeranjangPage extends StatelessWidget {
  KeranjangPage({Key? key}) : super(key: key);

  // KeranjangPage({this.nama});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color(0xFFFFFFFF),
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back, color: Colors.black)),
        title: Row(
          children: const [
            Icon(Icons.shopping_cart, color: Colors.black),
            SizedBox(width: 12),
            Text(
              'Keranjang',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
