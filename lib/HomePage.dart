import 'package:coba1/Beranda.dart';
import 'package:coba1/but.dart';
import 'package:coba1/service.dart';
import 'package:coba1/tampilan.dart';
import 'package:flutter/material.dart';
import 'package:coba1/main.dart';
import 'package:coba1/chatDetailPage.dart';
import 'package:coba1/chatPage.dart';



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Location",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.align_vertical_bottom),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),

        ],
      )
    );
  }
}