import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mirror_spotify/view/home.dart';
import 'package:mirror_spotify/view/koleksi.dart';
import 'package:mirror_spotify/view/cari.dart';
import 'package:mirror_spotify/view/premium.dart';

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainView(),
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Cari(),
    Koleksi(),
    Premium()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'asset/svg/spotify.svg',
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 13,
            ),
            const Text(
              'Spotify',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: ListView(
          children: [
            const DrawerHeader(
                child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/image/avatar.png'),
                  radius: 30,
                ),
                SizedBox(width: 20),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Gede Abdi',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Lihat Profil',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ]),
              ],
            )),
            ListTile(
              leading: SvgPicture.asset(
                'asset/svg/plus.svg',
                height: 24,
                width: 24,
                color: Colors.white,
              ),
              title: const Text('Tambah Akun',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset(
                'asset/svg/lightning.svg',
                height: 24,
                width: 24,
                color: Colors.white,
              ),
              title: const Text('Yang Baru',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset(
                'asset/svg/history.svg',
                height: 22,
                width: 22,
                color: Colors.white,
              ),
              title: const Text('Riwayat Mendengarkan',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset(
                'asset/svg/setting.svg',
                height: 28,
                width: 28,
                color: Colors.white,
              ),
              title: const Text('Pengaturan dan Privasi',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: kBottomNavigationBarHeight,
            color: Colors.transparent,
          ),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: 'Cari',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.collections,
                  size: 30,
                ),
                label: 'Koleksi Kamu',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.workspace_premium,
                  size: 30,
                ),
                label: 'Premium',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.transparent,
            onTap: _onItemTapped,
            elevation: 0,
          ),
        ],
      ),
    );
  }
}
