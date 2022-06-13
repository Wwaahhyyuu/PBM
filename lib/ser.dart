import 'package:coba1/Beranda.dart';
import 'package:coba1/chatPage.dart';
import 'package:coba1/detailO.dart';
import 'payment.dart';
import 'payment2.dart';
import 'package:coba1/serviceCenter.dart';
import 'package:flutter/material.dart';
import 'detailO.dart';

class serviceOrder extends StatefulWidget {
  @override
  _serviceOrderState createState() => _serviceOrderState();
}

class _serviceOrderState extends State<serviceOrder> {

  @override
  Widget build(BuildContext context) {
    bool nilaiCheckBox = false;

    return Scaffold(
        appBar: AppBar(
          // elevation: 0,
          // automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
            title: Center(
              child : SingleChildScrollView(
              child: Column(
                children: [
                  Text("Service Order", style: TextStyle(color: Colors.black),)
                ],
              ), 
            ),
            ),
            flexibleSpace: SafeArea(
              child: Container(
                padding: EdgeInsets.only(top: 5),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context, MaterialPageRoute(builder: (context) => Service()));
                      },
                      icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
                    ),

                  ]
                )
              )
            )
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "“Thank You for Choosing Lenovo Center!”",
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1), 
                      fontFamily: 'Poppins', 
                      fontWeight: FontWeight.bold,
                      fontSize: 16)
                  ),
                ),
                             
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 300,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(208, 160, 139, 1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color.fromRGBO(133, 89, 65, 1),
                      width: 4
                    )
                  ),
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LENOVO SERVICE CENTER JEMBER",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16
                        ),
                      ),
                      ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                            title: Align(alignment: Alignment.center, child: Text("OUR RATING", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 14,))),
                            contentPadding: EdgeInsets.all(30),
                            children: [
                              Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(208, 160, 139, 1),
                    border: Border.all(
                      color: Color.fromRGBO(133, 89, 65, 1),
                      width: 4
                    )
                  ),
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LENOVO SERVICE CENTER JEMBER",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 14
                        ),
                      ),
                      Text(
                        "Bergabung sejak 2017 - terverifikasi",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 14
                        ),
                      ),
                    ]
                  ),
                              ),
                              Text(
                                "kami menyediakan layanan service aptop dan Pc, dengan 99 teknisi professional dan siap menuju ke lokasi Anda",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Rating and Review",
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1), 
                      fontFamily: 'Poppins', 
                      fontWeight: FontWeight.bold,
                      fontSize: 16)
                  ),
                ),
                            Text(
                                "4.7 (134 rating)",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "Review Hanggini",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                "layanannya sangat mantap dan cepat,teknisinya ramah. terimakasih",
                                style: TextStyle(
                                  fontSize: 14,
                                  
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Tutup")))
                            ],
                          ));
                },
                child: Text("Click Here to See Our Rating!"),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(208, 160, 139, 1),
                  
                  minimumSize: Size(200, 40),
                  textStyle: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
                    ]
                  ),
                ),       
                Container(
                  width: 350,
                  height: 550,
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tell Us Your Problem!",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 14
                        ),
                      ),
                      CheckboxListTile(
                        title: Text('Bluescreen Laptop'),
                        value: nilaiCheckBox,
                        // activeColor: Colors.deepPurpleAccent,
                        onChanged: (value) {
                          setState(() {
                            nilaiCheckBox = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Laptop Shutdown Suddenly'),
                        value: nilaiCheckBox,
                        // activeColor: Colors.deepPurpleAccent,
                        onChanged: (value) {
                          setState(() {
                            nilaiCheckBox = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Laptop Speaker Not Working'),
                        value: nilaiCheckBox,
                        // activeColor: Colors.deepPurpleAccent,
                        onChanged: (value) {
                          setState(() {
                            nilaiCheckBox = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Broken LCD'),
                        value: nilaiCheckBox,
                        // activeColor: Colors.deepPurpleAccent,
                        onChanged: (value) {
                          setState(() {
                            nilaiCheckBox = value!;
                          });
                        },
                      ),              
                      // CheckboxListTile(
                      // child: 
                      GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));},
              child : 
                      Container(
                        margin: EdgeInsets.only(left: 10),
                          child: Row(
                          children: [
                            const Icon(
                          Icons.chat,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'Consult Your Problem Here!',
                          style: const TextStyle(fontSize: 12,
                            color: Colors.black,
                          ),
                        ),   
                      ],
                        ),
                        
                      ),
                      ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Time and Location",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 14
                        ),
                      ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        hintText: "example: Fahrul Riza",
                        labelText: "Your Name",
                        icon: Icon(Icons.create_outlined),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Name cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        hintText: "example: Jalan Danau Toba",
                        labelText: "Your Location",
                        icon: Icon(Icons.maps_home_work_outlined),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Location cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),   
                    ],                  
                  ),                  
                   ), 
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        hintText: "example: 08961661661",
                        labelText: "Telp. Number",
                        icon: Icon(Icons.format_list_numbered),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Number cannot be empty';
                        }
                        return null;
                      },
                    ),
                  ),   
                    ],                  
                  ),                  
                   ), 
                   Container(
                    margin: EdgeInsets.only(left: 280),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Text(
                          'Next', textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Row(
                          children: [
                            IconButton(
                          onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => payment()));
                  },
                  icon: Icon(Icons.arrow_forward_ios,color: Colors.black,
                            ))
                      ],
                        ),
                        ),
                    ]          
            )
                )
              ]
            ),
          )
              
        )
        );
      }
}
