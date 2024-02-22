import 'package:begineer_flutter/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'important_widget/container.dart';
import 'important_widget/expanded_widget.dart';

void main() async{
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        primaryColor: ColorConstants.primary, //color you want at header
        buttonTheme: ButtonTheme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            secondary: ColorConstants.secondary, // Color you want for action buttons (CANCEL and OK)
          ),
        ),
        useMaterial3: true,
      ),
      home:  const ContainerExample(),
    );
  }
}
