import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/controller/slidercontroller.dart';



class sliderexamplegetx extends StatefulWidget {
  const sliderexamplegetx({super.key});

  @override
  State<sliderexamplegetx> createState() => _sliderexamplegetxState();
}

class _sliderexamplegetxState extends State<sliderexamplegetx> {
  double Opacity = .4;
  SliderController _sliderController = Get.put(SliderController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('getX'),),

        body: Column(
          children: [
            Obx((){
              return  Container(
              width: 200,
              height: 200,
              color: Colors.red.withOpacity(_sliderController.opacity.value),
            );
            }),
           
           Obx((){
              return Slider(value: _sliderController.opacity.value, onChanged:(Value){
            _sliderController.changeopacity(Value);
            });
           })
         
          ],
        ),

    );
  }
}

// class Screenone extends StatefulWidget {
//   String name;
//   Screenone({super.key, required this.name});
//   @override
//   State<Screenone> createState() => _ScreenoneState();
// }

// class _ScreenoneState extends State<Screenone> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('ScreenOne${widget.name}'),),
//       body:    InkWell(
//         child: Text('this is screen one'),
//         onTap: (){
//           Get.back();
//         },
//       )
//     );
//   }
// }