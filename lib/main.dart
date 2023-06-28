import 'package:example1/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp( app() );
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: Counter(),
      debugShowCheckedModeBanner: false,
    );
  }
}
