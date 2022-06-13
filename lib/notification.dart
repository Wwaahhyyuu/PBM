import 'package:flutter/material.dart';

void main() {
  runApp(const notification());
}

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
            Text("Notification", style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Poppins')
            ),
          ]
          )
        ),),
            body: SingleChildScrollView(
                child: Column(children: [
              Container(
                  margin: EdgeInsets.fromLTRB(300, 20, 0, 0),
                  child: Align(
                    child: Text(
                      "see all",
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 280, 0),
                  child: Align(
                    child: Text(
                      "Payment",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(18, 5, 50, 0),
                  child: Row(
                    children: [
                      Text(
                        "Service Iphone 7",
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(90, 5, 0, 0),
                          child: Row(
                            children: [
                              Text("IDR Rp. 100.000",
                                  style: TextStyle(fontSize: 13)),
                              Container(
                                  child: Row(
                                children: [
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  )
                                ],
                              )),
                            ],
                          ))
                    ],
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 280, 0),
                  child: Align(
                    child: Text(
                      "Payment",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(18, 5, 50, 0),
                  child: Row(
                    children: [
                      Text(
                        "Service Iphone Xr",
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(90, 5, 0, 0),
                          child: Row(
                            children: [
                              Text("IDR Rp. 150.000",
                                  style: TextStyle(fontSize: 13)),
                              Container(
                                  child: Row(
                                children: [
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  )
                                ],
                              )),
                            ],
                          ))
                    ],
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 280, 0),
                  child: Align(
                    child: Text(
                      "Payment",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(18, 5, 50, 0),
                  child: Row(
                    children: [
                      Text(
                        "Service Iphone 12",
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(90, 5, 0, 0),
                          child: Row(
                            children: [
                              Text("IDR Rp. 170.000",
                                  style: TextStyle(fontSize: 13)),
                              Container(
                                  child: Row(
                                children: [
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  )
                                ],
                              )),
                            ],
                          ))
                    ],
                  )), Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 280, 0),
                  child: Align(
                    child: Text(
                      "Payment",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(18, 5, 50, 0),
                  child: Row(
                    children: [
                      Text(
                        "Service Iphone 12",
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(90, 5, 0, 0),
                          child: Row(
                            children: [
                              Text("IDR Rp. 170.000",
                                  style: TextStyle(fontSize: 13)),
                              Container(
                                  child: Row(
                                children: [
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  )
                                ],
                              )),
                            ],
                          ))
                    ],
                  )),
                   Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 280, 0),
                  child: Align(
                    child: Text(
                      "Payment",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(18, 5, 50, 0),
                  child: Row(
                    children: [
                      Text(
                        "Service Iphone 12",
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(90, 5, 0, 0),
                          child: Row(
                            children: [
                              Text("IDR Rp. 170.000",
                                  style: TextStyle(fontSize: 13)),
                              Container(
                                  child: Row(
                                children: [
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  )
                                ],
                              )),
                            ],
                          ))
                    ],
                  )),
                   Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 280, 0),
                  child: Align(
                    child: Text(
                      "Payment",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(18, 5, 50, 0),
                  child: Row(
                    children: [
                      Text(
                        "Service Iphone 12",
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(90, 5, 0, 0),
                          child: Row(
                            children: [
                              Text("IDR Rp. 170.000",
                                  style: TextStyle(fontSize: 13)),
                              Container(
                                  child: Row(
                                children: [
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  )
                                ],
                              )),
                            ],
                          ))
                    ],
                  )),
                   Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 280, 0),
                  child: Align(
                    child: Text(
                      "Payment",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(18, 5, 50, 0),
                  child: Row(
                    children: [
                      Text(
                        "Service Iphone 12",
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(90, 5, 0, 0),
                          child: Row(
                            children: [
                              Text("IDR Rp. 170.000",
                                  style: TextStyle(fontSize: 13)),
                              Container(
                                  child: Row(
                                children: [
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  )
                                ],
                              )),
                            ],
                          ))
                    ],
                  )),
             
                    ],
                  )),
            ));
  }
}
