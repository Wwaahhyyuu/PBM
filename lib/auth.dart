import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';


class AuthServices{
  final auth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void signIn(String email, String password)async{
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password).then((value) => {
        print("User is Logged In")
      });
    }
    catch (e){
      print(e);
    }
  }

  void signUp(String email, String password)async{
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password).then((value) {
        print("User is Registered");
      });
    }
    catch (e){
      print(e);
    }
  }

}