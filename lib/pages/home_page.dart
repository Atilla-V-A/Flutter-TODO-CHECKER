import 'package:flutter/material.dart';
import 'package:flutterapp1/util/dialog_box.dart';
import '../util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// text controller
final _controller = TextEditingController();

  // List of things to do
  List toDoList = [
    
  ];
  // checker for boxes
  void CheckboxChanged(bool? value,int index){
    setState(() {
      toDoList[index][1]= !toDoList[index][1];
    });}
  // save new task
  void addNewTask(){
    setState(() {
      toDoList.add([_controller.text,false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  //" delete task
  void deleteTask(int index){
    setState(() {
      toDoList.removeAt(index);
    });
  }

    // creates new task
    void createNewTask(){
      showDialog(context: context, builder: (context){
        return DialogBox(
          controller: _controller,
          onSave: addNewTask,
          onCancel: () {
            Navigator.of(context).pop();
            _controller.clear();
          },
          
        );
        },
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(232, 228, 219, 136),
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 236, 221, 50),
        title: Text("To Do"),
        
      ),
      floatingActionButton: FloatingActionButton(
    shape: const CircleBorder(),
        backgroundColor: const Color.fromARGB(255, 236, 221, 50),        
        child: Icon(Icons.add),
        onPressed: createNewTask,
          ),
    
     
      body: ListView.builder(    
       itemCount: toDoList.length,
       itemBuilder: (context,index){
        return ToDoTile(
          taskName: toDoList[index][0], 
          taskCompleted: toDoList[index][1], 
          deleteFunction: (context) => deleteTask(index),
          onChanged: (value)=>CheckboxChanged(value,index));
          
       },
         
        
      ),
    );
  }
}