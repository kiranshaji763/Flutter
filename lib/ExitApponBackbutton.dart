import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(debugShowCheckedModeBanner: false,home: SampleHome()));
}

class SampleHome extends StatelessWidget{
  const SampleHome({super.key});


  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: const Text("Confirm exit?"),
          content: const Text("do you really want to exit?"),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(true);
            },
                child: const Text("yes")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            },
                child: const Text("no")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: const Text("cancel")),
          ],
        );
      });
    }
    return WillPopScope(onWillPop: showAlert, child: const Scaffold(
      body: Center(child: Text("Press back button to exit"),),
    ));
  }
}