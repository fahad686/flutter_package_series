import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  //create a value name
  String? level = "male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //create radio button .we can use radio button when we want to select one thing in 2 to 4 value of group
          const Center(
            child: Text(
              "Select Gender",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("male"),
                Radio(
                    activeColor: Colors.amber,
                    value: "male",
                    groupValue: level,
                    onChanged: (value) {
                      setState(() {
                        level = value.toString();
                      });
                    }),
                const SizedBox(
                  width: 8,
                ),
                const Text("female"),
                Radio(
                    activeColor: Colors.amber,
                    value: "female",
                    groupValue: level,
                    onChanged: (value) {
                      setState(() {
                        level = value.toString();
                      });
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
