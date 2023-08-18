import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        backgroundColor: Colors.teal,
        actions:  [
          Icon(Icons.camera_alt),
          SizedBox(width: 30,),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder:(context){
            return [
              PopupMenuItem(child: Text("New group")),
              PopupMenuItem(child: Text("New broadcast")),
              PopupMenuItem(child: Text("Linked devices")),
              PopupMenuItem(child: Text("Starred messages")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Settings")),
            ];
          })
          ],
      ),
      body: ListView(
        children: const [
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/her.png")),
              title:  Text("itachi"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("love you too"),
                ],
              ),
              trailing: Text("2:00 AM"),

            ),

            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/avinash.png")),
              title:  Text("avinash"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                  ),
                  Text("naale set aakam"),
                ],
              ),
              trailing: Text("now"),

            ),

            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/akash.png")),
              title:  Text("Akash"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Icon(
                    //Icons.done_all,
                    //color: Colors.blueAccent,
                  //),
                  Text("typing..."),
                ],
              ),
              trailing: Text("Now"),

            ),


            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/rohan.png")),
              title:  Text("rohan"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("nale eppola poova"),
                ],
              ),
              trailing: Text("10:00 PM"),

            ),


            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/ayoob.png")),
              title:  Text("ayoob"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("ok da"),
                ],
              ),
              trailing: Text("Today"),

            ),

          ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/musthafa.png")),
              title:  Text("musthafa"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("aahda"),
                ],
              ),
              trailing: Text("Today"),

            ),


            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/ubaid.png")),
              title:  Text("ubaid"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("da link ayak"),
                ],
              ),
              trailing: Text("Today"),

            ),


            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/shibin.png")),
              title:  Text("shibin"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("naale verindo"),
                ],
              ),
              trailing: Text("Yesterday"),

            ),


            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/sneha.png")),
              title:  Text("sneha"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("ahh ayakka veetl ethatte"),
                ],
              ),
              trailing: Text("Yesterday"),

            ),

            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/nadheer.png")),
              title:  Text("nadheer"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("ahda set"),
                ],
              ),
              trailing: Text("Yesterday"),

            ),


            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/shameema.png")),
              title:  Text("shameema"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("ah"),
                ],
              ),
              trailing: Text("Yesterday"),

            ),


             ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/sreeraj.png")),
              title:  Text("sreeraj"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.lightBlueAccent,
                  ),
                  Text("what the fuck"),
                ],
              ),
              trailing: Text("2:00 AM"),

            ),

        ],
      ),
    );
  }
}