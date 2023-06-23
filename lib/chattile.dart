import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class tile extends StatelessWidget {
  final String taskname;
  final bool taskcompleted;
  final Function(bool?)? onChanged;
          Function(BuildContext)? deleteFunction;

  tile(
      {super.key,
      required this.taskname,
      required this.taskcompleted,
      required this.onChanged,
      required this.deleteFunction
      });

  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.all(25.0),
       child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(12),
            )
          ],
        ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: const Color.fromARGB(255, 10, 10, 10),borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Checkbox(
              value: taskcompleted,
              onChanged: onChanged,
              activeColor: Color.fromARGB(255, 10,10,10),
              checkColor: Color.fromARGB(255, 212, 209, 35),
            ),
            Text(
              taskname,
              style: TextStyle(color: Color.fromARGB(255, 212, 209, 35),decoration: taskcompleted?TextDecoration.lineThrough:TextDecoration.none),
            )
          ],
        ),
      ),
    ),);
  }
}
