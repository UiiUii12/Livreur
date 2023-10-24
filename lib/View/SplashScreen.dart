import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Controller/SplashScreenController.dart';
import 'package:get/get.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SplashScreenController controller =
    Get.put(SplashScreenController());
    return Scaffold(
        body: GetBuilder<SplashScreenController>(
            builder:(controller){
              return Container(
                decoration: BoxDecoration(

                   image: DecorationImage(
              image: AssetImage('Assets/SplashScreen.png'),
              fit: BoxFit.cover,
            )
                ),

              );
            }
        )
    );
  }
}
