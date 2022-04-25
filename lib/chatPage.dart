import 'package:flutter/material.dart';
import 'package:belajar_1/models/chatUsersModel.dart';
import 'package:belajar_1/widged/conversationList.dart';


class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
    List<ChatUsers> chatUsers = [
    ChatUsers(name: "ASUS CENTER", messageText: "Selamat datang di Asus Center. Kami melayani jasa service...", imageURL: "assets/asus.jpg", time: "Now"),
    ChatUsers(name: "ACER SERVICE", messageText: "Selamat datang di Acer Service. Kami melayani jasa ser....", imageURL: "assets/acer.jpg", time: "Yesterday"),
    ChatUsers(name: "AXIOO SERVICE", messageText: "Selamat datang di Axioo Service. Kami melayani jasa serv...", imageURL: "assets/axioo.png", time: "31 Mar"),
    ChatUsers(name: "HP CENTER", messageText: "Selamat datang di HP Center. Kami melayani jasa serv...", imageURL: "assets/hp.png", time: "28 Mar"),
    ChatUsers(name: "LENOVO CENTER", messageText: "Selamat datang di Lenovo Center. Kami melayani jasa serv...", imageURL: "assets/lenovo.jpg", time: "23 Mar"),
    ChatUsers(name: "SAMSUNG SERVICE", messageText: "Selamat datang di Samsung Service. Kami melayani jasa...", imageURL: "assets/samsung.jpg", time: "17 Mar"),
    ChatUsers(name: "VIVO CENTER", messageText: "Selamat datang di Vivo Center. Kami melayani jasa service...", imageURL: "assets/vivo.jpg", time: "24 Feb"),
    ChatUsers(name: "OPPO CENTER", messageText: "Selamat datang di Oppo Center. Kami melayani jasa service...", imageURL: "assets/oppo.png", time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios)),
                    Text("Chat",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.white,size: 20,),
                          SizedBox(width: 2,),
                          // Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: (Colors.white)),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
  padding: EdgeInsets.only(top: 16,left: 16,right: 16),
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
    ),
  ),
),
ListView.builder(
  itemCount: chatUsers.length,
  shrinkWrap: true,
  padding: EdgeInsets.only(top: 16),
  physics: NeverScrollableScrollPhysics(),
  itemBuilder: (context, index){
    return ConversationList(
      name: chatUsers[index].name,
      messageText: chatUsers[index].messageText,
      imageUrl: chatUsers[index].imageURL,
      time: chatUsers[index].time,
      isMessageRead: (index == 0 || index == 3)?true:false,
    );
  },
),
          ],
        ),
      ),
    );

  }
}
