import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({ Key? key }) : super(key: key);

  @override
  State<Beranda> createState() => _tampilanState();
}

class _tampilanState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(100),
    
      child: AppBar(backgroundColor: Color.fromARGB(255, 244, 244, 243),
        centerTitle: true,
        title: Text('Welcome Naradira! Choose Your Service ', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'Poppins-Bold'),
  
      // body: Center(
            // child : Column(children: [
            //   Image.asset("assets/logo.png", width: 88, height: 88),
            // Container(
            //   margin: EdgeInsets.only(top: 30),
              // child : ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //         primary: Color(0xFFcd9a81),
              //         textStyle: TextStyle(
              //           fontWeight: FontWeight.bold,
              //         ),
                      ),
                      // onPressed: () {},
                      // child: Text('GET STARTED',style:TextStyle (fontSize :20, color:  Color.fromARGB(255, 255, 253, 253), fontWeight: FontWeight.bold, fontFamily: 'Poppins-Bold' , )),
        
              // ),
            // ],
            ),
      // ), 
      ),
      ),
      );

  }
}

