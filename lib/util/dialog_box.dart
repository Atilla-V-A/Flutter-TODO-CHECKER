import 'package:flutter/material.dart';
import 'package:flutterapp1/util/my_button.dart';
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


   DialogBox({super.key, required this.controller,required
   
   this.onSave, required this.onCancel,
   }
   );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(232, 230, 215, 80),
      content: Container(
        height: 150,
        child: Column(children: [
          // get user input
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                
                border: OutlineInputBorder(),
                hintText: "Add a Task",
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                color: const Color.fromARGB(33, 0, 0, 0), // removes the blue line
                
                     ),
                  ),
                ),
             ),            
          ),
Row(
   mainAxisAlignment: MainAxisAlignment.center,
   
   
  children: [
                
                  //cancel
                 Padding(
                   padding: const EdgeInsets.only(right: 30.0,top: 9),
                   child: MyButton(
                    
                    icon:Icons.close, onPressed: onCancel),
                 ),
                  //add
                  Padding(
                    padding: const EdgeInsets.only(top: 9.0),
                    child: MyButton( onPressed: onSave),
                  ),
                ],) 

        ],
          
        ),
        
      ),
    );
  }
}