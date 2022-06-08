
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class TextForm extends StatefulWidget {
  String? textLabel;
  Icon? iconPrefix;
  Text? label;
  TextEditingController? controller;
  TextForm({Key? key, this.textLabel, this.label, 
    this.iconPrefix, this.controller}) : super(key: key);

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        validator: (text){
          if(text!.isEmpty){
            return "Please enter a value here";
          }
          
          return null;
        },
        controller: widget.controller,
        enableIMEPersonalizedLearning: true,
        decoration: InputDecoration(
          label: widget.label,
          hintText: widget.textLabel,
          prefixIcon: widget.iconPrefix,
          border: OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
        ),
      ),
    );
  }
}