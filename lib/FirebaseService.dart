import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseService {

  var f_email,f_password;
  FirebaseService(this.f_email,this.f_password);


  static fireFunction(a_name,a_password)
  {


    print(a_name);
    print(a_password);
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    firebaseAuth.createUserWithEmailAndPassword(email: a_name, password:a_password);
    //note is there is no @ sign the will be an error
    // note if the length of the passowrd id less than 6 it will register user

  }
}


