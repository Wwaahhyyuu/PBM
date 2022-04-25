import 'package:flutter/material.dart';
import 'Fvcolors.dart';
import 'service.dart';

class beranda extends StatefulWidget {
  const beranda({ Key? key }) : super(key: key);

  @override
  State<beranda> createState() => _berandaState();
}

class _berandaState extends State<beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        leadingWidth: 100,
        leading: SizedBox(
          child: Image.asset("assets/logo.png", fit: BoxFit.cover,)
        ),
        title: Center(
          child: Wrap(
          children: [
            Text("Welcome Naradira! Choose Your Service", style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: 'Poppins'),)
          ],
          )
        ),
        actions: [
          IconButton(onPressed:() {} , icon: Icon(Icons.notifications, color: Colors.black,))
        ],
      ) ,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.green,
      //   child: const Icon(Icons.navigation),
      // ),
      body: Center (
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, left: 60),
              child: Align( alignment: Alignment.centerLeft, child: Text("Katalog", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 14)),),
            ),
          Wrap(
            children: [
              GestureDetector(
              onTap: () {},
              child : 
              Container(
                margin: EdgeInsets.all(10),
                width: 100, height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/laptop.png")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 30,
                      child: Text("Laptop", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                    ),
                  ],
                ),            
              ),
              ),
                GestureDetector(
              onTap: () {},
              child : 
              Container(
                margin: EdgeInsets.all(10),
                width: 100, height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/computer.png")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 30,
                      child: Text("Computer", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                    ),
                  ],
                ),            
              ),
              ),
                            GestureDetector(
              onTap: () {},
              child : 
              Container(
                margin: EdgeInsets.all(10),
                width: 100, height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/camera.png")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 30,
                      child: Text("Camera", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                    ),
                  ],
                ),            
              ),
              ),
                            GestureDetector(
              onTap: () {},
              child : 
              Container(
                margin: EdgeInsets.all(10),
                width: 100, height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/hp.png")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 30,
                      child: Text("Handphone", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                    ),
                  ],
                ),            
              ),
              ),
                            GestureDetector(
              onTap: () {},
              child : 
              Container(
                margin: EdgeInsets.all(10),
                width: 100, height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/tablet.png")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 30,
                      child: Text("Tablet", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                    ),
                  ],
                ),            
              ),
              ),
             
            ],
          ),
        Container(
          child: Column(
            children: [
              Container(
                width: 300, height: 30,
                child: Row(
                  children: [
                    Container(
                      width: 150, height: 20,
                      child: Text("Promo", textAlign: TextAlign.start,style: TextStyle(color: FvColors.textview5FontColor, fontFamily: 'Poppins', fontSize: 14 ),),
                    ),
                    Container(
                      width: 150, height: 20,
                      child: Text("See All", textAlign: TextAlign.end, style: TextStyle(color: FvColors.textview48FontColor, fontFamily: 'Poppins', fontSize: 14),),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300, height: 100,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), 
                image: DecorationImage(image:AssetImage("assets/blur.png"), fit: BoxFit.cover),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height, width: 200,
                      child: Align( alignment: Alignment.center, child: Text("Promo 30% bagi pengguna baru!!! Buruan serbu", style: TextStyle(fontFamily: 'Poppins', fontSize: 12, color: FvColors.textview46FontColor),),),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height, width: 100,
                      decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/gambar.png"), fit: BoxFit.cover), borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ],
                ),
             ),
            ],
          ),
        )
          ],
        ),
      ),
    );
  }
}
