import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Koleksi extends StatelessWidget {
  const Koleksi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: const Center(
        child: Text(
          'Collection!',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
