import 'dart:math';

import 'package:coba1/Beranda.dart';
import 'package:coba1/Pbm1.dart';
import 'package:coba1/login.dart';
import 'package:coba1/service.dart';
import 'package:coba1/tampilan.dart';
import 'package:flutter/material.dart' ;
import 'package:coba1/registrasi.dart';
import 'package:coba1/HomePage.dart';
import 'but.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
            theme: ThemeData(),
            home:Main(),
            
        );   
  }
}

