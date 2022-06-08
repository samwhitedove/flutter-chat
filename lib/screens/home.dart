import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../widgets/text_form_field.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login",
            style: TextStyle(color: MyColor.orange, 
            fontSize: 30),
          ),
          Form(
            key: formKey,
              child: Column(
            children: [
              TextForm(
                textLabel: "Email",
                iconPrefix: const Icon(Icons.email),
              ),
              TextForm(
                textLabel: "Password",
                iconPrefix: const Icon(Icons.lock),
              ),
              ElevatedButton(onPressed: login, child: const Text("Login"))
            ],
          ))
        ],
      ),
    ));
  }

  login(){
      if(formKey.currentState!.validate()){
        return showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context)=> AlertDialog(
            title: const Text("Hurray"),
            content: Row(
              children: [
                const Text("Logged in successful"),
                TextButton(onPressed: ()=> Navigator.pop(context),
                 child: const Text('OK'))
              ],
            ),
          ),
        );
      }

      return null;
  }
}
