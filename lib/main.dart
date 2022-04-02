import 'package:coba1/Beranda.dart';
import 'package:coba1/login.dart';
import 'package:coba1/tampilan.dart';
import 'package:flutter/material.dart' ;
import 'package:coba1/registrasi.dart';



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
            home: Beranda(),
            
        );   
  }
}

