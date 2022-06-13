import 'package:flutter/material.dart';
import 'Beranda.dart';
import 'Fvcolors.dart';
import 'main.dart';
import 'serviceCenter.dart';
class DetailO extends StatefulWidget {
  const DetailO({ Key? key }) : super(key: key);

  @override
  State<DetailO> createState() => _NpaymentState();
}

class _NpaymentState extends State<DetailO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
         elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
        child: Container(
            padding: EdgeInsets.only(right: 25, top: 15, left: 20),
            child: Row(
              children:[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.cancel_outlined, color: Colors.black,),
                ),])
                ),
      ),
        title: Center(
          child: Wrap(
          children: [
            Text("Detail Order", style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Poppins')
            ),
          ]
          )
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
              Container(
                child: Icon(Icons.check_circle_outline,color: Colors.black),
                margin: EdgeInsets.only(left: 30)
              ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Align( alignment: Alignment.centerLeft, child: Text("Your Order Has Been Succesfully Completed", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 12)),),
            ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top:20, left: 20),
              child: Align( alignment: Alignment.center, child: Text("Order Number : 2210", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 12)),),
            ),
           Container(
              width: 340,
              height: 250,
              decoration: BoxDecoration(
                color: Color(0xff845c44),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Text(
                          'Customer Details', textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        ],                      
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: [
                        SizedBox(width: 10,),
                        Text(
                          'Naradira', textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],                      
                    ),
                  ),
                   Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      children: [
                        SizedBox(width: 10,),
                        Text(
                          'Naradiratriandini@gmail.com', textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
          ]
        )
      ),
                Container(
                    margin: EdgeInsets.only( top: 10),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Text(
                          '0812345678', textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
          ]
        )
      ),     
            Container(
                    margin: EdgeInsets.only( top: 10),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Text(
                          'Jl. Jawa No.IV 75', textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
          ]
        )
      ),   
              Container( 
                margin: EdgeInsets.only(top: 10),             
                width: 350,
                height: 30,
               decoration: BoxDecoration(
                color: Color.fromARGB(255, 209, 174, 153),
              ),
              child: Row(
                children: [
                SizedBox(width: 10,),
                Text('Product name', textAlign: TextAlign.start,
                 style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold
                ),
               ),
              Container(
                 margin: EdgeInsets.only(left: 25),
                   child: Row(
                   children: [
                   Text('Model', textAlign: TextAlign.end,
                   style: TextStyle(fontSize: 12, color: Colors.white,fontWeight: FontWeight.bold),
                   ),
                   Container( 
                margin: EdgeInsets.only(left: 35),             
                child: Row(
                   children: [
                   Text('Quantity', textAlign: TextAlign.end,
                   style: TextStyle(fontSize: 12, color: Colors.white,fontWeight: FontWeight.bold),
                   ),
                   Container( 
                margin: EdgeInsets.only(left: 45),             
                child: Row(
                   children: [
                   Text('Total', textAlign: TextAlign.end,
                   style: TextStyle(fontSize: 12, color: Colors.white,fontWeight: FontWeight.bold),
                   ),
                   ]
                ))
                   ]
                )
               ),
                ],
              ),
                  ),
          ]
        ),
      ),
      
            Container(
                  margin: EdgeInsets.only(top: 10, left: 15),
              child:  Row(
                   children: [
                   Text('Laptop Lenovo', textAlign: TextAlign.end,
                   style: TextStyle(fontSize: 12, color: Colors.white),
                   ),
                  Container(
                    margin: EdgeInsets.only(left: 20,),
                    child: Row(
                      children: [
                        Text(
                          'Idepad Slim',
                          style: const TextStyle(fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                   Container(
                    margin: EdgeInsets.only(left: 20,),
                    child: Row(
                      children: [
                        Text(
                          '1',
                          style: const TextStyle(fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                  Container(
                    margin: EdgeInsets.only(left: 50,),
                    child: Row(
                      children: [
                        Text(
                          'IDR 100.000',
                          style: const TextStyle(fontSize: 12,
                            color: Colors.white,
                          ),
                        ),    
          ]
        ),
      ), 
        ]
        ))  
          ]
          ))
      ]
        ))
                ]
              )),
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              child: Align( alignment: Alignment.centerRight, child: Text("Total Amount Payment: IDR 100.000", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 12)),),
            ),
            Container( 
                margin: EdgeInsets.only( top: 10),             
                width: 320,
                height: 30,
                alignment: Alignment.center,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 border: Border.all(width:2.0, color: Colors.brown),
                color: Color.fromARGB(255, 255, 255, 255), 
              ),
              child: Text(
                'Leave Your feedback here!', style: const TextStyle(fontSize: 12, color: Colors.black,
                ),
                )),
                Container( 
                margin: EdgeInsets.only( top: 10),             
                width: 320,
                height: 30,
                alignment: Alignment.center,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 border: Border.all(width:2.0, color: Colors.brown),
                color: Color.fromARGB(255, 255, 255, 255), 
              ),
              child: Text(
              'Do You Need Others Services?',style: const TextStyle(fontSize: 14, color: Colors.black, fontFamily: 'Poppins'
                ),

              )),
            Wrap(
            children: [
              GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => beranda()));},
              child : 
              Container(
                margin: EdgeInsets.all(10),
                width: 110, height: 125,
                decoration: BoxDecoration(
                  border: Border.all(width:1.0, color: Colors.brown),
                  borderRadius: BorderRadius.circular(10), color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/hp.png")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 30,
                      child: Text("Handphone", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
                    ),
                  ],
                ),            
              ),
              ),
              GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => beranda()));},
              child : 
              Container(
                margin: EdgeInsets.all(10),
                width: 100, height: 125,
                decoration: BoxDecoration(
                  border: Border.all(width:2.0, color: Colors.brown),
                  borderRadius: BorderRadius.circular(10), color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/tablet.png")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 30,
                      child: Text("Tablet", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
                    ),
                  ],
                ),            
              ),
              ),
              GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => beranda()));},
              child : 
              Container(
                margin: EdgeInsets.all(10),
                width: 100, height: 125,
                decoration: BoxDecoration(
                  border: Border.all(width:2.0, color: Colors.brown),
                  borderRadius: BorderRadius.circular(10), color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/camera.png")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 30,
                      child: Text("Camera", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
                    ),
                  ],
                ),            
              ),
              ),
          ]
        )
          ]
        ))
         );
  }
}