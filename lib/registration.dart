import 'package:flutter/material.dart';
class RegPage extends StatelessWidget{
  const RegPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("registration page"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "email id",
                  helperText: "username must be an email",
                  labelText: "enter an email id to register",
                  prefixIcon: Icon(Icons.person)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "enter password",
                  helperText: "password must be 8",
                  labelText: "Enter the password",
                  prefixIcon: Icon(Icons.visibility_off_sharp),
                  suffixIcon: Icon(Icons.visibility)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "confirm password",
                  helperText: "password must be 8",
                  labelText: "confirm password",
                  prefixIcon: Icon(Icons.visibility_off_sharp),
                  suffixIcon: Icon(Icons.visibility)
              ),
            ),
          ),
          ElevatedButton(onPressed: (){},
              child: const Text("Register")),
        ],
      ),
    );
  }
}