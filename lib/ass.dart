import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: AssPage(),
  ));
}

class AssPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.purpleAccent,
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.orange,Colors.pink], begin: Alignment.bottomRight, end: Alignment.topLeft)),
              child: Center(
                  child: Column(//for column children will place from top left to the bottom left),
                    mainAxisAlignment: MainAxisAlignment.center,
                    //children: [Icon(Icons.favorite,color: Colors.deepPurple,size: 30,),Text("my application",style: TextStyle(fontSize: 40),)],// ,) ,
                    children: [
                      //Container()
                      Image.asset("assets/icons/hotel.png",height: 100, width: 1020),
                      //Image.asset("assets/icons/fruits.png",height: 220, width: 1020),
                      Text("fresh foods",
                          //style: TextStyle(fontSize: 50,color: Colors.cyan,fontWeight: FontWeight.bold),
                          style: GoogleFonts.pacifico(fontSize: 50,color: Colors.cyan)
                      ),
                      Text("TASTY HEALTHY",
                          //style: TextStyle(fontSize: 50,color: Colors.cyan,fontWeight: FontWeight.bold),
                          style: GoogleFonts.abel(fontSize: 50,color: Colors.cyan)
                      ),
                      Image.asset("assets/icons/fruits.png",height: 220, width: 1020),
                    ],
                  )
              ),
            ),
          ],
        )
    );
  }
}
