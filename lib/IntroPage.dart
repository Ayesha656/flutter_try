import 'package:flutter/material.dart';
import 'main.dart';
import 'FirebaseService.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
      ),
      body: Column(
        children: [
        Text('Welcome',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
        SizedBox(
          height: 11,
        ),
        ElevatedButton(onPressed: () async {
          // bool issignup = await FirebaseService(
          //
          // );

        }, child: Text("Next Page"))
    ]
    )

    );
  }
  
}