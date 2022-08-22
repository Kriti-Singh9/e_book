import 'package:e_book/screens/bookspage_screen.dart';
import 'package:e_book/screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:e_book/utils/color_utils.dart';
import 'package:e_book/reusable_widgets/reusable_widget.dart';
import 'package:e_book/reusable_widgets/reusable_button.dart';
class SignInScreen extends StatefulWidget {

  @override
  _SignInScreenSate createState() => _SignInScreenSate();
  }



class _SignInScreenSate extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                logoWidget("images/icon.png"),
                SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false, _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                SizedBox(
                  height: 20,
                ),
               signInSignOutButton(context, true, (){
                 FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text,
                     password: _passwordTextController.text).then((value) {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => BooksPage()));
                 }).onError((error, stackTrace) {
                   print("Error ${error.toString()}");
                 });
                 
               }),
                signUpOption()
              ],

            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account? ",
          style: TextStyle(color: Colors.black87),),
        GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(""
              " Sign Up",
            style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
          ),
        ),

      ],
    );
  }
}

