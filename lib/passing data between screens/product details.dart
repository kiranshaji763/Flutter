import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DummyData.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ProductDetails(),));
}
class ProductDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final Product = Products.firstWhere((mapfromlist)=> mapfromlist["id"]==id);
    return Scaffold(
      appBar: AppBar(title: Text("My single products"),),
      body:Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset(
                 Product["image"],
                 height:200,
                 width:200,
          ),
                 Text(
                   Product["name"],
                 style: const TextStyle(
                     fontWeight: fontWeight.bold,fontSize: 30),
               ),
              Center(child: Text(Product["description"])),
              Text("$Product['price']}",
                  style: const TextStyle(fontSize: 20)),
                  Text("$Product['rating']}",
                  style: const TextStyle(fontSize: 10))
            ],
          )),
      )
    );
  }
}