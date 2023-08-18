


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp( MaterialApp(debugShowCheckedModeBanner: false,home: SharedHome(),));
}
class SharedHome extends StatefulWidget {
  const SharedHome({super.key});

  //const LoginPage({super.key});
  @override
  State<SharedHome> createState() => _SharedHomeState();
}
  class _SharedHomeState extends State<SharedHome>{
  late SharedPreferences preferences;
  late String username;
  @override
    void initState(){
    fetchdata();
    super.initState();
  }
  void fetchdata() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString('name')!;
    });
  }
  @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared home'),
      ),
    );



  }
}
