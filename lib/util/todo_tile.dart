import 'package:flutter/material.dart';
class ToDoTile extends StatelessWidget {
final String taskName;
final bool taskCompleted;
Function (bool?)? onChanged;



   ToDoTile({super.key, 
  required this.taskName, 
  required this.taskCompleted, 
  required this.onChanged,
  }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25,top:25),
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
    );
    
  }
}
