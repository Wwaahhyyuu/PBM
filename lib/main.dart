import 'dart:math';
import 'package:coba1/activity.dart';
import 'package:coba1/dialog.dart';
import 'package:coba1/maps.dart';
import 'package:coba1/notification.dart';
import 'package:coba1/profil.dart';
import 'package:coba1/ser.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coba1/HomePage.dart';
import 'package:coba1/chatDetailPage.dart';
import 'package:coba1/chatMessageModel.dart';
import 'package:coba1/detail.dart';
import 'package:flutter/material.dart';
import 'package:coba1/Beranda.dart';
import 'package:coba1/chatPage.dart';
import 'package:coba1/detailO.dart';
import 'package:coba1/login.dart';
import 'package:coba1/payment.dart';
import 'package:coba1/serviceCenter.dart';
import 'package:coba1/tampilan.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' ;
import 'package:coba1/registrasi.dart';
//import 'package:coba1/HomePage.dart';
import 'package:coba1/models/HomePage.dart';
import 'but.dart';
import 'payment2.dart';
import 'screen_camera.dart';
import 'package:coba1/maps.dart';
import 'location.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  newMethod();
}

void newMethod() => runApp(MyApp());

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
            //theme: ThemeData(),
            home:profile()
            
        );   
  }
}

