
import 'package:flutter/material.dart';
import 'package:belajar_1/models/chatMessageModel.dart';

class ChatDetailPage extends StatefulWidget{
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
// List gambar = [
//     'assets/vivo.jpg',
// ];

List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hallo kak, saya ingin berkonsultasi mengenai laptop saya yang layarnya seperti ini karena apa ya kak penyebabnya?", messageType: "receiver",),
    ChatMessage(messageContent: "Selamat datang di layanan konsultasi bersama Asus Center, okey kak mungkin kakak bisa menjelaskan terlebih dahulu sebelumnya pernah jatuh atau bagaimana?", messageType: "sender"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
                ),
                SizedBox(width: 2,),
                CircleAvatar(
                  radius: 20.0,
                  child: ClipRRect(
                    child: Image.asset('asus.jpg'),
                    borderRadius: BorderRadius.circular(50.0),
                ),
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Naradira",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                      SizedBox(height: 6,),
                      Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
                    ],
                  ),
                ),
                Icon(Icons.settings,color: Colors.black54,),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
                child: Align(
        alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: (messages[index].messageType  == "receiver"?Color(0xFFcd9a81):Color(0xff845c44)),
          ),
          padding: EdgeInsets.all(16),
          child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15, color: Colors.white), ),
        ),
                )
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xff845c44),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 20, ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Write message...",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.camera_alt_outlined, color: Colors.white,size: 18,),
                    backgroundColor: Color(0xff845c44),
                    elevation: 0,
                  ),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.mic, color: Colors.white,size: 18,),
                    backgroundColor: Color(0xff845c44),
                    elevation: 0,
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.send,color: Colors.white,size: 18,),
                    backgroundColor: Color(0xff845c44),
                    elevation: 0,
                  ),
                ],
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}