import 'dart:developer';

import 'package:coba1/HomePage.dart';
import 'package:coba1/auth.dart';
import 'package:coba1/but.dart';
import 'package:coba1/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({ Key? key }) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiState();
}
class _RegistrasiState extends State<Registrasi> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController username = TextEditingController();
  // AuthServices authServices = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, title: Center( child: Container ( width: 300, height: 40,  margin: EdgeInsets.only(right: 30), decoration: BoxDecoration(border: Border.all(width:2.0, color: Colors.brown ), borderRadius: BorderRadius.circular(10)), child: Center (child: Text('SIGN UP', style: const TextStyle(  color: Colors.black, 
      fontWeight: FontWeight.bold),),),
      ),
       ),
       ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 300,
                height: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff845c44),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25, top: 20),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.account_circle,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'USERNAME',
                            style: const TextStyle(
                              color: Colors.white, fontSize: 18, fontFamily: 'Poppins-Bold',
                            ),
                          ),
                        ],                      
                      ),
                    ),

                    SizedBox(height: 5),

                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: 250,
                      height: 40,
                      child: TextField(
                        controller: username,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)
                          ),
                          filled: true,
                          fillColor: Color(0xFFcd9a81),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 25, top: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.app_registration,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'FULLNAME',
                            style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Poppins-Bold',
                            ),
                          ),
                        ],                      
                      ),
                    ),

                    SizedBox(height: 5),

                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: 250,
                      height: 40,
                      child: TextField(
                      controller: fullname,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)
                          ),
                          filled: true,
                          fillColor: Color(0xFFcd9a81),
                        ),
                      ),
                    ),
                                      Container(
                      margin: EdgeInsets.only(left: 25, top: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'E-MAIL',
                            style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Poppins-Bold',
                            ),
                          ),
                        ],                      
                      ),
                    ),

                    SizedBox(height: 5),

                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: 250,
                      height: 40,
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)
                          ),
                          filled: true,
                          fillColor: Color(0xFFcd9a81),
                        ),
                      ),
                    ),
              Container(
                      margin: EdgeInsets.only(left: 25, top: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_open,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'PASSWORD',
                            style: TextStyle(fontSize: 18, fontFamily: 'Poppins-Bold',
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],                      
                      ),
                    ),

                    SizedBox(height: 5),

                    Container(
                      margin: EdgeInsets.only(left: 25),
                      width: 250,
                      height: 40,
                      child: TextField(
                        obscureText: true,
                        controller: password,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)
                          ),
                          filled: true,
                          fillColor: Color(0xFFcd9a81),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 85, top: 20),
                      width: 130,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Color(0xFFcd9a81),
                        textStyle: TextStyle(fontSize: 18, fontFamily: 'Poppins-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        onPressed: (){
                        try{
                        FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: password.text);
                        log("Register Berhasil");
                         Navigator.push(
                   context,
                  MaterialPageRoute(
                    builder: (context) {
                      
                      return LoginScreen();
                    },
                  ),
                );
                      } on FirebaseAuthException catch (e){
                        log(e.toString());
                      }
                      
                        },
                        child: Text('Sign Up')),         
                    ),                                 
                  ],
                ),
              ),

              Container(
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff845c44),
                ),
                      width: 280,
                      height: 40,
                      margin: EdgeInsets.only(top: 20),
                      child: ElevatedButton.icon(
                        onPressed: () {}, 
                        icon: Icon(Icons.facebook),
                        label: Text('Sign In with Facebook'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff845c44),
                          textStyle: TextStyle(fontSize: 18, fontFamily: 'Poppins-Bold'
                        ),
                        ),
                      ),
              ),
              Container(
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff845c44),
                ),
                      width: 280,
                      height: 40,
                      margin: EdgeInsets.only(top: 20),
                      child: ElevatedButton.icon(
                        onPressed: () {}, 
                        icon: Icon(Icons.facebook),
                        label: Text('Sign In with Google'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff845c44),
                          textStyle: TextStyle( fontSize: 18, fontFamily: 'Poppins-Bold',
                        ),
                        ),
                      ),
                    )

            ],
          ),
        ),
      ),
    );
  }
    void signUp() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.text.trim(),
              password: password.text.trim())
          .then((uid) => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                ),
              });
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}