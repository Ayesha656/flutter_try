import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_try/IntroPage.dart';
import 'package:flutter_try/firebase_options.dart';
import 'InsertPage.dart';
import 'FirebaseService.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {


    });
  }
  final firstText=TextEditingController();
  final lastText=TextEditingController();
  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:Form(
        key: _formKey,
        child: Column(
        children: [
          TextFormField(
            controller: firstText,
          decoration: InputDecoration(
        border: OutlineInputBorder(),
          hintText: "Enter Yout Name",
          label: Text("First Name"),
    ),
    ),
          TextFormField(
            controller: lastText,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Yout Name",
                label: Text("Last Name")
            ),
          ),

          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () async {
            if(_formKey.currentState!.validate())
              {

               /* ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${firstText.text.toString()}")));
                bool issignup = await FirebaseService.fireFunction(firstText,lastText);*/
                print(firstText.text);
                print(lastText.text);
                FirebaseService.fireFunction(firstText.text.toString(),lastText.text.toString());
              }

          }, child: Text("Press me")),

          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Insertage() ));
          }, child: Text("Change"))
    ],
    ),
    )
    );
  }
}
