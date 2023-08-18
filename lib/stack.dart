import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Stack1(),
  ));
}
class Stack1 extends StatelessWidget {
  const Stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget"),

      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),
                  image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1556718205-a5b7d00c8544?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"))),

            ),
            Positioned(
                left: 20,
                right: 100,


                child: Text("data",style: TextStyle(fontSize: 15,color: Colors.black),)),
            Positioned(
              right: 50,
              left: 30,
              bottom: 20,
              child: Container(
                height: 50,
                width: 100,
                child: Text("rating 4",style: TextStyle(fontSize: 15,color: Colors.black),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}