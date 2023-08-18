import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListView2()));
}

class ListView2 extends StatelessWidget{

  var names = ["akash","avinash","rohan","riyas"];
  var images = ["assets/icons/akash.png",
    "assets/icons/avinash.png",
    "assets/icons/rohan.png",
    "assets/icons/riyas.png"];
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
    title: Text("List view 2"),
    ),
    body: ListView(
    children: List.generate(3, (index) => Card(
      //child: ListTile(
      child: Image.asset(images[index]),
        color: Colors.yellow,
        //leading: Image.asset("assets/icons/fruits.png"),
        //title: Text("My name"),
        //subtitle: Text("hello"),
        //trailing: Text("11:30"),
      )
    )),
    );
  }
}