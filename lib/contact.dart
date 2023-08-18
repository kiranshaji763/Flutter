import 'package:flutter/material.dart';

class contacts extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("contacts")),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/road.jpg")),
                title: Text("avinash"),
                subtitle: Text("8281385318"),
    trailing: Icon(Icons.add),
              ),
            ),
    Card(
    child: ListTile(
    leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/road.jpg")),
    title: Text("kiran"),
    subtitle: Text("9633995810"),
    trailing: Icon(Icons.add),
          ),
    ),
    Card(
    child: ListTile(
    leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/road.jpg")),
    title: Text("ayoob"),
    subtitle: Text("6238908818"),
    trailing: Icon(Icons.add),
      ),
    ),
           Card(
          child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/road.jpg")),
    title: Text("riyas"),
    subtitle: Text("9995412499"),
    trailing: Icon(Icons.add),
    ),
    ),
  ],
    ),
    );
  }
}
      
