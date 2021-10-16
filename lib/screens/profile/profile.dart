import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    final widthC = sizeWidth;
    final heightC = sizeHeight;

    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      body: SafeArea(
        child: ListView(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                // color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          ContainerProfile(),

                          const SizedBox(width: 8),
                          // Nama Profile
                          Text(
                            'Edelynn',
                            style: GoogleFonts.abhayaLibre(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF181725),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Widget Button
                    const ButtonToko(),
                    const ButtonPesanan(),
                    const ButtonDetail(),
                    const ButtonPengiriman(),
                    const ButtonPemberitahuan(),
                    const ButtonBantuan(),
                    const ButtonTentang(),
                    const SizedBox(height: 100),

                    //Tombol keluar
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.logout,
                            color: Color(0xFF53B175),
                          ),
                          Container(
                            width: 202,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xFFF2F3F2),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Keluar',
                                    style: GoogleFonts.abhayaLibre(
                                      color: const Color(0xFF53B175),
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonTentang extends StatelessWidget {
  const ButtonTentang({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: ListTile(
          trailing: const Icon(
            Icons.navigate_next,
            color: Colors.black,
          ),
          leading: const Icon(
            Icons.info_outline_rounded,
          ),
          title: Text(
            'Tentang',
            style: GoogleFonts.abhayaLibre(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonBantuan extends StatelessWidget {
  const ButtonBantuan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: ListTile(
          trailing: const Icon(
            Icons.navigate_next,
            color: Colors.black,
          ),
          leading: const Icon(
            Icons.help_outline_sharp,
          ),
          title: Text(
            'Bantuan',
            style: GoogleFonts.abhayaLibre(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonPemberitahuan extends StatelessWidget {
  const ButtonPemberitahuan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: ListTile(
          trailing: const Icon(
            Icons.navigate_next,
            color: Colors.black,
          ),
          leading: const Icon(
            Icons.notifications_none,
          ),
          title: Text(
            'Pemberitahuan',
            style: GoogleFonts.abhayaLibre(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonPengiriman extends StatelessWidget {
  const ButtonPengiriman({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: ListTile(
          trailing: const Icon(
            Icons.navigate_next,
            color: Colors.black,
          ),
          leading: const Icon(
            Icons.location_on,
          ),
          title: Text(
            'Alamat Pengiriman',
            style: GoogleFonts.abhayaLibre(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonDetail extends StatelessWidget {
  const ButtonDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: ListTile(
          trailing: const Icon(
            Icons.navigate_next,
            color: Colors.black,
          ),
          leading: const Icon(
            Icons.account_circle,
          ),
          title: Text(
            'Detail Saya',
            style: GoogleFonts.abhayaLibre(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonPesanan extends StatelessWidget {
  const ButtonPesanan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: ListTile(
          trailing: const Icon(
            Icons.navigate_next,
            color: Colors.black,
          ),
          leading: const Icon(
            Icons.shopping_bag_outlined,
          ),
          title: Text(
            'Pesanan',
            style: GoogleFonts.abhayaLibre(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonToko extends StatelessWidget {
  const ButtonToko({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: ListTile(
          trailing: const Icon(
            Icons.navigate_next,
            color: Colors.black,
          ),
          leading: const Icon(
            Icons.storefront_outlined,
          ),
          title: Text(
            'Toko Saya',
            style: GoogleFonts.abhayaLibre(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerProfile extends StatelessWidget {
  const ContainerProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      height: 76,
      // color: Colors.red,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/icons/profilepict.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
