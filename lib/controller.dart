import 'package:example1/conunterClass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  CounterClass CC = Get.put(CounterClass());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Example GetX'),
      ),
      body: Center(
        child: Obx(() {
          return Text(CC.count.toString(),style: TextStyle(fontSize: 30),);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.snackbar('title', 'message',duration: Duration(seconds: 1));
          CC.incrementer();        },
        child: Icon(Icons.add),
      ),
    );
  }
}
