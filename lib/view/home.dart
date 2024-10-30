import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            // start row paling atas

            // row 1

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCard(
                  'asset/image/aimer.jpg',
                  'Aimer',
                  'Brave Shine',
                  50,
                ),
                buildCard(
                  'asset/image/Lisa.jpg',
                  'LiSA',
                  '紅蓮華',
                  45,
                ),
              ],
            ),

            // row 2

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCard(
                  'asset/image/milet.jpg',
                  'Milet',
                  'Anytime Anywhere',
                  50,
                ),
                buildCard(
                  'asset/image/mwam.jpg',
                  'Man With A Mission',
                  'Seven Deadly Sins',
                  50,
                ),
              ],
            ),

            // start untuk membantu anda mulai mendengarkan

            SizedBox(
              height: 25,
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Untuk membantu kamu mulai mendengarkan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(children: [
                  buildCarousel(
                    'asset/image/Lisa.jpg',
                    'Mix LiSA',
                    20,
                    Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  buildCarousel(
                    'asset/image/milet.jpg',
                    'Mix Milet',
                    20,
                    Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  buildCarousel('asset/image/mwam.jpg',
                      'Mix Man With A Mission', 16, Colors.white),
                  SizedBox(
                    width: 10,
                  ),
                  buildCarousel(
                    'asset/image/aimer.jpg',
                    'Mix Aimer',
                    20,
                    Colors.grey[900],
                  ),
                ]),
              ),
            ),

            // start coba yang lain

            SizedBox(
              height: 20,
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Coba yang lain',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(children: [
                  buildCarousel(
                    'asset/image/aimer.jpg',
                    'Aimer',
                    20,
                    Colors.grey[900],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  buildCarousel(
                    'asset/image/mwam.jpg',
                    'Man With A Mission',
                    16,
                    Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  buildCarousel(
                    'asset/image/Lisa.jpg',
                    'LiSA',
                    20,
                    Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  buildCarousel(
                    'asset/image/milet.jpg',
                    'Aimer',
                    20,
                    Colors.white,
                  ),
                ]),
              ),
            ),

            // start coba yang lain

            SizedBox(
              height: 20,
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Baru diputar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Tampilkan semua',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(children: [
                  buildCarousel(
                    'asset/image/aimer.jpg',
                    'Aimer',
                    20,
                    Colors.grey[900],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  buildCarousel(
                    'asset/image/mwam.jpg',
                    'Man With A Mission',
                    16,
                    Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  buildCarousel(
                    'asset/image/Lisa.jpg',
                    'LiSA',
                    20,
                    Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  buildCarousel(
                    'asset/image/milet.jpg',
                    'Aimer',
                    20,
                    Colors.white,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // carousel component

  Card buildCarousel(
    String imagePath,
    String carouselText,
    double ukuranFont,
    Colors,
  ) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        width: 160,
        height: 160,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                carouselText,
                style: TextStyle(
                  color: Colors,
                  fontSize: ukuranFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
      ),
    );
  }

// card component

  Card buildCard(
      String imagePath, String text, String text2, double widhthSize) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
      child: SizedBox(
        width: 170,
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: widhthSize,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      text2,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontSize: 10),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}
