import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/controller/slidercontroller.dart';
import 'package:getx/controller/switchcontroller.dart';



class Switchbutttonwithgetx extends StatefulWidget {
  const Switchbutttonwithgetx({super.key});

  @override
  State<Switchbutttonwithgetx> createState() => _SwitchbutttonwithgetxState();
}

class _SwitchbutttonwithgetxState extends State<Switchbutttonwithgetx> {
  // bool button = false;
  // double Opacity = .4;
 switchcontroller _switch = Get.put(switchcontroller());
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('getX'),),

        body: Column(
          children: [
          Text('Button',style: TextStyle(fontSize: 40, color: Colors.amber),),
          Obx((){
            return Switch(value: _switch.button.value, onChanged: (Value){
              _switch.changevalue(Value);
          });
          })
    
          ],
        ),

    );
  }
}

