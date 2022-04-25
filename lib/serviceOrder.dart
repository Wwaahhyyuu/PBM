import 'package:flutter/material.dart';
// import 'package:belajar_1/models/chatUsersModel.dart';
// import 'package:belajar_1/widged/conversationList.dart';
// import 'package:belajar_1/screen/Fvcolors.dart';


class serviceOrder extends StatefulWidget {
  @override
  _serviceOrderState createState() => _serviceOrderState();
}

class _serviceOrderState extends State<serviceOrder> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
            title: Center(
              child: Wrap(
                children: [
                  Text("Service Order", style: TextStyle(color: Colors.black),)
                ],
              ), 
            ),

            flexibleSpace: SafeArea(
              child: Container(
                padding: EdgeInsets.only(right: 50, top: 10),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
                    ),

                  ]
                )
              )
            )
        ),


        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "“Thank You for Choosing Lenovo Center!”",
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1), 
                    fontFamily: 'Poppins', 
                    fontWeight: FontWeight.bold,
                    fontSize: 18)
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                width: 350,
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

                    SizedBox(height: 5,),
                    
                    Text(
                      "Click Here,To See Our Rating!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 14
                      ),
                    ),
                    
                  ],
                ),
              ),
              
              Container(
                width: 350,
                height: 400,
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tell Us Your Problem",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 18
                      ),
                    )
                  ],
                ),
              )
            
            ]
          )
        ),


            
             
    );
  }
}
