import 'package:flutter/material.dart';
import 'package:flutter_project/login.dart';
class RegistrationPage extends StatefulWidget{
  @override
State<StatefulWidget> createState() => _RegistrationPageState();

}
class _RegistrationPageState extends State<StatefulWidget> {

  final formkey = GlobalKey<FormState>();
  var confirmpass;
  bool showpass = true;


  @override
  Widget build(BuildContext context) {
    //var style;
    return Scaffold(
        appBar: AppBar(
          title:const Text("Stateful Registration"),
        ),
        body: Form(
          key: formkey,
            child: Column(
              children: [
            const Text("Registration page",
          style: TextStyle(fontSize : 30),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
                decoration : const InputDecoration(
                  border: OutlineInputBorder(), hintText: "username"),
            validator: (email){
                  if(email!.isEmpty || !email.contains("@")){
                    return "enter a valid email/field must not be empty";
                  }else{
                    return null;
                  }
            },
                ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            textInputAction: TextInputAction.next,
            obscureText: showpass,
            obscuringCharacter: "*",
            decoration :  InputDecoration(
              suffixIcon: IconButton(
                  onPressed: (){
                setState(() {
                  if(showpass){
                    showpass = false;
                  }else{
                    showpass = true;
                  }
                });
              },
                  icon: Icon(showpass == true
                  ? Icons.visibility
                  : Icons.visibility_off_sharp)),
                border: OutlineInputBorder(),
                hintText: "password"),
            //textInputAction: TextInputAction.continueAction,
            validator: (password){
              confirmpass = password;
              if(password!.isEmpty || password.length<6){
                return "password should be 8 characters";
              }else{
                return null;
              }
            },
          ),
        ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration : const InputDecoration(
            border: OutlineInputBorder(), hintText: "confirm password"),
        validator: (cpassword){
          if(cpassword != confirmpass || cpassword!.isEmpty){
            return "password mismatch/empty";
          }else{
            return null;
          }
        },
      ),
    ),
    ElevatedButton(onPressed: (){
      var isValid = formkey.currentState!.validate();
      if(isValid == true){
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => LoginPage()));
      }
    },
    child: Text("Registrationpage"))
    ],
    )),
    );
  }
}