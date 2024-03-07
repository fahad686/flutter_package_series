import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  //create a value name to firstly initilize the radio button
  String ?value;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
   body: Column(children: [
     //create radio button .we can use radio button when we want to select one thing in 2 to 4 value of group
     Center(child: Text("Select Gender"),),
   ],),
    );
  }
}
