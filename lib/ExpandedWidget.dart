import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(debugShowCheckedModeBanner: false,home: ExpandedEx(),));
}
class ExpandedEx extends StatelessWidget{
  const ExpandedEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expanded"),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("hello"),
            const Icon(Icons.ac_unit),
            Expanded(child: Image.asset("assets/icons/avinash.png")),
            Expanded(child: Image.asset("assets/icons/avinash.png"))
          ],
        ),
      ),
    );
  }

}