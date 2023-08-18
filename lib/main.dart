import 'package:flutter/material.dart';
import 'package:flutter_project/contact.dart';
import 'package:flutter_project/ass.dart';
import 'package:flutter_project/home.dart';
import 'package:flutter_project/login.dart';
import 'package:flutter_project/reg.dart';
import 'package:flutter_project/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() { //to run a program
  runApp(MaterialApp(debugShowCheckedModeBanner: false, //to attach the widget tree to the ui //default theme of our app
    home: SplashPage(), //initialise screen of our app
  ));
}

class Firstpage extends StatelessWidget{
  const Firstpage({super.key});
 //stateless mean firstpage do not undergo any state change
  @override
  Widget build(BuildContext context){ //go create a widget tree (build contest -> to monitor the widgets in a monitor tree)
    return Scaffold(
      backgroundColor: Colors.purpleAccent,//to set a single colour to the entire screen
      /*appBar: AppBar(
        //centerTitle: true,
        //title const Icon(Icons.ac_unit_outlined),
        title: const Text(
          "hai",
          style: TextStyle(fontSize: 30,color: Colors.purpleAccent),
        ),
      ),
    //body: const Center(child: Icon(Icons.lan,size: 130,color: Colors.purple)),
      //body:const Center(child: Column(//for column children will place from top left to the bottom left )*/
      body: Container(
        //color: Colors.amber,//to set single colour to the container
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green,Colors.blue,Colors.white], begin: Alignment.bottomRight, end: Alignment.topLeft)),
        //image: DecorationImage(
          //fit: BoxFit.fill, //to fit image
       // image: NetworkImage("https://images.unsplash.com/photo-1541807360746-039080941306?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"))),
        child: Center(
          child: Column(//for column children will place from top left to the bottom left),
        mainAxisAlignment: MainAxisAlignment.center,
        //children: [Icon(Icons.favorite,color: Colors.deepPurple,size: 30,),Text("my application",style: TextStyle(fontSize: 40),)],// ,) ,
        children: [
          Image.asset("assets/icons/road.jpg",height: 220, width: 1020),
          Image.network("https://images.unsplash.com/photo-1662010021854-e67c538ea7a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=352&q=80",height: 220, width: 1020),
           Text("my application",
            //style: TextStyle(fontSize: 50,color: Colors.cyan,fontWeight: FontWeight.bold),
            style: GoogleFonts.pacifico(fontSize: 50,color: Colors.cyan)
          )
    ],
    )
    ),
      )
    );
  }
}
