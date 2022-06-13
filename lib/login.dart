import 'dart:developer';

import 'package:coba1/Beranda.dart';
import 'package:coba1/HomePage.dart';
import 'package:coba1/auth.dart';
import 'package:coba1/but.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // AuthServices authServices = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, title: Center( child: Container (margin: EdgeInsets.only(), width: 300, height: 40, decoration: BoxDecoration(border: Border.all(width:2.0, color: Colors.brown ), borderRadius: BorderRadius.circular(10)), child: Center (child:Text('SIGN IN', style: const TextStyle(  color: Colors.black, 
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
                margin: EdgeInsets.only(top: 30),
                width: 300,
                height: 350,
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
                            Icons.mail,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'Email',
                            style: const TextStyle(fontSize: 18, fontFamily: 'Poppins-Bold',
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
                            'Password',
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
                      margin: EdgeInsets.only(left: 85, top: 40),
                      width: 130,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Color(0xFFcd9a81),
                        textStyle: TextStyle(fontSize: 18, fontFamily: 'Poppins-Bold',
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        // onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Main()));}, 
                        onPressed: () {
                          LOGIN(email.text, password.text);
                          // if(authServices.email != "" && authServices.password != "" ){
                          //     authServices.signIn(email.text, password.text);
                          // }  
                        },                       
                        child: Text('Sign In')),   
                                           
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
void LOGIN(String email, String password) async {
    try {
      log("login berhasil");
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email, password: password)
          .then((uid) => {
            
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Main();
                }))
              });
    } on FirebaseAuthException catch (e) {
      print(e);
      rethrow;
    }
  }
}