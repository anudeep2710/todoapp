import 'package:flutter/material.dart';



class mybutton extends StatelessWidget{
   mybutton({super.key,
  required this.btntext,
  required this.onPressed
  });
  
    final String btntext;
    VoidCallback onPressed;

 
  Widget build(BuildContext context){
    return MaterialButton(
      color: Theme.of(context).primaryColor,
      onPressed: onPressed,
    child: Text(btntext),);
  }
}