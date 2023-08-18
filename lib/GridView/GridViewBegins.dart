import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(debugShowCheckedModeBanner: false,home: GridView1()));
}
class GridView1 extends StatelessWidget{
  const GridView1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
        crossAxisSpacing: 30,
        mainAxisSpacing: 10,
        ),
    children: List.generate(10, (index) => Card(child: Center(
    child: Image.asset("assets/icons/apple.png"),
    ),)),),
    );
  }
}