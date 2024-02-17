import 'package:begineer_flutter/utils/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorConstants.primary,
          title:const Text("Container")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           const Center(child: Text("Container")),
          const SizedBox(height: 20,),
          //container example
          Container(
            width: 200,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("fix width height container")],),
          )


      ],),

    );
  }
}
