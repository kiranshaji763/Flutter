import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: List_Custom()));
}
class List_Custom extends StatelessWidget{
  const List_Custom({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("ListView4"),),
    //body: ListView.custom(childrenDelegate: SliverChildListDelegate(
    body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
    (context, index) => const Text("hello")),
    ));

         // List.generate(10, (index) => const Text("hello"))))
    // );
  }
}