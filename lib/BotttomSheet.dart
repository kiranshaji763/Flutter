import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: BottomSheet1(),));
}

class BottomSheet1 extends StatelessWidget{
  const BottomSheet1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child:
        GestureDetector(
          onLongPress: (){
            showSheet(context);
          },
          child: Image.asset("assets/icons/ayoob.png")),
        ),
      );
  }
  void showSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context)
    {
      return Container(
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: FaIcon(FontAwesomeIcons.download),
              title: Text("download"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp),
              title: Text("whatsapp"),
            ),
            ListTile(
              leading: Icon(Icons.copy),
              title: Text("copy"),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("share"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.instagram),
              title: Text("instagram"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.snapchat),
              title: Text("snapchat"),
            )
          ],
        ),
      );
    }
    );

  }
}