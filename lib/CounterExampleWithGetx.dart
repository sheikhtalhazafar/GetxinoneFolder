import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/countercontroller.dart';
import 'package:getx/sliderexamplegetx.dart';

class CounterExamplewithGetX extends StatefulWidget {
  const CounterExamplewithGetX({super.key});

  @override
  State<CounterExamplewithGetX> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<CounterExamplewithGetX> {
  @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
      final CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("getX"),),

        body: Container(
          child: Obx((){
           return Center(child: Text(controller.counter.toString(), style: TextStyle(fontSize: 55),));
          })
        ),

        floatingActionButton: FloatingActionButton(onPressed: (){
          controller.incrementcontroller();
        },child: const Icon(Icons.add),),
    );
  }
}


// features and utilities which getx provide developers
// navigation with getx
// Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//       Center(
//         child: InkWell(
//           child: Container(
//             height: height *.1,
//             width: Get.width *1,
//             color: Colors.amber,
//             child: Text('this is home screen')),
//           onTap: (){
//             Get.to(Screenone(name: 'talha screen',));
//           },
//         ),
//       ),


//       Container(
//             height: height *.1, 
//             width: Get.width *.5,
//             color: Colors.red,
//             child: Text('this is home screen')),
//           ],
//         ),

// dialougeBox and bottomSheet with GetX
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: Card(
            //     child: ListTile(
            //       title: Text('DialougeBox'),
            //       onTap: (){
            //         Get.defaultDialog(
            //           title: "delete comment",
            //           middleText: 'Are you sure',
            //           confirm: TextButton(onPressed: (){
            //             Get.back();
            //           }, child: Text('Confirm')),
                
            //           cancel: TextButton(onPressed: (){
            //             Get.back();
            //           }, child: Text('Cancel')),
                
            //         );
            //       },
            //     ),
            //   ),
            // ),

            //       Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: Card(
            //     child: ListTile(
            //       title: Text('DialougeBox'),
            //       onTap: (){
            //         Get.bottomSheet(
            //           Container(
            //             decoration: BoxDecoration(
            //               color: Colors.blue.shade300,
            //               borderRadius: BorderRadius.circular(10)
            //             ),
            //             child: Column(children: [
            //             ListTile(
            //               leading: Icon(Icons.light_mode),
            //               title: Text('Light theme'),
            //               onTap: (){
            //                 Get.changeTheme(ThemeData.light());
            //               },
            //             ),

            //                ListTile(
            //               leading: Icon(Icons.light_mode),
            //               title: Text('Dark theme'),
            //               onTap: (){
            //                 Get.changeTheme(ThemeData.dark());
            //               },
            //             ),
            //           ],),)
            //         );
            //       },
            //     ),
            //   ),
            // ),



// snackbar with getx
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.blue,
    //     centerTitle: true,
    //     title: const Text("getX"),),
    //     floatingActionButton: FloatingActionButton(onPressed: (){
    //       Get.snackbar('Talha', "Subscribe my channel", 
    //       backgroundColor: Colors.blue, 
    //       snackPosition: SnackPosition.BOTTOM,
    //        margin: EdgeInsets.all(20) );
    //     },
    //     child: Icon(Icons.account_circle_outlined),
    //     ),
    // );