import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_try/IntroPage.dart';




class auth_gate extends StatefulWidget {
  const auth_gate({Key? key}) : super(key: key);

  @override
  State<auth_gate> createState() => _auth_gateState();
}

class _auth_gateState extends State<auth_gate> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void initState(){
    super.initState();
  }
void chechAuthState(){
    User? user = _auth.currentUser;
    if(user != null){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> IntroPage()));
    }
}
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
