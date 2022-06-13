import 'package:coba1/notification.dart';
import 'package:flutter/material.dart';
import 'Beranda.dart';
import 'Fvcolors.dart';

class Location extends StatefulWidget {
  const Location({ Key? key }) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
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
            Text("Location", style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Poppins')
            ),
          ]
          )
        ),
        
        actions: [
          IconButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) => notification()));}, icon: Icon(Icons.notifications, color: Colors.black,), padding: EdgeInsets.only(right: 20),)
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
),]
  )));
          

      
    
    
  }
}