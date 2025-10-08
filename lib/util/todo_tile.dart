import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class ToDoTile extends StatelessWidget {
final String taskName;
final bool taskCompleted;
Function (bool?)? onChanged;
Function (BuildContext)? deleteFunction;


   ToDoTile({super.key, 
  required this.taskName, 
  required this.taskCompleted, 
  required this.onChanged,
  required this.deleteFunction,
  }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25,top:25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context){
                 deleteFunction!(context);
              },
              icon: Icons.delete,
              backgroundColor: Color.fromARGB(255, 112, 106, 106),
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),


        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 236, 221, 50),
            borderRadius: BorderRadius.circular(60) 
          
          ),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
               onChanged: onChanged,
               activeColor:  const Color.fromARGB(186, 84, 75, 75),
               
               
               ),
              Text(taskName,
              style: TextStyle(decoration: taskCompleted
               ? TextDecoration.lineThrough 
               : TextDecoration.none),
              ),
            ],
          ),
          
          
        ),
      ),
    );
    
  }
}
