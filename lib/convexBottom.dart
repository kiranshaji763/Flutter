import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Con()));
}
class Con extends StatefulWidget {
  @override
  State<Con> createState() => _Con();
}
  class _Con extends State<Con> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(title: Text('Hello ConvexAppBar')),
  body: Center(
  child: TextButton(
  child: Text('Click to show full example'),
  onPressed: () => Navigator.of(context).pushNamed('/bar'),
  )),
  bottomNavigationBar: ConvexAppBar(
  style: TabStyle.react,
  items: const [
  TabItem(icon: Icons.contacts_sharp),
  TabItem(icon: Icons.search),
  TabItem(icon: Icons.add_box_rounded),
  TabItem(icon: Icons.home),
  ],
  initialActiveIndex: 1,
  onTap: (int i) => print('click index=$i'),
  ),
  );
  }
  }

