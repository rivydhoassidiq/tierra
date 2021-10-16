import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../keranjang.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFFFFFFF),
        bottom: PreferredSize(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/tumbuhan.png',
                  width: 43,
                  height: 41,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.location_on),
                    // Image.asset('assets/icons/track.png',
                    //     width: 15, height: 19),
                    SizedBox(width: 9),
                    Text(
                      'Makassar, Sulawesi Selatan',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            preferredSize: const Size.fromHeight(20)),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 250,
                    padding: EdgeInsets.only(top: 24),
                    margin: EdgeInsets.only(left: 24, right: 24),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                        ),
                        fillColor: Color(0xFFF2F3F2),
                        filled: true,
                        hintText: 'Cari',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(KeranjangPage());
                          },
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 35,
                          ),
                        ),
                      ),
                      Text('Keranjang'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
