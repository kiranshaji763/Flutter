import 'package:flutter/material.dart';
import 'package:flutter_project/home.dart';
import 'package:flutter_project/home1.dart';
import 'package:flutter_project/reg.dart';
import 'package:flutter_project/registration.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,));
}
class LoginPage extends StatelessWidget{
  String username = "admin@123";
  String password = "abc123";

  final uname = TextEditingController();
  final pass = TextEditingController();
  //const LoginPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("login page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/icons/icon.png",height: 100,width: 100),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: uname,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "username",
              helperText: "username must be an email",
              labelText: "username",
              prefixIcon: Icon(Icons.person)),
              ),
            ),
        Padding(
          padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
          child: TextField(
            controller: pass,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "password",
            helperText: "password must be 8",
            labelText: "PassWord",
            prefixIcon: Icon(Icons.visibility_off_sharp),
            suffixIcon: Icon(Icons.visibility)),
          ),
        ),
              ElevatedButton(
        onPressed: (){
                if(uname.text != "" && pass.text != "") {
                  if(uname.text == username && pass.text == password) {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));

                }else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Email password is incorrect"),
                  backgroundColor: Colors.red,));
                }
                }else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Field must not be empty"),
                    backgroundColor: Colors.red,
                  ));
                }
              },
                  child: const Text("login")),
          TextButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => RegistrationPage()));
          }, 
              child: const Text("not a user!....register here...."))
            ],
          ),
    );

  }
}