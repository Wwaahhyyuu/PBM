import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff845c44),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'Email',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],                      
                    ),
                  ),

                  SizedBox(height: 5),

                  Container(
                    margin: EdgeInsets.only(left: 25),
                    width: 250,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)
                        ),
                        filled: true,
                        fillColor: Color(0xFFcd9a81),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 25, top: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.password,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],                      
                    ),
                  ),

                  SizedBox(height: 5),

                  Container(
                    margin: EdgeInsets.only(left: 25),
                    width: 250,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)
                        ),
                        filled: true,
                        fillColor: Color(0xFFcd9a81),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 25,top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Remember Me',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        const Text(
                          'Forget Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    )
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 85, top: 20),
                    width: 130,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      primary: Color(0xFFcd9a81),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      onPressed: () {}, 
                      child: Text('Sign In')),   
                                         
                  ),                                 
                ],
              ),
            ),

            Container(
                    width: 230,
                    height: 40,
                    // margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton.icon(
                      onPressed: () {}, 
                      icon: Icon(Icons.facebook),
                      label: Text('Test'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFcd9a81),
                        textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
            ),
            Container(
                    width: 230,
                    height: 40,
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton.icon(
                      onPressed: () {}, 
                      icon: Icon(Icons.facebook),
                      label: Text('Test'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFcd9a81),
                        textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  )

          ],
        ),
      ),
    );
  }
}