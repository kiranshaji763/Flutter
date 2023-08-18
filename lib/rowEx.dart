import 'package:flutter/material.dart';

class rowex extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:SizedBox(
        width: 100,
          height: 100,
        child: Row(
          children: [
            Icon(Icons.ac_unit_outlined,size: 20,),
            Icon(Icons.ac_unit_outlined,size: 20,),
            Icon(Icons.ac_unit_outlined,size: 20,),
            Icon(Icons.ac_unit_outlined,size: 20,),
          ],
        ),
      )
      );
  }
}