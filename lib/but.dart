import 'package:coba1/activity.dart';
import 'package:coba1/maps.dart';
import 'package:coba1/profil.dart';
import 'package:flutter/material.dart';
import 'Beranda.dart';
import 'package:coba1/serviceCenter.dart';
import 'package:coba1/main.dart';
import 'chatPage.dart';
import 'location.dart';
import 'activity.dart';


class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int pageIndex = 0;

  final pages = [
    const beranda(),
    ChatPage(),
    const MapsFeature(),
    const activity(),
    const profile()

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
            BotNavIcon(0, Icons.home, 'Home', ),
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
