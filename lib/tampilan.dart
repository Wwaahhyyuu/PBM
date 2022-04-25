import 'package:coba1/registrasi.dart';
import 'package:flutter/material.dart';

class tampilan extends StatefulWidget {
  const tampilan({ Key? key }) : super(key: key);

  @override
  State<tampilan> createState() => _tampilanState();
}

class _tampilanState extends State<tampilan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff845c44),
            ),
            backgroundColor: Color(0xff845c44),
      body: Center(
            child : Column( mainAxisAlignment: MainAxisAlignment.center , crossAxisAlignment: CrossAxisAlignment.center, children: [
              Image.asset("assets/logo.png", width: 212, height: 192),
              Text("ServiceApp",style: TextStyle (fontSize :30, color:  Color.fromARGB(255, 255, 253, 253), fontWeight: FontWeight.bold, fontFamily: 'Poppins-Bold')),
              Text("Order your Digital Device services now", style:TextStyle (fontSize :15, color:  Color.fromARGB(255, 255, 253, 253), fontWeight: FontWeight.bold, fontFamily: 'Poppins-Bold')),
            Container(
              margin: EdgeInsets.only(top: 30),
              child : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      primary: Color(0xFFcd9a81),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Registrasi()));}, 
                      child: Text('GET STARTED',style:TextStyle (fontSize :20, color:  Color.fromARGB(255, 255, 253, 253), fontWeight: FontWeight.bold, fontFamily: 'Poppins-Bold' , )),
        
              ),
            ),
            ],

            ) 
      ), 
      ),
      );

  }
}

