
import 'package:e_book/screens/signin_screen.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:e_book/utils/color_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,

      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    SignInScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(

       // color: Colors.white,
      decoration: BoxDecoration(gradient: LinearGradient(colors: [
        hexStringToColor("f1fafc"),
        hexStringToColor("3db5c4"),
        hexStringToColor("c9e4eb")
      ],
          begin: Alignment.topCenter, end: Alignment.bottomCenter)),

        //child:FlutterLogo(size:MediaQuery.of(context).size.height)

       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ClipRRect(
             borderRadius: BorderRadius.circular(20.0),
             child: Container(
               height: 180.0,
               width: 180.0,

               child:  Image.asset('images/eBook.png'),
             ),

           ),



         ],

       ),

    );
  }
}
