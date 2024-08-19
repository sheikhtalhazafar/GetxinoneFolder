import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class listcontroller extends GetxController{
  RxList<String> fruitlist = ['orange', 'banana', 'stawbery', 'Mango', 'Apple'].obs;
  RxList<dynamic> tempfruits =[].obs;
  
  addtolist(String value){
    tempfruits.add(value);
  }

  removefromlist(String value){
    tempfruits.remove(value);
  }
}