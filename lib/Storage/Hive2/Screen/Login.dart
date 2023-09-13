import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../database/HiveDb.dart';
import '../model/user_model.dart';
import 'Home.dart';
import 'Registration.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: HiveLoginPage(),));
}
class HiveLoginPage extends StatelessWidget {
  final email = TextEditingController();
  final password = TextEditingController();

  HiveLoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("login using hive"),),
      body: Padding(padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: email,
                decoration: const InputDecoration(
                    hintText: "username"
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: password,
                decoration: const InputDecoration(
                    hintText: "password"
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: ()async{
                final userList =await HiveDb.instance.getUser();
                checkUserExist(userList);
              }, child: const Text("login")),
              TextButton(onPressed: (){
                Get.to(HiveRegistration());
              } ,
                  child: const Text("Not a user ? Register here"))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> checkUserExist(List<User> userList) async{
    final lemail = email.text.trim();
    final lpass = password.text.trim();

    bool userfound = false;

    if(lemail != ''&& lpass !=''){
      await Future.forEach(userList, (regUserFromHive){
        if(lemail == regUserFromHive.email && lpass == regUserFromHive.password){
          userfound =true;
        }else{
          userfound = false;
        }
      });
      if(userfound == true){
        Get.offAll(()=>HiveHome(email:lemail));
        Get.snackbar("Success", "login success $lemail",colorText: Colors.green);
      }else{
        Get.snackbar("Error", "No user Found !!!",colorText: Colors.red);
      }
    }else{
      Get.snackbar("Error", "Field must not be empty",colorText: Colors.red);
    }
  }
}