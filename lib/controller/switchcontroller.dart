import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class switchcontroller extends GetxController{
    RxBool button = false.obs;
    changevalue(bool value){
      button.value = value;
    }
}