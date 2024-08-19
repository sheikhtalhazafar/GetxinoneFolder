import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/listcontroller.dart';



class listexamplewithgetx extends StatefulWidget {
  const listexamplewithgetx({super.key});

  @override
  State<listexamplewithgetx> createState() => _SwitchbutttonwithgetxState();
}

class _SwitchbutttonwithgetxState extends State<listexamplewithgetx> {

  // List<String> fruitlist = ['orange', 'banana', 'stawbery', 'Mango', 'Apple'];
  // List<String> tempfruits =[];
  final listcontroller _selectlistcontroler = Get.put(listcontroller());
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('getX'),),

        body: ListView.builder(
          itemCount: _selectlistcontroler.fruitlist.length,
          itemBuilder: (context, index){
          return Card(
            child: Obx((){
              return ListTile(
              onTap: (){
                           if(_selectlistcontroler.tempfruits.contains(_selectlistcontroler.fruitlist[index])){
            _selectlistcontroler.removefromlist(_selectlistcontroler.fruitlist[index]);
               }else{
                _selectlistcontroler.addtolist(_selectlistcontroler.fruitlist[index]);
               }

              //  if( tempfruits.contains(fruitlist[index])){
              //   tempfruits.remove(fruitlist[index]);
              //  }else{
              //   tempfruits.add(fruitlist[index]);
              //  }
              //   setState(() {
                  
              //   });
              },
              title: Text(_selectlistcontroler.fruitlist[index].toString()),
               trailing:  Icon(Icons.favorite, color: _selectlistcontroler.tempfruits.contains(_selectlistcontroler.fruitlist[index]) ? Colors.red : Colors.white,),
            );
            }) 
          );
        })

    );
  }
}

