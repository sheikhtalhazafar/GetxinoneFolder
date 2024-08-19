import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class logincontroller extends GetxController{

  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;
  RxBool loading = false.obs;
  void postapi()async{

    try{
      loading.value = true;
        final response = await post(Uri.parse('https://reqres.in/api/login'),
     body :{
      'email': emailcontroller.value.text,
      'password' : passwordcontroller.value.text,
    }
    );
     var data = jsonDecode(response.body);
     print(data);
     print(response.statusCode);
    if(response.statusCode == 2000){
        loading.value = false;
      Get.snackbar('login succesfull', 'congrats');
    }else{
       loading.value = false;
      Get.snackbar('login failed', 'uncongrats');
    }
    }
    catch(e){
       loading.value = false;
      Get.snackbar("Failed", e.toString());
    }
  
   
  }
}