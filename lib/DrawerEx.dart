import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Drawyer(),));
}

class Drawyer extends StatelessWidget{
  const Drawyer({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawyer"),
      ),
      drawer:  Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.blue),
        child: Drawer(
          child:  ListView(
            children: [
              UserAccountsDrawerHeader(
                arrowColor: Colors.pink,
                  accountName: const Text(
                    "Lionel Messi",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
                   accountEmail: const Text("Footballer"),
              currentAccountPicture: Image.network("https://www.gannett-cdn.com/presto/2020/08/25/USAT/842737a0-5b6c-47bc-adbc-ea5bef879661-Messi_gone.jpg"),
              otherAccountsPictures: [Image.network("https://64.media.tumblr.com/9564cfd13ec233a94e10db6b2dbd563e/8f8076aac899f24f-cb/s1280x1920/8a4d1f6e5edb0aa2db20259da83c94c77a620bbb.jpg")],
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("home"),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("settings"),
              ),
              const ListTile(
                leading: Icon(Icons.menu),
                title: Text("menu"),
              ),
            ],
          ),
        ),
      )
      );
    }
  }