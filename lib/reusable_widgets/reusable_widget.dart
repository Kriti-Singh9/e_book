import 'package:flutter/material.dart';

Image logoWidget(String imageview){

  return Image.asset(
    imageview,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
    color: Colors.white,
  );
}

TextField reusableTextField(String text,IconData icon, bool isPasswordType,
    TextEditingController controller){
  return TextField(
    controller: controller,
    obscureText: isPasswordType ,
    enableSuggestions: isPasswordType,
    autocorrect: isPasswordType,
    cursorColor: Colors.black54,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.black26.withOpacity(0.4),
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.black26.withOpacity(0.3)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0,style: BorderStyle.none)
      ),
    ),
    keyboardType: isPasswordType ? TextInputType.visiblePassword : TextInputType.emailAddress,
  );
}

