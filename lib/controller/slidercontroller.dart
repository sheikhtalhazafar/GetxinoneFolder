import 'package:get/get.dart';

class SliderController extends GetxController{
   RxDouble opacity = .4.obs;
   changeopacity(double value){
    opacity.value = value;
   }
}