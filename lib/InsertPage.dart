import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Insertage extends StatelessWidget {
  const Insertage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Productname=TextEditingController();
    final Productprice=TextEditingController();
    final _formKey=GlobalKey<FormState>();


    return Scaffold(
      body: Form(
        child:Column(
          children: [
            TextFormField(
              controller: Productname,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Product Name",
                label: Text("Product Name")
              ),
            ),
            TextFormField(
              controller: Productprice,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Product Price",
                  label: Text("Product price")
              ),
            ),
            ElevatedButton(onPressed: () {

              Map<String, String> dataToSave= {
                'p_name': Productname.text,
                'p_price': Productprice.text
              };
              // add the data to the database
              FirebaseFirestore.instance.collection('products').add(dataToSave);
              }, child: Text("Press me")),

          ],
        ),

      ),
    );
  }
}
