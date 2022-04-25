import 'package:flutter/material.dart';
import 'Beranda.dart';
import 'package:coba1/service.dart';
import 'package:coba1/main.dart';
// import 'package:project/settings.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int pageIndex = 1;

  final pages = [
    const beranda(),
    const Service(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BotNavIcon(0, Icons.home, 'Home'),
            BotNavIcon(1, Icons.chat, 'Chat'),
            BotNavIcon(2, Icons.location_on, 'Location'),
            BotNavIcon(3, Icons.align_vertical_bottom, 'Activity'),
            BotNavIcon(4, Icons.account_box, 'Profil')
          ],
        ),
      ),
    );
  }

  IconButton BotNavIcon(
    index,
    IconData icon,
    text,
  ) {
    return IconButton(
      enableFeedback: false,
      onPressed: () {
        setState(() {
          pageIndex = index;
        });
      },
      icon: Icon(icon),
    );
  }
}
