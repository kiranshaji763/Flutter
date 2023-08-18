import 'package:flutter/material.dart';

void main() {
  runApp(WhatsAppUI());
}

class WhatsAppUI extends StatelessWidget {
  const WhatsAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WhatsApp'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Perform search action
            },
          ),
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {
              // Perform more options action
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/icons/her.png'),
            ),
            title: Text('itachi'),
            subtitle: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.done_all,
                color: Colors.lightBlueAccent,
                ),

              ],
            ),
            trailing: Text('2:00 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1682095661711-f5d67d0e75a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
            ),
            title: Text('riyas'),
            subtitle: Text('naale class indo'),
            trailing: Text('Yesterday'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('assets/icons/her.png'),
            ),
            title: Text('nadheer'),
            subtitle: Text('mazha eghane ind?'),
            trailing: Text('10:30 AM'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('assets/icons/her.png'),
            ),
            title: Text('akash'),
            subtitle: Text('itachi inn leave aan'),
            trailing: Text('Yesterday'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('assets/icons/her.png'),
            ),
            title: Text('rohan'),
            subtitle: Text('iji naale verindo?'),
            trailing: Text('9:00 PM'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/avatar2.jpg'),
            ),
            title: Text('sreeraj'),
            subtitle: Text('naale morning pattambi'),
            trailing: Text('Yesterday'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/avatar1.jpg'),
            ),
            title: Text('ubaid'),
            subtitle: Text('link ayak'),
            trailing: Text('Yesterday'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/avatar2.jpg'),
            ),
            title: Text('avinash'),
            subtitle: Text('naale set aakam'),
            trailing: Text('2:00 AM'),
          ),

          // Add more ListTile widgets for additional chats
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Perform new chat action
      //   },
      //   // child: Icon(Icons.message),
    );

  }
}