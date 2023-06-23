import 'package:flutter/material.dart';
import 'package:todoapp/text.dart';
import 'chattile.dart';


class Todolist extends StatefulWidget {
  @override
  State<Todolist> createState() {
    return _TodolistState();
  }
}

class _TodolistState extends State<Todolist> {
  final _controller=TextEditingController();
  List<List<dynamic>> todolist = [
    ["fun", false],
    ["Do", false]
  ];
  void savetask(){
    setState(() {
      todolist.add([_controller.text,false]);
    });
  }
   void deleteTask(int index) {
    setState(() {
      todolist.removeAt(index);
    });
  }

  void checkboxchanged(bool? value, int index) {
    setState(() {
      todolist[index][1] = !todolist[index][1] ;
    });
  }
  void addTask(){
    showDialog(
    context: context, 
    builder: (context) {
      return addtext(
        controller: _controller,
        oncancel: (){
          return Navigator.of(context).pop();
        },
        onsave: savetask

      );
      
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 209, 35),
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 212, 209, 35),
        backgroundColor: Colors.black,
        title: const Text("Add Tasks"),
      ),
      body: ListView.builder(
        itemCount: todolist.length,
        itemBuilder: (context, index) {
          return tile(
            taskname: todolist[index][0],
            taskcompleted: todolist[index][1],
            onChanged: (value) => checkboxchanged(value, index),
            deleteFunction:(context) => deleteTask(index) ,
          );
        },
      ),
    floatingActionButton: FloatingActionButton(onPressed: addTask,child:const Icon(Icons.add),),);
  }
}
