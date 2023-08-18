import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: ExpansionEx(),));
}

class ExpansionEx extends StatelessWidget {
  var colors=[Colors.red,Colors.green,Colors.yellow,Colors.pink,Colors.blue];
  var name=["red","green","yellow","pink","blue"];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Expansion Tile")),
      body: ExpansionTile(
        title: Text("colors"),
        subtitle: Text("List of colors"),
        children: List.generate(5, (index) => ListTile(
            leading: CircleAvatar(backgroundColor: colors[index],
            ),
            title: Text(name[index])
        )),),
    );
  }
}