
import 'dart:developer';

import 'package:belajar_1/screen/beranda.dart';
import 'package:belajar_1/screen/chatDetailPage.dart';
import 'package:belajar_1/screen/chatPage.dart';
import 'package:belajar_1/screen/login.dart';
import 'package:belajar_1/screen/registrasi.dart';
import 'package:belajar_1/screen/serviceOrder.dart';
import 'package:belajar_1/screen/tampilan.dart';
import 'package:belajar_1/screen/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: serviceOrder(),
    );
  }
}


