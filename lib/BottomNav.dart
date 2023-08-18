import 'package:flutter/material.dart';
import 'package:flutter_project/ListView%20Builder.dart';
import 'package:flutter_project/TheListView%20ListGenerate.dart';
import 'package:flutter_project/login.dart';
import 'package:flutter_project/whatsappTest.dsrt.dart';


void main(){
  runApp(MaterialApp( debugShowCheckedModeBanner: false,home: BottomNavBar()));
}
class BottomNavBar extends StatefulWidget{
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // const BottomNavBar({super.key});
  int index=0;

  var screens= [
    ListView3(),
    ListView2(),
    LoginPage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomBar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapindex){
            index=tapindex;
          },
          currentIndex: index,
          selectedItemColor: Colors.yellow,
          type: BottomNavigationBarType.fixed,
          items: const[
            BottomNavigationBarItem(
                backgroundColor: Colors.red,
                icon: Icon(Icons.contacts_sharp),label:"Contact"),
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.search),label:"Search"),
            BottomNavigationBarItem(
                backgroundColor: Colors.teal,
                icon: Icon(Icons.add_box_rounded),label:"View"),
            BottomNavigationBarItem(
                backgroundColor: Colors.tealAccent,
                icon: Icon(Icons.home),label:"Home"),

          ]
      ),
      body: screens[index],
    );
  }
}