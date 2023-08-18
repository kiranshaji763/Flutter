import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Listview4(),));

}

class Listview4 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("List Sepertator"),),
      body: ListView.separated(
          itemBuilder: (c,index){
            return const Card(
              //child: Text("hello"),);
                color: Colors.amber,
                child: Text("hello"),
            );

          },
          separatorBuilder: (context,index) {
            if (index % 5 == 0) {
              return const Divider(
                color: Colors.red,
              );
            }
            return Text("");
          },
          itemCount: 18)
    );
  }
}