import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Expanded Widget"),
        centerTitle: true,
      ),
      // //how to implement expanded in row's widgets
      // body: Row(
      //   children: [
      //     ///1 use Expanded widget to occupy extra space of width of widgets
      //     ///2 use flex property  to define ratio space to widget
      //     Expanded(flex: 3,
      //       child: Container(
      //         color: Colors.red,
      //         height: 200,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         color: Colors.green,
      //         height: 150,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         color: Colors.yellow,
      //         height: 150,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 3,
      //       child: Container(
      //         color: Colors.blue,
      //         height: 200,
      //       ),
      //     ),
      //   ],
      // ),





      ///******************************** Implement Expanded widget on Column's widgets of height  of widgets
      //---------------------------------------- Without expanded widgets
      // body:
      // Column(
      //   children: [
      //     Container(
      //       color: Colors.red,
      //       width: 100,
      //       height: 200,          ),
      //     Container(
      //       color: Colors.green,
      //       width: 100,
      //       height: 200,         ),
      //     Container(
      //       color: Colors.yellow,
      //       width: 100,
      //       height: 200,          ),
      //     Container(
      //       color: Colors.blue,
      //       width: 100,
      //       height: 200,
      //     ),
      //   ],
      // ),
      //
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),

      //---------------------------------Resolving RenderFlex overflowed by 72 pixels on the bottom error using expanded widget flex property
      body:
      Column(
        children: [
          ///1 use Expanded widget to occupy extra space
          ///2 use flex property  to define ratio space to widget
          Expanded(flex: 3,
            child: Container(
              color: Colors.red,
              width: 200,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              width: 200,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellow,
              width: 200,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
              width: 200,
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
