import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/CounterExampleWithGetx.dart';
import 'package:getx/controller/listcontroller.dart';
import 'package:getx/listexamplewithgetx.dart';
import 'package:getx/loginwithgetx.dart';
import 'package:getx/sliderexamplegetx.dart';
import 'package:getx/switchbutton.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: LoginGetX(),
    );
  }
}

