import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListView3()));
}

class ListView3 extends StatelessWidget{
   ListView3({super.key});
  var names = ["akash","avinash","rohan","riyas"];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("ListView3"),),
      body: ListView.builder(
        itemCount: names.length,
          itemBuilder: (context,index){
            return Card(
              child: Text(names[index]),color: Colors.amber,
              //new
              //child: ListTile(
                //leading: Image.asset("assets/icons/fruits.png"),
                //title: Text("hello"),
                //subtitle: Text("hai"),
                //trailing: Text("11:30"),
              );
          }),
    );
  }
}