import 'package:coba1/Beranda.dart';
import 'package:coba1/notification.dart';
import 'package:coba1/tampilan.dart';
import 'package:flutter/material.dart';
import 'but.dart';
//import './profile_model.dart';
//import '../lib/colors.dart' as RecehanColors;
// ignore: library_prefixes

class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
     return Scaffold( 
      //      appBar: AppBar(
      //   toolbarHeight: 80,
      //   backgroundColor: Colors.white,
      //    elevation: 0,
      //   automaticallyImplyLeading: false,
      //   flexibleSpace: SafeArea(
      //   child: Container(
      //       padding: EdgeInsets.only(right: 25, top: 20, left: 20),
      //       child: Row(
      //         children: <Widget>[
      //           IconButton(
      //             onPressed: (){
      //               Navigator.pop(context);
      //             },
      //             icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
      //           ),])
      //           ),
      // ),
      //   title: Center(
      //     child: Wrap(
      //     children: [
      //       Text("Profil", style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Poppins')
      //       ),
      //     ]
      //     )
      //   ),
      //    actions: [
      //     IconButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) => notification()));}, icon: Icon(Icons.notifications, color: Colors.black,), padding: EdgeInsets.only(right: 20),)
      //   ],),
               body: CustomScrollView(
        slivers: <Widget>[
          ProfileViewAppBar(),
          SliverList(delegate: SliverChildListDelegate([
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 123, 81, 66),
                      blurRadius: 10.0
                    )
                  ],
                  borderRadius: BorderRadius.circular(100.0),
                ),
                
                child: CircleAvatar(

                  backgroundColor: Colors.transparent,
                  child: Text('N', style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold
                  )),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text('Naradira', style: TextStyle(
                fontSize: 18.0,
                //color: RecehanColors.red,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ))
            ),
            Center(
              child: Text('Naradiratriandini@gmail.com', style: TextStyle(
                fontSize: 18.0,
                // color: Colors.black.withOpacity(.2),
                color: Colors.black,
                //fontWeight: FontWeight.bold
              ))
            ),

            // SizedBox(height: 30.0),
            // Center(child: ProfileRating()),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.all(20.0),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[                 
                  Text('Account', style:TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'OpenSans'
                  )),
                  SizedBox(height: 10.0),

            Container(
              
              width: 380,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff845c44),          
              ),
              child:Column(children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.language_outlined,color: Colors.white
                    ),
                     SizedBox(width: 10,),
                        Text(
                          'Change Language', textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 140),
                          child: Row(
                         children: [
                            IconButton(
                          onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios,color: Colors.white,
                            ))
                      ],                     
                    ),
                  ),
                  ],
                )
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.assistant_rounded, color: Colors.white
                    ),
                     SizedBox(width: 10,),
                        Text(
                          'Term Of Service', textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 150),
                          child: Row(
                         children: [
                            IconButton(
                          onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.white,
                            ))
                      ],                     
                    ),
                  ),
                  ],
                )
                ),
                 Container(
                  margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.payment_outlined,color: Colors.white
                    ),
                     SizedBox(width: 10,),
                        Text(
                          'Payment Method', textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 145),
                          child: Row(
                         children: [
                            IconButton(
                          onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios,color: Colors.white,
                            ))
                      ],                     
                    ),
                  ),
                  ],
                )
                ),
                 Container(
                  margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star_border_outlined,color: Colors.white
                    ),
                     SizedBox(width: 10,),
                        Text(
                          'Favorite Service', textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 150),
                          child: Row(
                         children: [
                            IconButton(
                          onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios,color: Colors.white,
                            ))
                      ],                     
                    ),
                  ),
                  ],
                )
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.person_add,color: Colors.white
                    ),
                     SizedBox(width: 10,),
                        Text(
                          'Invite Friends', textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 165),
                          child: Row(
                         children: [
                            IconButton(
                          onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios,color: Colors.white,
                            ))
                      ],                     
                    ),
                  ),
                  ],
                )
                ),  
                Container(
                  margin: EdgeInsets.only(top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                            title: Align(alignment: Alignment.center, child: Text("Apakah Anda Yakin Ingin Keluar Aplikasi?", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 14,))),
                            contentPadding: EdgeInsets.all(30),
                            children: [                       
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => tampilan()));
                                      },
                                      child: Text("Yes"))),
                                      Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => beranda()));
                                      },
                                      child: Text("No")))
                            ],
                          ));
                },
                child: Text("Sign Out"),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(133, 89, 65, 1),
                  minimumSize: Size(200, 40),
                  textStyle: TextStyle(
                    fontSize: 16, color: Colors.white, fontFamily: 'Poppins'
                  ),
                  
                ),
              ),
               IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.login, color: Colors.white,),
                    ),
                    ]
                  ),
                ),  
              ]
              ),
            ),
                  

     
            

                ],
              ),
            )
          ])),
        ],
      ),
          
          );
        // ]
    // )
    // );
        
  }
}



class ProfileViewAppBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      leading: Container(
        padding: EdgeInsets.all(10.0),
        child: FlatButton(
          onPressed: () {},
          child: Icon(Icons.arrow_back_ios, color: Colors.black,),
        ),
      ),
              title: Center(
          child: Wrap(
        children: [
            Text("Profile", style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Poppins')
            ),
          ]
          )
        ),
        actions: [
          IconButton(onPressed:() {} , icon: Icon(Icons.notifications, color: Colors.black,))
        ]
    );
  }
}