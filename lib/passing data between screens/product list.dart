import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/ListView%20Builder.dart';
import 'package:flutter_project/passing%20data%20between%20screens/DummyData.dart';
import 'package:flutter_project/passing%20data%20between%20screens/product%20details.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    routes: {
    "details" :(context)=> ProductDetails(),
      "cart":(context)=> ListView3(),
    },
    home: ProductList(),));
}
class ProductList extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
appBar: AppBar(title: Text("My products"),),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: Products.map((e)=> ListTile(
    leading: Image.asset(e["name"]),
    title: Text(e["name"]),
    )).toList(),
      ),
    );
  }
}

void gotodetails(BuildContext context,id){
  Navigator.pushNamed(context, routeName)
}


//e -> each single mep in the list
//list.map -> iterate all the data in the list
//to loList used to convert the map values to list