import 'package:e_book/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:e_book/utils/color_utils.dart';
import 'package:e_book/reusable_widgets/reusable_button.dart';
import 'package:e_book/reusable_widgets/reusable_widget.dart';
import 'package:e_book/screens/bookspage_screen.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black87),

        ),
        iconTheme: IconThemeData(color: Colors.black87) ,
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [
            hexStringToColor("f1fafc"),
            hexStringToColor("3db5c4"),
            hexStringToColor("c9e4eb")
          ],
              begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
                child: Column(
                  children: [
                    const  SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter UserName", Icons.person_outline, false, _userNameTextController),
                    SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Email Id", Icons.person_outline, false, _emailTextController),
                    SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                    SizedBox(
                      height: 20,
                    ),
                    signInSignOutButton(context, false, () {
                   //   FirebaseAuth.instance.createUserWithEmailAndPassword(
                     //     email: _passwordTextController.text,
                       //   password: _passwordTextController.text).then((value) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                                BooksPage()));
                        })//.onError((error, stackTrace) {
                       // print("Error ${error.toString()} ");
                         //});



                        //signUpOption();
                     //});
                   // },)
  ],
                ),
              ))),
    );


  }

  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account? ",
          style: TextStyle(color: Colors.white70),),
        GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(""
              " Sign Up",
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
