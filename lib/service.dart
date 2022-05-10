import 'package:flutter/material.dart';
import 'Beranda.dart';
import 'Fvcolors.dart';

class Service extends StatefulWidget {
  const Service({ Key? key }) : super(key: key);

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
   return Scaffold( 
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
         elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
        child: Container(
            padding: EdgeInsets.only(right: 25, top: 20, left: 20),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
                ),])
                ),
      ),
        title: Center(
          child: Wrap(
          children: [
            Text("Service Center", style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Poppins')
            ),
          ]
          )
        ),
        
        actions: [
          IconButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) => beranda()));}, icon: Icon(Icons.notifications, color: Colors.black,), padding: EdgeInsets.only(right: 20),)
        ],),
      body: Center(
        child:Column(
          children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
            decoration: InputDecoration(
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.grey.shade600),
            prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
            filled: true,
            fillColor: Colors.grey.shade100,
            contentPadding: EdgeInsets.all(8),
            enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
            color: Colors.grey.shade100
          )
                ),
          
)
)
),
            Container(
                      width: 150, height: 20,
                      child: Text("See All", textAlign: TextAlign.end, style: TextStyle(color: Colors.blue, fontFamily: 'Poppins', fontSize: 14),),
                    ),
            Wrap(children: [
              GestureDetector(
              onTap: () {},
              child : 
              Container(
                margin: EdgeInsets.all(10),
                width: 150, height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/asus.jpeg")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 15,
                      child: Text("Asus Service Center", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 12), textAlign: TextAlign.center,),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 15,
                      child: Text("Jl. Sumatera No. 88", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
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
                width: 150, height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/lenovo.jpeg")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 15,
                      child: Text("Lenovo Service Center", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 12), textAlign: TextAlign.center,),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 15,
                      child: Text("Jl. Kalimantan No.108", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
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
                width: 150, height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/Acer.jpeg")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 15,
                      child: Text("Acer Service Center", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 12), textAlign: TextAlign.center,),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 15,
                      child: Text("Jl. Danau Toba No.108", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
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
                width: 150, height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/hps.jpeg")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 15,
                      child: Text("Hp Service Center", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 12), textAlign: TextAlign.center,),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 15,
                      child: Text("Jl. Riau No. 32", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
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
                width: 150, height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/toshiba.jpeg")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 15,
                      child: Text("Toshiba Service Center", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 12), textAlign: TextAlign.center,),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 15,
                      child: Text("Jl. Karimata No. 32", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
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
                width: 150, height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                     width: MediaQuery.of(context).size.width, height: 90,
                     child: Image.asset("assets/dell.jpeg")
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 15,
                      child: Text("Dell Service Center", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 12), textAlign: TextAlign.center,),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width, height: 15,
                      child: Text("Jl. PB Sudirman No. 68", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
                    ),                   
                  ],
                ),            
              ),
              ),

        ])
]
)));
          

      
    
    
  }
}