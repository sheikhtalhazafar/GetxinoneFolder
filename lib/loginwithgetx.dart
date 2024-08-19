import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/logincontroller.dart';


class LoginGetX extends StatefulWidget {
  const LoginGetX({super.key});

  @override
  State<LoginGetX> createState() => _LoginGetXState();
}

class _LoginGetXState extends State<LoginGetX> {
  final logincontroller _login = Get.put(logincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GetX'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _login.emailcontroller.value,
              decoration: const InputDecoration(
                hintText: 'email'
              ),
            ),
          ),

           Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _login.passwordcontroller.value,
              decoration: const InputDecoration(
                hintText: 'password'
              ),
            ),
          ),
          Obx((){
            return  TextButton(onPressed: (){
            _login.postapi();
          }, child: _login.loading.value ? CircularProgressIndicator() :Text('login', style: TextStyle(fontSize: 25), ));
          })
         
        ],
      ),
    );
  }
}