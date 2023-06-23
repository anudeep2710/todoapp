import 'package:flutter/material.dart';
import 'listadd.dart';
class introduction extends StatefulWidget {


 State<introduction> createState() {
    return _introduction();
  }
}
class _introduction extends State<introduction> {
  
  Future <void> _navigateToNextpage() async{
    await Future.delayed(const Duration(seconds: 2));
    Navigator.push(context,MaterialPageRoute(builder: (context) =>Todolist() ,) );


  }
  void initState() {
    super.initState(); 
    _navigateToNextpage();
  }
  Widget build(BuildContext context){
    return (Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 209, 35),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Image.asset(
          "assets/images/todologo.png",
          width: 600,
        
        )),
        const Text(
          "Get organized and stay on\n track with your to-do list.",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: AutofillHints.birthdayDay
          ),
        )
      
        
      ]),
    ));
  }
}