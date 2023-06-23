import 'package:flutter/material.dart';
import 'package:todoapp/mybutton.dart';

class addtext extends StatelessWidget {
  final controller;
    VoidCallback onsave;
    VoidCallback oncancel;

  addtext({super.key,
  required this.controller,
  required this.onsave,
  required this.oncancel});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task"
              ),
            ),
            Row(
              children: [
                mybutton(btntext: "save", onPressed: onsave,),
                SizedBox(width: 30,),
                mybutton(btntext: "delete", onPressed: oncancel)

              ],
            ),



          ],
        ),
      ),
    );
  }
}
